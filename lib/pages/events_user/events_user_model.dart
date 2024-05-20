import '/flutter_flow/flutter_flow_util.dart';
import 'events_user_widget.dart' show EventsUserWidget;
import 'package:flutter/material.dart';

class EventsUserModel extends FlutterFlowModel<EventsUserWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
