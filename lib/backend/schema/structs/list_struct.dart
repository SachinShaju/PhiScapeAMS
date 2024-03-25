// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ListStruct extends FFFirebaseStruct {
  ListStruct({
    String? employeeName,
    DateTime? punchIn,
    DateTime? punchOut,
    String? photoUrl,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _employeeName = employeeName,
        _punchIn = punchIn,
        _punchOut = punchOut,
        _photoUrl = photoUrl,
        super(firestoreUtilData);

  // "employee_name" field.
  String? _employeeName;
  String get employeeName => _employeeName ?? '';
  set employeeName(String? val) => _employeeName = val;
  bool hasEmployeeName() => _employeeName != null;

  // "punch_in" field.
  DateTime? _punchIn;
  DateTime? get punchIn => _punchIn;
  set punchIn(DateTime? val) => _punchIn = val;
  bool hasPunchIn() => _punchIn != null;

  // "punch_out" field.
  DateTime? _punchOut;
  DateTime? get punchOut => _punchOut;
  set punchOut(DateTime? val) => _punchOut = val;
  bool hasPunchOut() => _punchOut != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  set photoUrl(String? val) => _photoUrl = val;
  bool hasPhotoUrl() => _photoUrl != null;

  static ListStruct fromMap(Map<String, dynamic> data) => ListStruct(
        employeeName: data['employee_name'] as String?,
        punchIn: data['punch_in'] as DateTime?,
        punchOut: data['punch_out'] as DateTime?,
        photoUrl: data['photo_url'] as String?,
      );

  static ListStruct? maybeFromMap(dynamic data) =>
      data is Map ? ListStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'employee_name': _employeeName,
        'punch_in': _punchIn,
        'punch_out': _punchOut,
        'photo_url': _photoUrl,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'employee_name': serializeParam(
          _employeeName,
          ParamType.String,
        ),
        'punch_in': serializeParam(
          _punchIn,
          ParamType.DateTime,
        ),
        'punch_out': serializeParam(
          _punchOut,
          ParamType.DateTime,
        ),
        'photo_url': serializeParam(
          _photoUrl,
          ParamType.String,
        ),
      }.withoutNulls;

  static ListStruct fromSerializableMap(Map<String, dynamic> data) =>
      ListStruct(
        employeeName: deserializeParam(
          data['employee_name'],
          ParamType.String,
          false,
        ),
        punchIn: deserializeParam(
          data['punch_in'],
          ParamType.DateTime,
          false,
        ),
        punchOut: deserializeParam(
          data['punch_out'],
          ParamType.DateTime,
          false,
        ),
        photoUrl: deserializeParam(
          data['photo_url'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ListStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ListStruct &&
        employeeName == other.employeeName &&
        punchIn == other.punchIn &&
        punchOut == other.punchOut &&
        photoUrl == other.photoUrl;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([employeeName, punchIn, punchOut, photoUrl]);
}

ListStruct createListStruct({
  String? employeeName,
  DateTime? punchIn,
  DateTime? punchOut,
  String? photoUrl,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ListStruct(
      employeeName: employeeName,
      punchIn: punchIn,
      punchOut: punchOut,
      photoUrl: photoUrl,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ListStruct? updateListStruct(
  ListStruct? list, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    list
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addListStructData(
  Map<String, dynamic> firestoreData,
  ListStruct? list,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (list == null) {
    return;
  }
  if (list.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue && list.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final listData = getListFirestoreData(list, forFieldValue);
  final nestedData = listData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = list.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getListFirestoreData(
  ListStruct? list, [
  bool forFieldValue = false,
]) {
  if (list == null) {
    return {};
  }
  final firestoreData = mapToFirestore(list.toMap());

  // Add any Firestore field values
  list.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getListListFirestoreData(
  List<ListStruct>? lists,
) =>
    lists?.map((e) => getListFirestoreData(e, true)).toList() ?? [];
