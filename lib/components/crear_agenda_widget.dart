import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'crear_agenda_model.dart';
export 'crear_agenda_model.dart';

class CrearAgendaWidget extends StatefulWidget {
  const CrearAgendaWidget({super.key});

  @override
  State<CrearAgendaWidget> createState() => _CrearAgendaWidgetState();
}

class _CrearAgendaWidgetState extends State<CrearAgendaWidget> {
  late CrearAgendaModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CrearAgendaModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 310.0,
      height: 441.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Align(
        alignment: const AlignmentDirectional(0.0, 0.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  FFLocalizations.of(context).getText(
                    '4qza8ib3' /* Create Agenda */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Inter',
                        fontSize: 20.0,
                        letterSpacing: 0.0,
                      ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 20.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FFButtonWidget(
                    onPressed: () async {
                      final datePickedDate = await showDatePicker(
                        context: context,
                        initialDate: getCurrentTimestamp,
                        firstDate: getCurrentTimestamp,
                        lastDate: DateTime(2050),
                        builder: (context, child) {
                          return wrapInMaterialDatePickerTheme(
                            context,
                            child!,
                            headerBackgroundColor:
                                FlutterFlowTheme.of(context).primary,
                            headerForegroundColor:
                                FlutterFlowTheme.of(context).info,
                            headerTextStyle: FlutterFlowTheme.of(context)
                                .headlineLarge
                                .override(
                                  fontFamily: 'Sora',
                                  fontSize: 32.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                ),
                            pickerBackgroundColor: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            pickerForegroundColor:
                                FlutterFlowTheme.of(context).primaryText,
                            selectedDateTimeBackgroundColor:
                                FlutterFlowTheme.of(context).primary,
                            selectedDateTimeForegroundColor:
                                FlutterFlowTheme.of(context).info,
                            actionButtonForegroundColor:
                                FlutterFlowTheme.of(context).primaryText,
                            iconSize: 24.0,
                          );
                        },
                      );

                      if (datePickedDate != null) {
                        safeSetState(() {
                          _model.datePicked = DateTime(
                            datePickedDate.year,
                            datePickedDate.month,
                            datePickedDate.day,
                          );
                        });
                      }
                    },
                    text: FFLocalizations.of(context).getText(
                      'glzol6g1' /* Select Date */,
                    ),
                    icon: const Icon(
                      Icons.date_range,
                      size: 20.0,
                    ),
                    options: FFButtonOptions(
                      height: 40.0,
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                      iconPadding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).primary,
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Inter',
                                color: Colors.white,
                                letterSpacing: 0.0,
                              ),
                      elevation: 3.0,
                      borderSide: const BorderSide(
                        color: Colors.transparent,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  FFLocalizations.of(context).getText(
                    'opjxa55c' /* Start Time: */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Inter',
                        fontSize: 20.0,
                        letterSpacing: 0.0,
                      ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Flexible(
                    child: Align(
                      alignment: const AlignmentDirectional(-1.0, 0.0),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            10.0, 10.0, 10.0, 10.0),
                        child: FlutterFlowDropDown<String>(
                          controller: _model.dropDownValueController1 ??=
                              FormFieldController<String>(null),
                          options: [
                            FFLocalizations.of(context).getText(
                              'n4nh1wac' /* 00:00 */,
                            ),
                            FFLocalizations.of(context).getText(
                              'nhwp1l43' /* 01:00 */,
                            ),
                            FFLocalizations.of(context).getText(
                              'h1blwiit' /* 02:00 */,
                            ),
                            FFLocalizations.of(context).getText(
                              'gnbsnzvn' /* 03:00 */,
                            ),
                            FFLocalizations.of(context).getText(
                              'hur4m2yd' /* 04:00 */,
                            ),
                            FFLocalizations.of(context).getText(
                              'y2yb2e9m' /* 05:00 */,
                            ),
                            FFLocalizations.of(context).getText(
                              '905cdwm2' /* 06:00 */,
                            ),
                            FFLocalizations.of(context).getText(
                              'giz16r7b' /* 07:00 */,
                            ),
                            FFLocalizations.of(context).getText(
                              '97bmwxys' /* 08:00 */,
                            ),
                            FFLocalizations.of(context).getText(
                              'gtaop4ip' /* 09:00 */,
                            ),
                            FFLocalizations.of(context).getText(
                              '7sb74iij' /* 10:00 */,
                            ),
                            FFLocalizations.of(context).getText(
                              '7mk6h7ov' /* 11:00 */,
                            ),
                            FFLocalizations.of(context).getText(
                              '0vrs1uo2' /* 12:00 */,
                            ),
                            FFLocalizations.of(context).getText(
                              'ar40iuai' /* 13:00 */,
                            ),
                            FFLocalizations.of(context).getText(
                              '67z5ygyq' /* 14:00 */,
                            ),
                            FFLocalizations.of(context).getText(
                              'rj27f2ow' /* 15:00 */,
                            ),
                            FFLocalizations.of(context).getText(
                              '8ishccur' /* 16:00 */,
                            ),
                            FFLocalizations.of(context).getText(
                              '7u25uypn' /* 17:00 */,
                            ),
                            FFLocalizations.of(context).getText(
                              'as2bypd0' /* 18:00 */,
                            ),
                            FFLocalizations.of(context).getText(
                              'oa8rsf7e' /* 19:00 */,
                            ),
                            FFLocalizations.of(context).getText(
                              'p47p81xp' /* 20:00 */,
                            ),
                            FFLocalizations.of(context).getText(
                              'ej1aqtet' /* 21:00 */,
                            ),
                            FFLocalizations.of(context).getText(
                              'bi1bmizj' /* 22:00 */,
                            ),
                            FFLocalizations.of(context).getText(
                              'v0pbivhu' /* 23:00 */,
                            )
                          ],
                          onChanged: (val) =>
                              setState(() => _model.dropDownValue1 = val),
                          width: 300.0,
                          height: 56.0,
                          textStyle:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                          hintText: FFLocalizations.of(context).getText(
                            '7bb8lf6f' /* Please select... */,
                          ),
                          icon: Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 24.0,
                          ),
                          fillColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          elevation: 2.0,
                          borderColor: FlutterFlowTheme.of(context).alternate,
                          borderWidth: 2.0,
                          borderRadius: 8.0,
                          margin: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 4.0, 16.0, 4.0),
                          hidesUnderline: true,
                          isOverButton: true,
                          isSearchable: false,
                          isMultiSelect: false,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  FFLocalizations.of(context).getText(
                    'ak77k2ky' /* End Time: */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Inter',
                        fontSize: 20.0,
                        letterSpacing: 0.0,
                      ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Flexible(
                    child: Align(
                      alignment: const AlignmentDirectional(-1.0, 0.0),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            10.0, 10.0, 10.0, 10.0),
                        child: FlutterFlowDropDown<String>(
                          controller: _model.dropDownValueController2 ??=
                              FormFieldController<String>(null),
                          options: [
                            FFLocalizations.of(context).getText(
                              'dmbepn45' /* 00:00 */,
                            ),
                            FFLocalizations.of(context).getText(
                              '96fstmkp' /* 01:00 */,
                            ),
                            FFLocalizations.of(context).getText(
                              'zl43arj6' /* 02:00 */,
                            ),
                            FFLocalizations.of(context).getText(
                              'uo91bpzx' /* 03:00 */,
                            ),
                            FFLocalizations.of(context).getText(
                              '5guvuv8y' /* 04:00 */,
                            ),
                            FFLocalizations.of(context).getText(
                              'mipdu4t0' /* 05:00 */,
                            ),
                            FFLocalizations.of(context).getText(
                              '8pnlec7o' /* 06:00 */,
                            ),
                            FFLocalizations.of(context).getText(
                              'j6zjasen' /* 07:00 */,
                            ),
                            FFLocalizations.of(context).getText(
                              'yysbhgwg' /* 08:00 */,
                            ),
                            FFLocalizations.of(context).getText(
                              '7ejxeggz' /* 09:00 */,
                            ),
                            FFLocalizations.of(context).getText(
                              'd0sx94jc' /* 10:00 */,
                            ),
                            FFLocalizations.of(context).getText(
                              'fc5c4li6' /* 11:00 */,
                            ),
                            FFLocalizations.of(context).getText(
                              'qtnxff66' /* 12:00 */,
                            ),
                            FFLocalizations.of(context).getText(
                              '4wi5kisr' /* 13:00 */,
                            ),
                            FFLocalizations.of(context).getText(
                              'atz9momy' /* 14:00 */,
                            ),
                            FFLocalizations.of(context).getText(
                              '0k689ph4' /* 15:00 */,
                            ),
                            FFLocalizations.of(context).getText(
                              '6xohktka' /* 16:00 */,
                            ),
                            FFLocalizations.of(context).getText(
                              'sinm0omo' /* 17:00 */,
                            ),
                            FFLocalizations.of(context).getText(
                              'tz8r1qwn' /* 18:00 */,
                            ),
                            FFLocalizations.of(context).getText(
                              'ij8kvft7' /* 19:00 */,
                            ),
                            FFLocalizations.of(context).getText(
                              'jqf3szqa' /* 20:00 */,
                            ),
                            FFLocalizations.of(context).getText(
                              '5ao334jp' /* 21:00 */,
                            ),
                            FFLocalizations.of(context).getText(
                              'vyn70i2x' /* 22:00 */,
                            ),
                            FFLocalizations.of(context).getText(
                              'gr880m7n' /* 23:00 */,
                            )
                          ],
                          onChanged: (val) =>
                              setState(() => _model.dropDownValue2 = val),
                          width: 300.0,
                          height: 56.0,
                          textStyle:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                          hintText: FFLocalizations.of(context).getText(
                            'ecusqm2g' /* Please select... */,
                          ),
                          icon: Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 24.0,
                          ),
                          fillColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          elevation: 2.0,
                          borderColor: FlutterFlowTheme.of(context).alternate,
                          borderWidth: 2.0,
                          borderRadius: 8.0,
                          margin: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 4.0, 16.0, 4.0),
                          hidesUnderline: true,
                          isOverButton: true,
                          isSearchable: false,
                          isMultiSelect: false,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 20.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FFButtonWidget(
                    onPressed: () async {
                      await DisponibilidadRecord.collection.doc().set({
                        ...createDisponibilidadRecordData(
                          day: _model.datePicked,
                          usuario: currentUserReference,
                        ),
                        ...mapToFirestore(
                          {
                            'ListHours': functions.newCustomFunction(
                                functions
                                    .newCustomFunction2(_model.dropDownValue1!),
                                functions.newCustomFunction2(
                                    _model.dropDownValue2!)),
                          },
                        ),
                      });
                    },
                    text: FFLocalizations.of(context).getText(
                      'tomid0jq' /* Create */,
                    ),
                    options: FFButtonOptions(
                      height: 40.0,
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                      iconPadding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).primary,
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Inter',
                                color: Colors.white,
                                letterSpacing: 0.0,
                              ),
                      elevation: 3.0,
                      borderSide: const BorderSide(
                        color: Colors.transparent,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
