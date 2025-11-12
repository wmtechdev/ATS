import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_lib/flutter_lib_util.dart';

class CandidateRecord extends FirestoreRecord {
  CandidateRecord._(DocumentReference reference, Map<String, dynamic> data)
    : super(reference, data) {
    _initializeFields();
  }

  // "uid" field.
  DocumentReference? _uid;
  DocumentReference? get uid => _uid;
  bool hasUid() => _uid != null;

  // "cid" field.
  DocumentReference? _cid;
  DocumentReference? get cid => _cid;
  bool hasCid() => _cid != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "specialization" field.
  String? _specialization;
  String get specialization => _specialization ?? '';
  bool hasSpecialization() => _specialization != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  void _initializeFields() {
    _uid = snapshotData['uid'] as DocumentReference?;
    _cid = snapshotData['cid'] as DocumentReference?;
    _title = snapshotData['title'] as String?;
    _specialization = snapshotData['specialization'] as String?;
    _email = snapshotData['email'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Candidate');

  static Stream<CandidateRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CandidateRecord.fromSnapshot(s));

  static Future<CandidateRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CandidateRecord.fromSnapshot(s));

  static CandidateRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CandidateRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CandidateRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) => CandidateRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CandidateRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CandidateRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCandidateRecordData({
  DocumentReference? uid,
  DocumentReference? cid,
  String? title,
  String? specialization,
  String? email,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'uid': uid,
      'cid': cid,
      'title': title,
      'specialization': specialization,
      'email': email,
    }.withoutNulls,
  );

  return firestoreData;
}

class CandidateRecordDocumentEquality implements Equality<CandidateRecord> {
  const CandidateRecordDocumentEquality();

  @override
  bool equals(CandidateRecord? e1, CandidateRecord? e2) {
    return e1?.uid == e2?.uid &&
        e1?.cid == e2?.cid &&
        e1?.title == e2?.title &&
        e1?.specialization == e2?.specialization &&
        e1?.email == e2?.email;
  }

  @override
  int hash(CandidateRecord? e) => const ListEquality().hash([
    e?.uid,
    e?.cid,
    e?.title,
    e?.specialization,
    e?.email,
  ]);

  @override
  bool isValidKey(Object? o) => o is CandidateRecord;
}
