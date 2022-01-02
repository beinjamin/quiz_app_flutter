import 'package:flutter/material.dart';

class CameraPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
      ),
      body: Center(
        child: Text(
          'CameraPage',
          style: TextStyle(fontSize: 22),
        ),
      ),
    );
  }
}
