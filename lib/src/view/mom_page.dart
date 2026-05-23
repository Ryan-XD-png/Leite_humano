import 'package:flutter/material.dart';

class MomPage extends StatefulWidget {
  const MomPage({super.key});

  @override
  State<MomPage> createState() => _MomPageState();
}

class _MomPageState extends State<MomPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: 200,
        child: TextField(

        ),
      ),
    );
  }
}
