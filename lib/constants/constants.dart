import 'package:e_learning_app/home/body_screen.dart';
import 'package:e_learning_app/screens/doubts_screen.dart';
import 'package:e_learning_app/screens/teacher_profile_screen.dart';
import 'package:flutter/animation.dart';

import '../screens/add_notes_screen.dart';

class Constants {
  static const tabsWidget = [
    BodyScreen(),
    AddNotesScreen(),
    DoubtScreen(),
    TeacherProfileScreen(),
  ];
}

const kpink = Color(0xFFff6374);
const kblue = Color(0xFF71b8ff);
const kpurple = Color(0xFF9ba0fc);
const korange = Color(0xFFffaa5b);
