import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_saad/flutter_saad_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _jobsDummy = prefs
              .getStringList('ff_jobsDummy')
              ?.map((x) {
                try {
                  return JobsDummyStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _jobsDummy;
    });
    _safeInit(() {
      _CandidatesDummy = prefs
              .getStringList('ff_CandidatesDummy')
              ?.map((x) {
                try {
                  return CandidatesDummyStruct.fromSerializableMap(
                      jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _CandidatesDummy;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<JobsDummyStruct> _jobsDummy = [
    JobsDummyStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Doctor\",\"speciality\":\"MBBS\",\"status\":\"Available\",\"work_type\":\"On-Site\",\"hospital\":\"PIMS\",\"created\":\"1761665358575\"}')),
    JobsDummyStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Cleaner\",\"speciality\":\"Cleaning\",\"status\":\"Closed\",\"work_type\":\"Remote\",\"hospital\":\"Shifa International\",\"created\":\"1757604600000\"}')),
    JobsDummyStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Nurse\",\"speciality\":\"NEI Diploma\",\"status\":\"Available\",\"work_type\":\"Hybrid\",\"hospital\":\"PIMS Islamabad\",\"created\":\"1722659460000\"}'))
  ];
  List<JobsDummyStruct> get jobsDummy => _jobsDummy;
  set jobsDummy(List<JobsDummyStruct> value) {
    _jobsDummy = value;
    prefs.setStringList(
        'ff_jobsDummy', value.map((x) => x.serialize()).toList());
  }

  void addToJobsDummy(JobsDummyStruct value) {
    jobsDummy.add(value);
    prefs.setStringList(
        'ff_jobsDummy', _jobsDummy.map((x) => x.serialize()).toList());
  }

  void removeFromJobsDummy(JobsDummyStruct value) {
    jobsDummy.remove(value);
    prefs.setStringList(
        'ff_jobsDummy', _jobsDummy.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromJobsDummy(int index) {
    jobsDummy.removeAt(index);
    prefs.setStringList(
        'ff_jobsDummy', _jobsDummy.map((x) => x.serialize()).toList());
  }

  void updateJobsDummyAtIndex(
    int index,
    JobsDummyStruct Function(JobsDummyStruct) updateFn,
  ) {
    jobsDummy[index] = updateFn(_jobsDummy[index]);
    prefs.setStringList(
        'ff_jobsDummy', _jobsDummy.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInJobsDummy(int index, JobsDummyStruct value) {
    jobsDummy.insert(index, value);
    prefs.setStringList(
        'ff_jobsDummy', _jobsDummy.map((x) => x.serialize()).toList());
  }

  List<CandidatesDummyStruct> _CandidatesDummy = [
    CandidatesDummyStruct.fromSerializableMap(jsonDecode(
        '{\"Name\":\"SaadUllah Khan\",\"Specialization\":\"Gynocologist\",\"Email\":\"thesaadullahkhan@gmail.com\",\"Status\":\"Active\",\"created\":\"1761663437422\"}')),
    CandidatesDummyStruct.fromSerializableMap(jsonDecode(
        '{\"Name\":\"Jamal Jackson\",\"Specialization\":\"Nurse\",\"Email\":\"jamal@gmail.com\",\"Status\":\"Closed\",\"created\":\"1761062280000\"}')),
    CandidatesDummyStruct.fromSerializableMap(jsonDecode(
        '{\"Name\":\"Ashraf Frank\",\"Specialization\":\"Cleaner\",\"Email\":\"ashraf@gmail.com\",\"Status\":\"active\",\"created\":\"1756951140000\"}')),
    CandidatesDummyStruct.fromSerializableMap(jsonDecode(
        '{\"Name\":\"Komail Raza\",\"Specialization\":\"Cyroprate\",\"Email\":\"komail@email.com\",\"Status\":\"closed\",\"created\":\"1727968440000\"}'))
  ];
  List<CandidatesDummyStruct> get CandidatesDummy => _CandidatesDummy;
  set CandidatesDummy(List<CandidatesDummyStruct> value) {
    _CandidatesDummy = value;
    prefs.setStringList(
        'ff_CandidatesDummy', value.map((x) => x.serialize()).toList());
  }

  void addToCandidatesDummy(CandidatesDummyStruct value) {
    CandidatesDummy.add(value);
    prefs.setStringList('ff_CandidatesDummy',
        _CandidatesDummy.map((x) => x.serialize()).toList());
  }

  void removeFromCandidatesDummy(CandidatesDummyStruct value) {
    CandidatesDummy.remove(value);
    prefs.setStringList('ff_CandidatesDummy',
        _CandidatesDummy.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromCandidatesDummy(int index) {
    CandidatesDummy.removeAt(index);
    prefs.setStringList('ff_CandidatesDummy',
        _CandidatesDummy.map((x) => x.serialize()).toList());
  }

  void updateCandidatesDummyAtIndex(
    int index,
    CandidatesDummyStruct Function(CandidatesDummyStruct) updateFn,
  ) {
    CandidatesDummy[index] = updateFn(_CandidatesDummy[index]);
    prefs.setStringList('ff_CandidatesDummy',
        _CandidatesDummy.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInCandidatesDummy(int index, CandidatesDummyStruct value) {
    CandidatesDummy.insert(index, value);
    prefs.setStringList('ff_CandidatesDummy',
        _CandidatesDummy.map((x) => x.serialize()).toList());
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
