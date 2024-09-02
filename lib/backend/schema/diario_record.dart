import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DiarioRecord extends FirestoreRecord {
  DiarioRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "notes" field.
  String? _notes;
  String get notes => _notes ?? '';
  bool hasNotes() => _notes != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _date = snapshotData['date'] as DateTime?;
    _title = snapshotData['title'] as String?;
    _notes = snapshotData['notes'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('diario');

  static Stream<DiarioRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DiarioRecord.fromSnapshot(s));

  static Future<DiarioRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DiarioRecord.fromSnapshot(s));

  static DiarioRecord fromSnapshot(DocumentSnapshot snapshot) => DiarioRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DiarioRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DiarioRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DiarioRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DiarioRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDiarioRecordData({
  String? email,
  DateTime? date,
  String? title,
  String? notes,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'date': date,
      'title': title,
      'notes': notes,
    }.withoutNulls,
  );

  return firestoreData;
}

class DiarioRecordDocumentEquality implements Equality<DiarioRecord> {
  const DiarioRecordDocumentEquality();

  @override
  bool equals(DiarioRecord? e1, DiarioRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.date == e2?.date &&
        e1?.title == e2?.title &&
        e1?.notes == e2?.notes;
  }

  @override
  int hash(DiarioRecord? e) =>
      const ListEquality().hash([e?.email, e?.date, e?.title, e?.notes]);

  @override
  bool isValidKey(Object? o) => o is DiarioRecord;
}
