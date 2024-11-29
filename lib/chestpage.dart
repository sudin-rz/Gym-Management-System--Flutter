import 'package:flutter/material.dart';
// import 'userpage.dart';

class ChestPage extends StatefulWidget {
  const ChestPage({super.key});

  @override
  State<ChestPage> createState() => _ChestPageState();
}

class _ChestPageState extends State<ChestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 200, 213, 211),
      appBar: AppBar(
        title: Text("Chest Page"),
      ),
      body: Column(
        children: [
          Text("chest"),
          ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Chest"))
        ],
      ),
    );
  }
}
