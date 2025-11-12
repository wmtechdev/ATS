import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_lib/flutter_lib_util.dart';

class JobRecord extends FirestoreRecord {
  JobRecord._(DocumentReference reference, Map<String, dynamic> data)
    : super(reference, data) {
    _initializeFields();
  }

  // "jid" field.
  DocumentReference? _jid;
  DocumentReference? get jid => _jid;
  bool hasJid() => _jid != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "specialization" field.
  String? _specialization;
  String get specialization => _specialization ?? '';
  bool hasSpecialization() => _specialization != null;

  // "employment_type" field.
  String? _employmentType;
  String get employmentType => _employmentType ?? '';
  bool hasEmploymentType() => _employmentType != null;

  // "experience_years" field.
  int? _experienceYears;
  int get experienceYears => _experienceYears ?? 0;
  bool hasExperienceYears() => _experienceYears != null;

  // "location_type" field.
  String? _locationType;
  String get locationType => _locationType ?? '';
  bool hasLocationType() => _locationType != null;

  // "job_description" field.
  String? _jobDescription;
  String get jobDescription => _jobDescription ?? '';
  bool hasJobDescription() => _jobDescription != null;

  // "qualifications" field.
  String? _qualifications;
  String get qualifications => _qualifications ?? '';
  bool hasQualifications() => _qualifications != null;

  // "skills" field.
  String? _skills;
  String get skills => _skills ?? '';
  bool hasSkills() => _skills != null;

  // "salary_range" field.
  String? _salaryRange;
  String get salaryRange => _salaryRange ?? '';
  bool hasSalaryRange() => _salaryRange != null;

  // "health_insurance" field.
  bool? _healthInsurance;
  bool get healthInsurance => _healthInsurance ?? false;
  bool hasHealthInsurance() => _healthInsurance != null;

  // "other_benefits" field.
  String? _otherBenefits;
  String get otherBenefits => _otherBenefits ?? '';
  bool hasOtherBenefits() => _otherBenefits != null;

  // "agent" field.
  DocumentReference? _agent;
  DocumentReference? get agent => _agent;
  bool hasAgent() => _agent != null;

  // "documents" field.
  List<DocumentsStruct>? _documents;
  List<DocumentsStruct> get documents => _documents ?? const [];
  bool hasDocuments() => _documents != null;

  // "dtime" field.
  DateTime? _dtime;
  DateTime? get dtime => _dtime;
  bool hasDtime() => _dtime != null;

  // "candidates" field.
  List<DocumentReference>? _candidates;
  List<DocumentReference> get candidates => _candidates ?? const [];
  bool hasCandidates() => _candidates != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

  // "retirement_plan" field.
  bool? _retirementPlan;
  bool get retirementPlan => _retirementPlan ?? false;
  bool hasRetirementPlan() => _retirementPlan != null;

  // "agent_name" field.
  String? _agentName;
  String get agentName => _agentName ?? '';
  bool hasAgentName() => _agentName != null;

  void _initializeFields() {
    _jid = snapshotData['jid'] as DocumentReference?;
    _title = snapshotData['title'] as String?;
    _specialization = snapshotData['specialization'] as String?;
    _employmentType = snapshotData['employment_type'] as String?;
    _experienceYears = castToType<int>(snapshotData['experience_years']);
    _locationType = snapshotData['location_type'] as String?;
    _jobDescription = snapshotData['job_description'] as String?;
    _qualifications = snapshotData['qualifications'] as String?;
    _skills = snapshotData['skills'] as String?;
    _salaryRange = snapshotData['salary_range'] as String?;
    _healthInsurance = snapshotData['health_insurance'] as bool?;
    _otherBenefits = snapshotData['other_benefits'] as String?;
    _agent = snapshotData['agent'] as DocumentReference?;
    _documents = getStructList(
      snapshotData['documents'],
      DocumentsStruct.fromMap,
    );
    _dtime = snapshotData['dtime'] as DateTime?;
    _candidates = getDataList(snapshotData['candidates']);
    _address = snapshotData['address'] as String?;
    _retirementPlan = snapshotData['retirement_plan'] as bool?;
    _agentName = snapshotData['agent_name'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Job');

  static Stream<JobRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => JobRecord.fromSnapshot(s));

  static Future<JobRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => JobRecord.fromSnapshot(s));

  static JobRecord fromSnapshot(DocumentSnapshot snapshot) => JobRecord._(
    snapshot.reference,
    mapFromFirestore(snapshot.data() as Map<String, dynamic>),
  );

  static JobRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) => JobRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'JobRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is JobRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createJobRecordData({
  DocumentReference? jid,
  String? title,
  String? specialization,
  String? employmentType,
  int? experienceYears,
  String? locationType,
  String? jobDescription,
  String? qualifications,
  String? skills,
  String? salaryRange,
  bool? healthInsurance,
  String? otherBenefits,
  DocumentReference? agent,
  DateTime? dtime,
  String? address,
  bool? retirementPlan,
  String? agentName,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'jid': jid,
      'title': title,
      'specialization': specialization,
      'employment_type': employmentType,
      'experience_years': experienceYears,
      'location_type': locationType,
      'job_description': jobDescription,
      'qualifications': qualifications,
      'skills': skills,
      'salary_range': salaryRange,
      'health_insurance': healthInsurance,
      'other_benefits': otherBenefits,
      'agent': agent,
      'dtime': dtime,
      'address': address,
      'retirement_plan': retirementPlan,
      'agent_name': agentName,
    }.withoutNulls,
  );

  return firestoreData;
}

class JobRecordDocumentEquality implements Equality<JobRecord> {
  const JobRecordDocumentEquality();

  @override
  bool equals(JobRecord? e1, JobRecord? e2) {
    const listEquality = ListEquality();
    return e1?.jid == e2?.jid &&
        e1?.title == e2?.title &&
        e1?.specialization == e2?.specialization &&
        e1?.employmentType == e2?.employmentType &&
        e1?.experienceYears == e2?.experienceYears &&
        e1?.locationType == e2?.locationType &&
        e1?.jobDescription == e2?.jobDescription &&
        e1?.qualifications == e2?.qualifications &&
        e1?.skills == e2?.skills &&
        e1?.salaryRange == e2?.salaryRange &&
        e1?.healthInsurance == e2?.healthInsurance &&
        e1?.otherBenefits == e2?.otherBenefits &&
        e1?.agent == e2?.agent &&
        listEquality.equals(e1?.documents, e2?.documents) &&
        e1?.dtime == e2?.dtime &&
        listEquality.equals(e1?.candidates, e2?.candidates) &&
        e1?.address == e2?.address &&
        e1?.retirementPlan == e2?.retirementPlan &&
        e1?.agentName == e2?.agentName;
  }

  @override
  int hash(JobRecord? e) => const ListEquality().hash([
    e?.jid,
    e?.title,
    e?.specialization,
    e?.employmentType,
    e?.experienceYears,
    e?.locationType,
    e?.jobDescription,
    e?.qualifications,
    e?.skills,
    e?.salaryRange,
    e?.healthInsurance,
    e?.otherBenefits,
    e?.agent,
    e?.documents,
    e?.dtime,
    e?.candidates,
    e?.address,
    e?.retirementPlan,
    e?.agentName,
  ]);

  @override
  bool isValidKey(Object? o) => o is JobRecord;
}
