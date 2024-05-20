import '/flutter_flow/flutter_flow_util.dart';
import 'details_routes_user_widget.dart' show DetailsRoutesUserWidget;
import 'package:flutter/material.dart';

class DetailsRoutesUserModel extends FlutterFlowModel<DetailsRoutesUserWidget> {
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
