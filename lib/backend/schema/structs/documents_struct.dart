// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_lib/flutter_lib_util.dart';

class DocumentsStruct extends FFFirebaseStruct {
  DocumentsStruct({
    String? title,
    String? description,
    bool? required,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  }) : _title = title,
       _description = description,
       _required = required,
       super(firestoreUtilData);

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

  // "required" field.
  bool? _required;
  bool get required => _required ?? false;
  set required(bool? val) => _required = val;

  bool hasRequired() => _required != null;

  static DocumentsStruct fromMap(Map<String, dynamic> data) => DocumentsStruct(
    title: data['title'] as String?,
    description: data['description'] as String?,
    required: data['required'] as bool?,
  );

  static DocumentsStruct? maybeFromMap(dynamic data) => data is Map
      ? DocumentsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
    'title': _title,
    'description': _description,
    'required': _required,
  }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
    'title': serializeParam(_title, ParamType.String),
    'description': serializeParam(_description, ParamType.String),
    'required': serializeParam(_required, ParamType.bool),
  }.withoutNulls;

  static DocumentsStruct fromSerializableMap(Map<String, dynamic> data) =>
      DocumentsStruct(
        title: deserializeParam(data['title'], ParamType.String, false),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        required: deserializeParam(data['required'], ParamType.bool, false),
      );

  @override
  String toString() => 'DocumentsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DocumentsStruct &&
        title == other.title &&
        description == other.description &&
        required == other.required;
  }

  @override
  int get hashCode => const ListEquality().hash([title, description, required]);
}

DocumentsStruct createDocumentsStruct({
  String? title,
  String? description,
  bool? required,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) => DocumentsStruct(
  title: title,
  description: description,
  required: required,
  firestoreUtilData: FirestoreUtilData(
    clearUnsetFields: clearUnsetFields,
    create: create,
    delete: delete,
    fieldValues: fieldValues,
  ),
);

DocumentsStruct? updateDocumentsStruct(
  DocumentsStruct? documents, {
  bool clearUnsetFields = true,
  bool create = false,
}) => documents
  ?..firestoreUtilData = FirestoreUtilData(
    clearUnsetFields: clearUnsetFields,
    create: create,
  );

void addDocumentsStructData(
  Map<String, dynamic> firestoreData,
  DocumentsStruct? documents,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (documents == null) {
    return;
  }
  if (documents.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && documents.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final documentsData = getDocumentsFirestoreData(documents, forFieldValue);
  final nestedData = documentsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = documents.firestoreUtilData.create || clearFields;
  firestoreData.addAll(
    mergeFields ? mergeNestedFields(nestedData) : nestedData,
  );
}

Map<String, dynamic> getDocumentsFirestoreData(
  DocumentsStruct? documents, [
  bool forFieldValue = false,
]) {
  if (documents == null) {
    return {};
  }
  final firestoreData = mapToFirestore(documents.toMap());

  // Add any Firestore field values
  documents.firestoreUtilData.fieldValues.forEach(
    (k, v) => firestoreData[k] = v,
  );

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getDocumentsListFirestoreData(
  List<DocumentsStruct>? documentss,
) => documentss?.map((e) => getDocumentsFirestoreData(e, true)).toList() ?? [];
