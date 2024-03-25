# PhiScape AMS

A new Flutter project.

Overview
PhiScape AMS (Attendance Management System) is a comprehensive mobile application designed to streamline attendance tracking, leave management, and administrative tasks for organizations. The system provides separate interfaces for administrators and employees, allowing them to perform role-specific actions efficiently.
Features
Authentication and Authorization:
  - Secure login for Admin and Employee roles.
  - Role-based access control (RBAC) to ensure authorized actions.
Admin Interface:
  - Dashboard to manage employees, view attendance details, and handle leave applications.
  - Real-time updates for leave application statuses.
Employee Interface:
  - User-friendly portal for punch-in/out, viewing attendance history, and submitting leave requests.
  - Real-time status display of leave applications.
Leave Management:
  - Leave application system with status tracking (pending, approved, rejected).
  - Admin workflow for reviewing and managing leave requests.
Scalability and Extensibility:
  - Designed for scalability to accommodate future growth.
  - Encourages additional features and optimizations for enhanced functionality.
Technologies Used
Backend: Firebase 
Frontend: Flutter, FlutterFlow for UI/UX design
Authentication: Firebase Authentication
Database: Firebase Firestore


## Getting Started

FlutterFlow projects are built to run on the Flutter _stable_ release.
## Integration Tests

To test on a real iOS / Android device, first connect the device and run the following command from the root of the project:

```bash
flutter test integration_test/test.dart
```

To test on a web browser, first launch `chromedriver` as follows:
```bash
chromedriver --port=4444
```

Then from the root of the project, run the following command:
```bash
flutter drive \
  --driver=test_driver/integration_test.dart \
  --target=integration_test/test.dart \
  -d chrome
```

Find more information about running Flutter integration tests [here](https://docs.flutter.dev/cookbook/testing/integration/introduction#5-run-the-integration-test).

Refer to this guide for instructions on running the tests on [Firebase Test Lab](https://github.com/flutter/flutter/tree/main/packages/integration_test#firebase-test-lab).
