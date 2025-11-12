// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_lib/flutter_lib_util.dart';

class CandidatesDummyStruct extends FFFirebaseStruct {
  CandidatesDummyStruct({
    String? name,
    String? title,
    String? email,
    String? agent,
    DateTime? created,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  }) : _name = name,
       _title = title,
       _email = email,
       _agent = agent,
       _created = created,
       super(firestoreUtilData);

  // "Name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "Title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  // "Email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;

  bool hasEmail() => _email != null;

  // "Agent" field.
  String? _agent;
  String get agent => _agent ?? '';
  set agent(String? val) => _agent = val;

  bool hasAgent() => _agent != null;

  // "created" field.
  DateTime? _created;
  DateTime? get created => _created;
  set created(DateTime? val) => _created = val;

  bool hasCreated() => _created != null;

  static CandidatesDummyStruct fromMap(Map<String, dynamic> data) =>
      CandidatesDummyStruct(
        name: data['Name'] as String?,
        title: data['Title'] as String?,
        email: data['Email'] as String?,
        agent: data['Agent'] as String?,
        created: data['created'] as DateTime?,
      );

  static CandidatesDummyStruct? maybeFromMap(dynamic data) => data is Map
      ? CandidatesDummyStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
    'Name': _name,
    'Title': _title,
    'Email': _email,
    'Agent': _agent,
    'created': _created,
  }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
    'Name': serializeParam(_name, ParamType.String),
    'Title': serializeParam(_title, ParamType.String),
    'Email': serializeParam(_email, ParamType.String),
    'Agent': serializeParam(_agent, ParamType.String),
    'created': serializeParam(_created, ParamType.DateTime),
  }.withoutNulls;

  static CandidatesDummyStruct fromSerializableMap(Map<String, dynamic> data) =>
      CandidatesDummyStruct(
        name: deserializeParam(data['Name'], ParamType.String, false),
        title: deserializeParam(data['Title'], ParamType.String, false),
        email: deserializeParam(data['Email'], ParamType.String, false),
        agent: deserializeParam(data['Agent'], ParamType.String, false),
        created: deserializeParam(data['created'], ParamType.DateTime, false),
      );

  @override
  String toString() => 'CandidatesDummyStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CandidatesDummyStruct &&
        name == other.name &&
        title == other.title &&
        email == other.email &&
        agent == other.agent &&
        created == other.created;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([name, title, email, agent, created]);
}

CandidatesDummyStruct createCandidatesDummyStruct({
  String? name,
  String? title,
  String? email,
  String? agent,
  DateTime? created,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) => CandidatesDummyStruct(
  name: name,
  title: title,
  email: email,
  agent: agent,
  created: created,
  firestoreUtilData: FirestoreUtilData(
    clearUnsetFields: clearUnsetFields,
    create: create,
    delete: delete,
    fieldValues: fieldValues,
  ),
);

CandidatesDummyStruct? updateCandidatesDummyStruct(
  CandidatesDummyStruct? candidatesDummy, {
  bool clearUnsetFields = true,
  bool create = false,
}) => candidatesDummy
  ?..firestoreUtilData = FirestoreUtilData(
    clearUnsetFields: clearUnsetFields,
    create: create,
  );

void addCandidatesDummyStructData(
  Map<String, dynamic> firestoreData,
  CandidatesDummyStruct? candidatesDummy,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (candidatesDummy == null) {
    return;
  }
  if (candidatesDummy.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && candidatesDummy.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final candidatesDummyData = getCandidatesDummyFirestoreData(
    candidatesDummy,
    forFieldValue,
  );
  final nestedData = candidatesDummyData.map(
    (k, v) => MapEntry('$fieldName.$k', v),
  );

  final mergeFields = candidatesDummy.firestoreUtilData.create || clearFields;
  firestoreData.addAll(
    mergeFields ? mergeNestedFields(nestedData) : nestedData,
  );
}

Map<String, dynamic> getCandidatesDummyFirestoreData(
  CandidatesDummyStruct? candidatesDummy, [
  bool forFieldValue = false,
]) {
  if (candidatesDummy == null) {
    return {};
  }
  final firestoreData = mapToFirestore(candidatesDummy.toMap());

  // Add any Firestore field values
  candidatesDummy.firestoreUtilData.fieldValues.forEach(
    (k, v) => firestoreData[k] = v,
  );

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCandidatesDummyListFirestoreData(
  List<CandidatesDummyStruct>? candidatesDummys,
) =>
    candidatesDummys
        ?.map((e) => getCandidatesDummyFirestoreData(e, true))
        .toList() ??
    [];
