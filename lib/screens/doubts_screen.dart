import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DoubtScreen extends ConsumerStatefulWidget {
  const DoubtScreen({Key? key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _DoubtScreenState();
}

class _DoubtScreenState extends ConsumerState<DoubtScreen> {
  final doubtController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    doubtController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(),
          ),
          Container(
            padding: EdgeInsets.all(16.0),
            color: Colors.grey[200],
            child: Align(
              alignment: Alignment.bottomCenter,
              child: TextField(
                controller: doubtController,
                decoration: const InputDecoration(
                  hintStyle: TextStyle(color: Color.fromRGBO(0, 0, 0, 1)),
                  hintText: 'Type here...',
                  filled: true,
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
