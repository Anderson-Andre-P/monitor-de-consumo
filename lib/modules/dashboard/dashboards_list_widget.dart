import 'package:ie_tec_app/core/context/tb_context.dart';
import 'package:ie_tec_app/core/entity/entities_list_widget.dart';
import 'package:ie_tec_app/modules/dashboard/dashboards_base.dart';
import 'package:thingsboard_pe_client/thingsboard_client.dart';

class DashboardsListWidget extends EntitiesListPageLinkWidget<DashboardInfo>
    with DashboardsBase {
  DashboardsListWidget(TbContext tbContext,
      {EntitiesListWidgetController? controller})
      : super(tbContext, controller: controller);

  @override
  void onViewAll() {
    navigateTo('/dashboards');
  }
}
