// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_lib/flutter_lib_util.dart';

class DocumentStruct extends FFFirebaseStruct {
  DocumentStruct({
    /// Document ID
    String? did,
    String? title,
    String? description,
    DateTime? uploadDtime,
    String? link,
    DocumentReference? uid,
    DocumentReference? jid,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  }) : _did = did,
       _title = title,
       _description = description,
       _uploadDtime = uploadDtime,
       _link = link,
       _uid = uid,
       _jid = jid,
       super(firestoreUtilData);

  // "did" field.
  String? _did;
  String get did => _did ?? '';
  set did(String? val) => _did = val;

  bool hasDid() => _did != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "upload_dtime" field.
  DateTime? _uploadDtime;
  DateTime? get uploadDtime => _uploadDtime;
  set uploadDtime(DateTime? val) => _uploadDtime = val;

  bool hasUploadDtime() => _uploadDtime != null;

  // "link" field.
  String? _link;
  String get link => _link ?? '';
  set link(String? val) => _link = val;

  bool hasLink() => _link != null;

  // "uid" field.
  DocumentReference? _uid;
  DocumentReference? get uid => _uid;
  set uid(DocumentReference? val) => _uid = val;

  bool hasUid() => _uid != null;

  // "jid" field.
  DocumentReference? _jid;
  DocumentReference? get jid => _jid;
  set jid(DocumentReference? val) => _jid = val;

  bool hasJid() => _jid != null;

  static DocumentStruct fromMap(Map<String, dynamic> data) => DocumentStruct(
    did: data['did'] as String?,
    title: data['title'] as String?,
    description: data['description'] as String?,
    uploadDtime: data['upload_dtime'] as DateTime?,
    link: data['link'] as String?,
    uid: data['uid'] as DocumentReference?,
    jid: data['jid'] as DocumentReference?,
  );

  static DocumentStruct? maybeFromMap(dynamic data) =>
      data is Map ? DocumentStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
    'did': _did,
    'title': _title,
    'description': _description,
    'upload_dtime': _uploadDtime,
    'link': _link,
    'uid': _uid,
    'jid': _jid,
  }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
    'did': serializeParam(_did, ParamType.String),
    'title': serializeParam(_title, ParamType.String),
    'description': serializeParam(_description, ParamType.String),
    'upload_dtime': serializeParam(_uploadDtime, ParamType.DateTime),
    'link': serializeParam(_link, ParamType.String),
    'uid': serializeParam(_uid, ParamType.DocumentReference),
    'jid': serializeParam(_jid, ParamType.DocumentReference),
  }.withoutNulls;

  static DocumentStruct fromSerializableMap(Map<String, dynamic> data) =>
      DocumentStruct(
        did: deserializeParam(data['did'], ParamType.String, false),
        title: deserializeParam(data['title'], ParamType.String, false),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        uploadDtime: deserializeParam(
          data['upload_dtime'],
          ParamType.DateTime,
          false,
        ),
        link: deserializeParam(data['link'], ParamType.String, false),
        uid: deserializeParam(
          data['uid'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['Users'],
        ),
        jid: deserializeParam(
          data['jid'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['Job'],
        ),
      );

  @override
  String toString() => 'DocumentStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DocumentStruct &&
        did == other.did &&
        title == other.title &&
        description == other.description &&
        uploadDtime == other.uploadDtime &&
        link == other.link &&
        uid == other.uid &&
        jid == other.jid;
  }

  @override
  int get hashCode => const ListEquality().hash([
    did,
    title,
    description,
    uploadDtime,
    link,
    uid,
    jid,
  ]);
}

DocumentStruct createDocumentStruct({
  String? did,
  String? title,
  String? description,
  DateTime? uploadDtime,
  String? link,
  DocumentReference? uid,
  DocumentReference? jid,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) => DocumentStruct(
  did: did,
  title: title,
  description: description,
  uploadDtime: uploadDtime,
  link: link,
  uid: uid,
  jid: jid,
  firestoreUtilData: FirestoreUtilData(
    clearUnsetFields: clearUnsetFields,
    create: create,
    delete: delete,
    fieldValues: fieldValues,
  ),
);

DocumentStruct? updateDocumentStruct(
  DocumentStruct? document, {
  bool clearUnsetFields = true,
  bool create = false,
}) => document
  ?..firestoreUtilData = FirestoreUtilData(
    clearUnsetFields: clearUnsetFields,
    create: create,
  );

void addDocumentStructData(
  Map<String, dynamic> firestoreData,
  DocumentStruct? document,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (document == null) {
    return;
  }
  if (document.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && document.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final documentData = getDocumentFirestoreData(document, forFieldValue);
  final nestedData = documentData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = document.firestoreUtilData.create || clearFields;
  firestoreData.addAll(
    mergeFields ? mergeNestedFields(nestedData) : nestedData,
  );
}

Map<String, dynamic> getDocumentFirestoreData(
  DocumentStruct? document, [
  bool forFieldValue = false,
]) {
  if (document == null) {
    return {};
  }
  final firestoreData = mapToFirestore(document.toMap());

  // Add any Firestore field values
  document.firestoreUtilData.fieldValues.forEach(
    (k, v) => firestoreData[k] = v,
  );

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getDocumentListFirestoreData(
  List<DocumentStruct>? documents,
) => documents?.map((e) => getDocumentFirestoreData(e, true)).toList() ?? [];
