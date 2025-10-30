// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_saad/flutter_saad_util.dart';

class JobsDummyStruct extends BaseStruct {
  JobsDummyStruct({
    String? title,
    String? speciality,
    String? status,
    String? workType,
    String? hospital,
    DateTime? created,
  })  : _title = title,
        _speciality = speciality,
        _status = status,
        _workType = workType,
        _hospital = hospital,
        _created = created;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  // "speciality" field.
  String? _speciality;
  String get speciality => _speciality ?? '';
  set speciality(String? val) => _speciality = val;

  bool hasSpeciality() => _speciality != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

  // "work_type" field.
  String? _workType;
  String get workType => _workType ?? '';
  set workType(String? val) => _workType = val;

  bool hasWorkType() => _workType != null;

  // "hospital" field.
  String? _hospital;
  String get hospital => _hospital ?? '';
  set hospital(String? val) => _hospital = val;

  bool hasHospital() => _hospital != null;

  // "created" field.
  DateTime? _created;
  DateTime? get created => _created;
  set created(DateTime? val) => _created = val;

  bool hasCreated() => _created != null;

  static JobsDummyStruct fromMap(Map<String, dynamic> data) => JobsDummyStruct(
        title: data['title'] as String?,
        speciality: data['speciality'] as String?,
        status: data['status'] as String?,
        workType: data['work_type'] as String?,
        hospital: data['hospital'] as String?,
        created: data['created'] as DateTime?,
      );

  static JobsDummyStruct? maybeFromMap(dynamic data) => data is Map
      ? JobsDummyStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'title': _title,
        'speciality': _speciality,
        'status': _status,
        'work_type': _workType,
        'hospital': _hospital,
        'created': _created,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'speciality': serializeParam(
          _speciality,
          ParamType.String,
        ),
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
        'work_type': serializeParam(
          _workType,
          ParamType.String,
        ),
        'hospital': serializeParam(
          _hospital,
          ParamType.String,
        ),
        'created': serializeParam(
          _created,
          ParamType.DateTime,
        ),
      }.withoutNulls;

  static JobsDummyStruct fromSerializableMap(Map<String, dynamic> data) =>
      JobsDummyStruct(
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        speciality: deserializeParam(
          data['speciality'],
          ParamType.String,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
        workType: deserializeParam(
          data['work_type'],
          ParamType.String,
          false,
        ),
        hospital: deserializeParam(
          data['hospital'],
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
  String toString() => 'JobsDummyStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is JobsDummyStruct &&
        title == other.title &&
        speciality == other.speciality &&
        status == other.status &&
        workType == other.workType &&
        hospital == other.hospital &&
        created == other.created;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([title, speciality, status, workType, hospital, created]);
}

JobsDummyStruct createJobsDummyStruct({
  String? title,
  String? speciality,
  String? status,
  String? workType,
  String? hospital,
  DateTime? created,
}) =>
    JobsDummyStruct(
      title: title,
      speciality: speciality,
      status: status,
      workType: workType,
      hospital: hospital,
      created: created,
    );
