import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class StudentList extends StatefulWidget {
  const StudentList({super.key});

  @override
  State<StudentList> createState() => _StudentListState();
}

class _StudentListState extends State<StudentList> {

  List students = [];

  Future<void> fetchStudents() async {

    var response = await http.get(
      Uri.parse(
        "http://10.0.2.2/student_api/fetch_students.php",
      ),
    );

    setState(() {
      students = jsonDecode(response.body);
    });
  }

  @override
  void initState() {
    super.initState();
    fetchStudents();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Student Details"),
      ),
      body: ListView.builder(
        itemCount: students.length,
        itemBuilder: (context, index) {

          return Card(
            child: ListTile(
              title: Text(
                students[index]["name"],
              ),
              subtitle: Text(
                "Roll: ${students[index]["roll_no"]}\n"
                "Email: ${students[index]["email"]}\n"
                "CGPA: ${students[index]["cgpa"]}",
              ),
            ),
          );
        },
      ),
    );
  }
}