import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:universal_platform/universal_platform.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:thingsboard_app/config/routes/router.dart';
import 'package:thingsboard_app/core/context/tb_context.dart';
import 'package:thingsboard_app/modules/dashboard/main_dashboard_page.dart';
import 'package:thingsboard_app/widgets/two_page_view.dart';

import 'config/themes/tb_theme.dart';
import 'config/themes/wl_theme_widget.dart';
import 'generated/l10n.dart';

import 'package:onesignal_flutter/onesignal_flutter.dart';

final appRouter = ThingsboardAppRouter();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
//  await FlutterDownloader.initialize();
//  await Permission.storage.request();

//Remove this method to stop OneSignal Debugging
  OneSignal.shared.setLogLevel(OSLogLevel.verbose, OSLogLevel.none);

  OneSignal.shared.setAppId("c01b59e9-e423-46ef-8855-6bfc327ec126");

// The promptForPushNotificationsWithUserResponse function will show the iOS or Android push notification prompt. We recommend removing the following code and instead using an In-App Message to prompt for notification permission
  OneSignal.shared.promptUserForPushNotificationPermission().then((accepted) {
    print("Accepted permission: $accepted");
  });

  // OneSignal.shared.setNotificationWillShowInForegroundHandler(
  //     (OSNotificationReceivedEvent event) {
  //   // Will be called whenever a notification is received in foreground
  //   // Display Notification, pass null param for not displaying the notification
  //   event.complete(event.notification);
  // });

  // OneSignal.shared
  //     .setNotificationOpenedHandler((OSNotificationOpenedResult result) {
  //   // Will be called whenever a notification is opened/button pressed.
  // });

  // OneSignal.shared.setPermissionObserver((OSPermissionStateChanges changes) {
  //   // Will be called whenever the permission changes
  //   // (ie. user taps Allow on the permission prompt in iOS)
  // });

  // OneSignal.shared
  //     .setSubscriptionObserver((OSSubscriptionStateChanges changes) {
  //   // Will be called whenever the subscription changes
  //   // (ie. user gets registered with OneSignal and gets a user ID)
  // });

  // OneSignal.shared.setEmailSubscriptionObserver(
  //     (OSEmailSubscriptionStateChanges emailChanges) {
  //   // Will be called whenever then user's email subscription changes
  //   // (ie. OneSignal.setEmail(email) is called and the user gets registered
  // });

  // Pass in email provided by customer

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
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        systemNavigationBarColor: Colors.white,
        statusBarColor: Colors.white,
        systemNavigationBarIconBrightness: Brightness.light));
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
