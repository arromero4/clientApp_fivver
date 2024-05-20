import '/flutter_flow/flutter_flow_util.dart';
import 'home_page02_widget.dart' show HomePage02Widget;
import 'package:flutter/material.dart';

class HomePage02Model extends FlutterFlowModel<HomePage02Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
