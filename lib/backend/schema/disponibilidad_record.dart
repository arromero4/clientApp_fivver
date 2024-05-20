import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class DisponibilidadRecord extends FirestoreRecord {
  DisponibilidadRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Day" field.
  DateTime? _day;
  DateTime? get day => _day;
  bool hasDay() => _day != null;

  // "ListHours" field.
  List<DateTime>? _listHours;
  List<DateTime> get listHours => _listHours ?? const [];
  bool hasListHours() => _listHours != null;

  // "Usuario" field.
  DocumentReference? _usuario;
  DocumentReference? get usuario => _usuario;
  bool hasUsuario() => _usuario != null;

  void _initializeFields() {
    _day = snapshotData['Day'] as DateTime?;
    _listHours = getDataList(snapshotData['ListHours']);
    _usuario = snapshotData['Usuario'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('disponibilidad');

  static Stream<DisponibilidadRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DisponibilidadRecord.fromSnapshot(s));

  static Future<DisponibilidadRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DisponibilidadRecord.fromSnapshot(s));

  static DisponibilidadRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DisponibilidadRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DisponibilidadRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DisponibilidadRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DisponibilidadRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DisponibilidadRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDisponibilidadRecordData({
  DateTime? day,
  DocumentReference? usuario,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Day': day,
      'Usuario': usuario,
    }.withoutNulls,
  );

  return firestoreData;
}

class DisponibilidadRecordDocumentEquality
    implements Equality<DisponibilidadRecord> {
  const DisponibilidadRecordDocumentEquality();

  @override
  bool equals(DisponibilidadRecord? e1, DisponibilidadRecord? e2) {
    const listEquality = ListEquality();
    return e1?.day == e2?.day &&
        listEquality.equals(e1?.listHours, e2?.listHours) &&
        e1?.usuario == e2?.usuario;
  }

  @override
  int hash(DisponibilidadRecord? e) =>
      const ListEquality().hash([e?.day, e?.listHours, e?.usuario]);

  @override
  bool isValidKey(Object? o) => o is DisponibilidadRecord;
}
