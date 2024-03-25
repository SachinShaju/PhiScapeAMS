import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LeaveapplicationRecord extends FirestoreRecord {
  LeaveapplicationRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "userId" field.
  String? _userId;
  String get userId => _userId ?? '';
  bool hasUserId() => _userId != null;

  // "startDate" field.
  DateTime? _startDate;
  DateTime? get startDate => _startDate;
  bool hasStartDate() => _startDate != null;

  // "endDate" field.
  DateTime? _endDate;
  DateTime? get endDate => _endDate;
  bool hasEndDate() => _endDate != null;

  // "reasonForLeave" field.
  String? _reasonForLeave;
  String get reasonForLeave => _reasonForLeave ?? '';
  bool hasReasonForLeave() => _reasonForLeave != null;

  // "Leavetitle" field.
  String? _leavetitle;
  String get leavetitle => _leavetitle ?? '';
  bool hasLeavetitle() => _leavetitle != null;

  // "leave_status" field.
  String? _leaveStatus;
  String get leaveStatus => _leaveStatus ?? '';
  bool hasLeaveStatus() => _leaveStatus != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "phone" field.
  String? _phone;
  String get phone => _phone ?? '';
  bool hasPhone() => _phone != null;

  void _initializeFields() {
    _userId = snapshotData['userId'] as String?;
    _startDate = snapshotData['startDate'] as DateTime?;
    _endDate = snapshotData['endDate'] as DateTime?;
    _reasonForLeave = snapshotData['reasonForLeave'] as String?;
    _leavetitle = snapshotData['Leavetitle'] as String?;
    _leaveStatus = snapshotData['leave_status'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _email = snapshotData['email'] as String?;
    _phone = snapshotData['phone'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Leaveapplication');

  static Stream<LeaveapplicationRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => LeaveapplicationRecord.fromSnapshot(s));

  static Future<LeaveapplicationRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => LeaveapplicationRecord.fromSnapshot(s));

  static LeaveapplicationRecord fromSnapshot(DocumentSnapshot snapshot) =>
      LeaveapplicationRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static LeaveapplicationRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      LeaveapplicationRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'LeaveapplicationRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is LeaveapplicationRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createLeaveapplicationRecordData({
  String? userId,
  DateTime? startDate,
  DateTime? endDate,
  String? reasonForLeave,
  String? leavetitle,
  String? leaveStatus,
  String? photoUrl,
  String? displayName,
  String? email,
  String? phone,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'userId': userId,
      'startDate': startDate,
      'endDate': endDate,
      'reasonForLeave': reasonForLeave,
      'Leavetitle': leavetitle,
      'leave_status': leaveStatus,
      'photo_url': photoUrl,
      'display_name': displayName,
      'email': email,
      'phone': phone,
    }.withoutNulls,
  );

  return firestoreData;
}

class LeaveapplicationRecordDocumentEquality
    implements Equality<LeaveapplicationRecord> {
  const LeaveapplicationRecordDocumentEquality();

  @override
  bool equals(LeaveapplicationRecord? e1, LeaveapplicationRecord? e2) {
    return e1?.userId == e2?.userId &&
        e1?.startDate == e2?.startDate &&
        e1?.endDate == e2?.endDate &&
        e1?.reasonForLeave == e2?.reasonForLeave &&
        e1?.leavetitle == e2?.leavetitle &&
        e1?.leaveStatus == e2?.leaveStatus &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.displayName == e2?.displayName &&
        e1?.email == e2?.email &&
        e1?.phone == e2?.phone;
  }

  @override
  int hash(LeaveapplicationRecord? e) => const ListEquality().hash([
        e?.userId,
        e?.startDate,
        e?.endDate,
        e?.reasonForLeave,
        e?.leavetitle,
        e?.leaveStatus,
        e?.photoUrl,
        e?.displayName,
        e?.email,
        e?.phone
      ]);

  @override
  bool isValidKey(Object? o) => o is LeaveapplicationRecord;
}
