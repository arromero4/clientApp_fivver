import '/flutter_flow/flutter_flow_util.dart';
import 'details_menu_user_widget.dart' show DetailsMenuUserWidget;
import 'package:flutter/material.dart';

class DetailsMenuUserModel extends FlutterFlowModel<DetailsMenuUserWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
