import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'student_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StudentForm(),
    );
  }
}

class StudentForm extends StatefulWidget {
  const StudentForm({super.key});

  @override
  State<StudentForm> createState() => _StudentFormState();
}

class _StudentFormState extends State<StudentForm> {
  TextEditingController nameController = TextEditingController();
  TextEditingController rollController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController cgpaController = TextEditingController();

  Future<void> saveStudent() async {
    try {
      var response = await http.post(
        Uri.parse(
          "http://10.0.2.2/student_api/insert_student.php",
        ),
        body: {
          "name": nameController.text,
          "roll_no": rollController.text,
          "email": emailController.text,
          "cgpa": cgpaController.text,
        },
      );

      print("Status Code: ${response.statusCode}");
      print("Response: ${response.body}");

      if (response.statusCode == 200) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("Student Saved"),
          ),
        );

        nameController.clear();
        rollController.clear();
        emailController.clear();
        cgpaController.clear();
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              "Server Error: ${response.statusCode}",
            ),
          ),
        );
      }
    } catch (e) {
      print("ERROR: $e");

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("ERROR: $e"),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Student Registration"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: const InputDecoration(
                labelText: "Name",
              ),
            ),

            const SizedBox(height: 10),

            TextField(
              controller: rollController,
              decoration: const InputDecoration(
                labelText: "Roll No",
              ),
            ),

            const SizedBox(height: 10),

            TextField(
              controller: emailController,
              decoration: const InputDecoration(
                labelText: "Email",
              ),
            ),

            const SizedBox(height: 10),

            TextField(
              controller: cgpaController,
              decoration: const InputDecoration(
                labelText: "CGPA",
              ),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: saveStudent,
              child: const Text("Submit"),
            ),

            const SizedBox(height: 10),

            ElevatedButton(
              onPressed: () {
            
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        const StudentList(),
                  ),
                );
            
              },
              child: const Text("Show Details"),
            ),
          ],
        ),
      ),
    );
  }
}