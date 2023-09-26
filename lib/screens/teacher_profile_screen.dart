import 'package:flutter/cupertino.dart';

class TeacherProfileScreen extends StatefulWidget {
  const TeacherProfileScreen({Key? key});

  @override
  State<TeacherProfileScreen> createState() => _TeacherProfileScreenState();
}

class _TeacherProfileScreenState extends State<TeacherProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(child: Center(child: Text('Teacher Profile')));
  }
}
