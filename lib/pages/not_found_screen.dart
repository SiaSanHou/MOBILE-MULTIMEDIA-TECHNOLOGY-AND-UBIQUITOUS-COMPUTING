import 'package:flutter/material.dart';

class NotfoundScreen extends StatelessWidget {
  const NotfoundScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Not Found"),
      ),
      body: Center(
        child: Container(),
      ),
    );
  }
}