import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AlimentationRecord extends FirestoreRecord {
  AlimentationRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "hour" field.
  DateTime? _hour;
  DateTime? get hour => _hour;
  bool hasHour() => _hour != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _hour = snapshotData['hour'] as DateTime?;
    _image = snapshotData['image'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('alimentation');

  static Stream<AlimentationRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AlimentationRecord.fromSnapshot(s));

  static Future<AlimentationRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AlimentationRecord.fromSnapshot(s));

  static AlimentationRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AlimentationRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AlimentationRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AlimentationRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AlimentationRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AlimentationRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAlimentationRecordData({
  String? email,
  String? name,
  String? description,
  DateTime? hour,
  String? image,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'name': name,
      'description': description,
      'hour': hour,
      'image': image,
    }.withoutNulls,
  );

  return firestoreData;
}

class AlimentationRecordDocumentEquality
    implements Equality<AlimentationRecord> {
  const AlimentationRecordDocumentEquality();

  @override
  bool equals(AlimentationRecord? e1, AlimentationRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        e1?.hour == e2?.hour &&
        e1?.image == e2?.image;
  }

  @override
  int hash(AlimentationRecord? e) => const ListEquality()
      .hash([e?.email, e?.name, e?.description, e?.hour, e?.image]);

  @override
  bool isValidKey(Object? o) => o is AlimentationRecord;
}
