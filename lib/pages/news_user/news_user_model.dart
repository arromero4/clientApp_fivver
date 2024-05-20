import '/flutter_flow/flutter_flow_util.dart';
import 'news_user_widget.dart' show NewsUserWidget;
import 'package:flutter/material.dart';

class NewsUserModel extends FlutterFlowModel<NewsUserWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
