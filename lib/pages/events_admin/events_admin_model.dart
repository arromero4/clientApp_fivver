import '/flutter_flow/flutter_flow_util.dart';
import 'events_admin_widget.dart' show EventsAdminWidget;
import 'package:flutter/material.dart';

class EventsAdminModel extends FlutterFlowModel<EventsAdminWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
