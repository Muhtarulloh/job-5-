import 'package:flutter/material.dart';

void main() {
  runApp(StudentApp());
}

class StudentApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Daftar Mahasiswa'),
        ),
        body: StudentList(),
      ),
    );
  }
}

class Student {
  final String name;
  final String nim;

  Student({required this.name, required this.nim});
}

class StudentList extends StatelessWidget {
  final List<Student> students = [
    Student(name: 'Abdul Faiz', nim: 'STI202102147'),
    Student(name: 'Anggoro Mustika Putra', nim: 'STI202102152'),
    Student(name: 'Muhtarulloh', nim: 'STI202102153'),
    Student(name: 'Ade Setiawan', nim: 'ST202102159'),
    Student(name: 'Sulistiyo', nim: 'STI202102161'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: ListView.builder(
        itemCount: students.length,
        itemBuilder: (context, index) {
          final student = students[index];
          final isHighlighted = student.name == 'Muhtarulloh' && student.nim == 'STI202102153';
          return Container(
            color: isHighlighted ? Colors.yellow : Colors.transparent,
            child: ListTile(
              title: Text(
                student.name,
                style: TextStyle(
                  color: isHighlighted ? Colors.black : Colors.white,
                ),
              ),
              subtitle: Text(student.nim),
            ),
          );
        },
      ),
    );
  }
}
