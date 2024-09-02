import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FeelingsRecord extends FirestoreRecord {
  FeelingsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "idnum" field.
  int? _idnum;
  int get idnum => _idnum ?? 0;
  bool hasIdnum() => _idnum != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "url_photo" field.
  String? _urlPhoto;
  String get urlPhoto => _urlPhoto ?? '';
  bool hasUrlPhoto() => _urlPhoto != null;

  void _initializeFields() {
    _idnum = castToType<int>(snapshotData['idnum']);
    _name = snapshotData['name'] as String?;
    _urlPhoto = snapshotData['url_photo'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('feelings');

  static Stream<FeelingsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FeelingsRecord.fromSnapshot(s));

  static Future<FeelingsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FeelingsRecord.fromSnapshot(s));

  static FeelingsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FeelingsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FeelingsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FeelingsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FeelingsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FeelingsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFeelingsRecordData({
  int? idnum,
  String? name,
  String? urlPhoto,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'idnum': idnum,
      'name': name,
      'url_photo': urlPhoto,
    }.withoutNulls,
  );

  return firestoreData;
}

class FeelingsRecordDocumentEquality implements Equality<FeelingsRecord> {
  const FeelingsRecordDocumentEquality();

  @override
  bool equals(FeelingsRecord? e1, FeelingsRecord? e2) {
    return e1?.idnum == e2?.idnum &&
        e1?.name == e2?.name &&
        e1?.urlPhoto == e2?.urlPhoto;
  }

  @override
  int hash(FeelingsRecord? e) =>
      const ListEquality().hash([e?.idnum, e?.name, e?.urlPhoto]);

  @override
  bool isValidKey(Object? o) => o is FeelingsRecord;
}
