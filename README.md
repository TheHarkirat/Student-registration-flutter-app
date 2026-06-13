# Student Registration Flutter App

A full-stack Student Registration CRUD application built using Flutter, PHP, and MySQL. The application allows users to register student information, store it in a MySQL database, and retrieve records through PHP APIs.

## Features

* Add new student records
* Store data in MySQL database
* Retrieve and display student information
* PHP REST API integration
* Clean Flutter user interface
* CRUD-based architecture

## Tech Stack

### Frontend

* Flutter
* Dart

### Backend

* PHP

### Database

* MySQL

### Development Tools

* XAMPP
* Android Studio
* VS Code

## Project Structure

```text
student-registration-flutter-app
│
├── lib/                  # Flutter source code
├── android/              # Android configuration
├── ios/                  # iOS configuration
├── student_api/          # PHP backend APIs
├── student_db.sql        # MySQL database schema
├── pubspec.yaml
└── README.md
```

## Database Setup

1. Start Apache and MySQL in XAMPP.
2. Open phpMyAdmin.
3. Create a database named:

```sql
student_db
```

4. Import the provided:

```text
student_db.sql
```

file into MySQL.

## Backend Setup

1. Copy the `student_api` folder into:

```text
xampp/htdocs/
```

2. Start Apache from XAMPP.
3. Verify API endpoints are accessible through localhost.

## Flutter Setup

Install dependencies:

```bash
flutter pub get
```

Run the application:

```bash
flutter run
```

## Screenshots

Add application screenshots inside a `screenshots` folder and reference them here.

Example:

```md
![Home Screen](screenshots/home_screen.png)
![Student List](screenshots/student_list.png)
```

## Learning Outcomes

This project helped me learn:

* Flutter application development
* REST API integration
* PHP backend development
* MySQL database operations
* CRUD application architecture
* Client-server communication

## Author

**Harkirat Singh**

Computer Engineering Student
Thapar Institute of Engineering & Technology

## License

This project is licensed under the MIT License.


## Development Note

This project was built as a learning project with significant guidance from AI-assisted tools. As a beginner in Flutter development at the time of creation, I focused on understanding the workflow, project structure, API integration, database connectivity, and deployment process while implementing the application step by step.

The project reflects my learning journey and practical experience gained through guided development.
