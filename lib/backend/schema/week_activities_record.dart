import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class WeekActivitiesRecord extends FirestoreRecord {
  WeekActivitiesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "day" field.
  String? _day;
  String get day => _day ?? '';
  bool hasDay() => _day != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  bool hasDescripcion() => _descripcion != null;

  // "startHour" field.
  DateTime? _startHour;
  DateTime? get startHour => _startHour;
  bool hasStartHour() => _startHour != null;

  // "endHour" field.
  DateTime? _endHour;
  DateTime? get endHour => _endHour;
  bool hasEndHour() => _endHour != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _day = snapshotData['day'] as String?;
    _name = snapshotData['name'] as String?;
    _descripcion = snapshotData['descripcion'] as String?;
    _startHour = snapshotData['startHour'] as DateTime?;
    _endHour = snapshotData['endHour'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('weekActivities');

  static Stream<WeekActivitiesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => WeekActivitiesRecord.fromSnapshot(s));

  static Future<WeekActivitiesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => WeekActivitiesRecord.fromSnapshot(s));

  static WeekActivitiesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      WeekActivitiesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static WeekActivitiesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      WeekActivitiesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'WeekActivitiesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is WeekActivitiesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createWeekActivitiesRecordData({
  String? email,
  String? day,
  String? name,
  String? descripcion,
  DateTime? startHour,
  DateTime? endHour,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'day': day,
      'name': name,
      'descripcion': descripcion,
      'startHour': startHour,
      'endHour': endHour,
    }.withoutNulls,
  );

  return firestoreData;
}

class WeekActivitiesRecordDocumentEquality
    implements Equality<WeekActivitiesRecord> {
  const WeekActivitiesRecordDocumentEquality();

  @override
  bool equals(WeekActivitiesRecord? e1, WeekActivitiesRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.day == e2?.day &&
        e1?.name == e2?.name &&
        e1?.descripcion == e2?.descripcion &&
        e1?.startHour == e2?.startHour &&
        e1?.endHour == e2?.endHour;
  }

  @override
  int hash(WeekActivitiesRecord? e) => const ListEquality().hash(
      [e?.email, e?.day, e?.name, e?.descripcion, e?.startHour, e?.endHour]);

  @override
  bool isValidKey(Object? o) => o is WeekActivitiesRecord;
}
