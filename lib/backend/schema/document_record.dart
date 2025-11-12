import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_lib/flutter_lib_util.dart';

class DocumentRecord extends FirestoreRecord {
  DocumentRecord._(DocumentReference reference, Map<String, dynamic> data)
    : super(reference, data) {
    _initializeFields();
  }

  // "did" field.
  String? _did;
  String get did => _did ?? '';
  bool hasDid() => _did != null;

  // "job_id" field.
  DocumentReference? _jobId;
  DocumentReference? get jobId => _jobId;
  bool hasJobId() => _jobId != null;

  // "user_id" field.
  DocumentReference? _userId;
  DocumentReference? get userId => _userId;
  bool hasUserId() => _userId != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "dtime" field.
  DateTime? _dtime;
  DateTime? get dtime => _dtime;
  bool hasDtime() => _dtime != null;

  // "file_path" field.
  List<String>? _filePath;
  List<String> get filePath => _filePath ?? const [];
  bool hasFilePath() => _filePath != null;

  // "file_name" field.
  List<String>? _fileName;
  List<String> get fileName => _fileName ?? const [];
  bool hasFileName() => _fileName != null;

  // "file_type" field.
  List<String>? _fileType;
  List<String> get fileType => _fileType ?? const [];
  bool hasFileType() => _fileType != null;

  // "image_path" field.
  List<String>? _imagePath;
  List<String> get imagePath => _imagePath ?? const [];
  bool hasImagePath() => _imagePath != null;

  void _initializeFields() {
    _did = snapshotData['did'] as String?;
    _jobId = snapshotData['job_id'] as DocumentReference?;
    _userId = snapshotData['user_id'] as DocumentReference?;
    _title = snapshotData['title'] as String?;
    _description = snapshotData['description'] as String?;
    _dtime = snapshotData['dtime'] as DateTime?;
    _filePath = getDataList(snapshotData['file_path']);
    _fileName = getDataList(snapshotData['file_name']);
    _fileType = getDataList(snapshotData['file_type']);
    _imagePath = getDataList(snapshotData['image_path']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Document');

  static Stream<DocumentRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DocumentRecord.fromSnapshot(s));

  static Future<DocumentRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DocumentRecord.fromSnapshot(s));

  static DocumentRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DocumentRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DocumentRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) => DocumentRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DocumentRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DocumentRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDocumentRecordData({
  String? did,
  DocumentReference? jobId,
  DocumentReference? userId,
  String? title,
  String? description,
  DateTime? dtime,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'did': did,
      'job_id': jobId,
      'user_id': userId,
      'title': title,
      'description': description,
      'dtime': dtime,
    }.withoutNulls,
  );

  return firestoreData;
}

class DocumentRecordDocumentEquality implements Equality<DocumentRecord> {
  const DocumentRecordDocumentEquality();

  @override
  bool equals(DocumentRecord? e1, DocumentRecord? e2) {
    const listEquality = ListEquality();
    return e1?.did == e2?.did &&
        e1?.jobId == e2?.jobId &&
        e1?.userId == e2?.userId &&
        e1?.title == e2?.title &&
        e1?.description == e2?.description &&
        e1?.dtime == e2?.dtime &&
        listEquality.equals(e1?.filePath, e2?.filePath) &&
        listEquality.equals(e1?.fileName, e2?.fileName) &&
        listEquality.equals(e1?.fileType, e2?.fileType) &&
        listEquality.equals(e1?.imagePath, e2?.imagePath);
  }

  @override
  int hash(DocumentRecord? e) => const ListEquality().hash([
    e?.did,
    e?.jobId,
    e?.userId,
    e?.title,
    e?.description,
    e?.dtime,
    e?.filePath,
    e?.fileName,
    e?.fileType,
    e?.imagePath,
  ]);

  @override
  bool isValidKey(Object? o) => o is DocumentRecord;
}
