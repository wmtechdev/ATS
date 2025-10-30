// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_saad/flutter_saad_util.dart';

class CandidatesDummyStruct extends BaseStruct {
  CandidatesDummyStruct({
    String? name,
    String? specialization,
    String? email,
    String? status,
    DateTime? created,
  })  : _name = name,
        _specialization = specialization,
        _email = email,
        _status = status,
        _created = created;

  // "Name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "Specialization" field.
  String? _specialization;
  String get specialization => _specialization ?? '';
  set specialization(String? val) => _specialization = val;

  bool hasSpecialization() => _specialization != null;

  // "Email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;

  bool hasEmail() => _email != null;

  // "Status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

  // "created" field.
  DateTime? _created;
  DateTime? get created => _created;
  set created(DateTime? val) => _created = val;

  bool hasCreated() => _created != null;

  static CandidatesDummyStruct fromMap(Map<String, dynamic> data) =>
      CandidatesDummyStruct(
        name: data['Name'] as String?,
        specialization: data['Specialization'] as String?,
        email: data['Email'] as String?,
        status: data['Status'] as String?,
        created: data['created'] as DateTime?,
      );

  static CandidatesDummyStruct? maybeFromMap(dynamic data) => data is Map
      ? CandidatesDummyStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'Name': _name,
        'Specialization': _specialization,
        'Email': _email,
        'Status': _status,
        'created': _created,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Name': serializeParam(
          _name,
          ParamType.String,
        ),
        'Specialization': serializeParam(
          _specialization,
          ParamType.String,
        ),
        'Email': serializeParam(
          _email,
          ParamType.String,
        ),
        'Status': serializeParam(
          _status,
          ParamType.String,
        ),
        'created': serializeParam(
          _created,
          ParamType.DateTime,
        ),
      }.withoutNulls;

  static CandidatesDummyStruct fromSerializableMap(Map<String, dynamic> data) =>
      CandidatesDummyStruct(
        name: deserializeParam(
          data['Name'],
          ParamType.String,
          false,
        ),
        specialization: deserializeParam(
          data['Specialization'],
          ParamType.String,
          false,
        ),
        email: deserializeParam(
          data['Email'],
          ParamType.String,
          false,
        ),
        status: deserializeParam(
          data['Status'],
          ParamType.String,
          false,
        ),
        created: deserializeParam(
          data['created'],
          ParamType.DateTime,
          false,
        ),
      );

  @override
  String toString() => 'CandidatesDummyStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CandidatesDummyStruct &&
        name == other.name &&
        specialization == other.specialization &&
        email == other.email &&
        status == other.status &&
        created == other.created;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([name, specialization, email, status, created]);
}

CandidatesDummyStruct createCandidatesDummyStruct({
  String? name,
  String? specialization,
  String? email,
  String? status,
  DateTime? created,
}) =>
    CandidatesDummyStruct(
      name: name,
      specialization: specialization,
      email: email,
      status: status,
      created: created,
    );
