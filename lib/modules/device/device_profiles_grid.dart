import 'package:ie_tec_app/core/context/tb_context.dart';
import 'package:ie_tec_app/core/entity/entities_base.dart';
import 'package:ie_tec_app/core/entity/entities_grid.dart';
import 'package:thingsboard_pe_client/thingsboard_client.dart';

import 'device_profiles_base.dart';

class DeviceProfilesGrid extends BaseEntitiesWidget<DeviceProfileInfo, PageLink>
    with DeviceProfilesBase, EntitiesGridStateBase {
  DeviceProfilesGrid(
      TbContext tbContext, PageKeyController<PageLink> pageKeyController)
      : super(tbContext, pageKeyController);
}
