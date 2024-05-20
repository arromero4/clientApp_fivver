import '/flutter_flow/flutter_flow_util.dart';
import 'news_admin_widget.dart' show NewsAdminWidget;
import 'package:flutter/material.dart';

class NewsAdminModel extends FlutterFlowModel<NewsAdminWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
