import '/flutter_flow/flutter_flow_util.dart';
import 'details_routes_widget.dart' show DetailsRoutesWidget;
import 'package:flutter/material.dart';

class DetailsRoutesModel extends FlutterFlowModel<DetailsRoutesWidget> {
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
