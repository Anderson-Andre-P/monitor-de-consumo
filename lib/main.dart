import 'dart:developer';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:universal_platform/universal_platform.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:ie_tec_app/config/routes/router.dart';
import 'package:ie_tec_app/core/context/tb_context.dart';
import 'package:ie_tec_app/modules/dashboard/main_dashboard_page.dart';
import 'package:ie_tec_app/widgets/two_page_view.dart';
import 'config/themes/tb_theme.dart';
import 'config/themes/wl_theme_widget.dart';
import 'generated/l10n.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';
import 'widgets/custom_error_widget.dart';

final appRouter = ThingsboardAppRouter();

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await dotenv.load(fileName: ".env");

  FlutterError.onError = (FlutterErrorDetails details) {
    FlutterError.dumpErrorToConsole(details);
    log(details.exceptionAsString());
    runApp(CustomErrorWidget(errorMessage: details.exceptionAsString()));
  };
  await FlutterDownloader.initialize();
  await Permission.storage.request();
  await Permission.notification.request();

  OneSignal.shared.setLogLevel(OSLogLevel.verbose, OSLogLevel.none);

  OneSignal.shared.setAppId(dotenv.env['ONE_SIGNAL_APP_ID']!);

  OneSignal.shared.promptUserForPushNotificationPermission().then((accepted) {
    print("Accepted permission: $accepted");
  });

  OneSignal.shared.setNotificationWillShowInForegroundHandler(
      (OSNotificationReceivedEvent event) {
    event.complete(event.notification);
  });

  OneSignal.shared
      .setNotificationOpenedHandler((OSNotificationOpenedResult result) {});

  OneSignal.shared.setPermissionObserver((OSPermissionStateChanges changes) {});

  OneSignal.shared
      .setSubscriptionObserver((OSSubscriptionStateChanges changes) {});

  OneSignal.shared.setEmailSubscriptionObserver(
      (OSEmailSubscriptionStateChanges emailChanges) {});

  if (UniversalPlatform.isAndroid) {
    await AndroidInAppWebViewController.setWebContentsDebuggingEnabled(true);
  }

  runApp(ThingsboardApp());
}

class ThingsboardApp extends StatefulWidget {
  ThingsboardApp({Key? key}) : super(key: key);

  @override
  ThingsboardAppState createState() => ThingsboardAppState();
}

class ThingsboardAppState extends State<ThingsboardApp>
    with TickerProviderStateMixin
    implements TbMainDashboardHolder {
  final TwoPageViewController _mainPageViewController = TwoPageViewController();
  final MainDashboardPageController _mainDashboardPageController =
      MainDashboardPageController();

  final GlobalKey mainAppKey = GlobalKey();
  final GlobalKey dashboardKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    appRouter.tbContext.setMainDashboardHolder(this);
  }

  @override
  Future<void> navigateToDashboard(String dashboardId,
      {String? dashboardTitle,
      String? state,
      bool? hideToolbar,
      bool animate = true}) async {
    await _mainDashboardPageController.openDashboard(dashboardId,
        dashboardTitle: dashboardTitle, state: state, hideToolbar: hideToolbar);
    _openDashboard(animate: animate);
  }

  @override
  Future<bool> dashboardGoBack() async {
    if (_mainPageViewController.index == 1) {
      var canGoBack = await _mainDashboardPageController.dashboardGoBack();
      if (canGoBack) {
        closeDashboard();
      }
      return false;
    }
    return true;
  }

  @override
  Future<bool> openMain({bool animate = true}) async {
    return _openMain(animate: animate);
  }

  @override
  Future<bool> closeMain({bool animate = true}) async {
    return _closeMain(animate: animate);
  }

  @override
  Future<bool> openDashboard({bool animate = true}) async {
    return _openDashboard(animate: animate);
  }

  @override
  Future<bool> closeDashboard({bool animate = true}) {
    return _closeDashboard(animate: animate);
  }

  bool isDashboardOpen() {
    return _mainPageViewController.index == 1;
  }

  Future<bool> _openMain({bool animate = true}) async {
    var res = await _mainPageViewController.open(0, animate: animate);
    if (res) {
      await _mainDashboardPageController.deactivateDashboard();
    }
    return res;
  }

  Future<bool> _closeMain({bool animate = true}) async {
    if (!isDashboardOpen()) {
      await _mainDashboardPageController.activateDashboard();
    }
    return _mainPageViewController.close(0, animate: animate);
  }

  Future<bool> _openDashboard({bool animate = true}) async {
    if (!isDashboardOpen()) {
      _mainDashboardPageController.activateDashboard();
    }
    return _mainPageViewController.open(1, animate: animate);
  }

  Future<bool> _closeDashboard({bool animate = true}) async {
    var res = await _mainPageViewController.close(1, animate: animate);
    if (res) {
      _mainDashboardPageController.deactivateDashboard();
    }
    return res;
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        systemNavigationBarColor: Colors.white,
        systemNavigationBarDividerColor: Colors.white30,
        systemNavigationBarIconBrightness: Brightness.dark,
        systemNavigationBarContrastEnforced: true,
        //
        statusBarColor: Colors.white,
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.dark,
        systemStatusBarContrastEnforced: true,
      ),
    );

    // SystemChrome.setEnabledSystemUIMode(
    //   SystemUiMode.immersiveSticky,
    // );
    return WlThemeWidget(
      appRouter.tbContext,
      wlThemedWidgetBuilder: (context, data, wlParams) => MaterialApp(
        localizationsDelegates: [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
        title: wlParams.appTitle!,
        themeMode: ThemeMode.light,
        home: TwoPageView(
          controller: _mainPageViewController,
          first: MaterialApp(
            key: mainAppKey,
            scaffoldMessengerKey: appRouter.tbContext.messengerKey,
            localizationsDelegates: [
              S.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: S.delegate.supportedLocales,
            title: wlParams.appTitle!,
            theme: data,
            themeMode: ThemeMode.light,
            darkTheme: tbDarkTheme,
            onGenerateRoute: appRouter.router.generator,
            navigatorObservers: [appRouter.tbContext.routeObserver],
          ),
          second: MaterialApp(
            key: dashboardKey,
            // scaffoldMessengerKey: appRouter.tbContext.messengerKey,
            localizationsDelegates: [
              S.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: S.delegate.supportedLocales,
            title: wlParams.appTitle!,
            theme: data,
            themeMode: ThemeMode.light,
            darkTheme: tbDarkTheme,
            home: MainDashboardPage(
              appRouter.tbContext,
              controller: _mainDashboardPageController,
            ),
          ),
        ),
      ),
    );
  }
}
