import 'package:flutter/material.dart';
import 'userpage.dart';
import 'profilepage.dart';

class ExplorePage extends StatefulWidget {
  final String value;

  ExplorePage({required this.value});

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  int myIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 200, 213, 211),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'EXPLORE',
          style: TextStyle(
            fontFamily: 'Lora',
            fontSize: 35,
            letterSpacing: 2.5,
            color: Color.fromARGB(255, 200, 213, 211),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: const Column(
        children: [
          SizedBox(
            height: 20,
            width: 20,
          ),

          SizedBox(height: 10),
          Center(
            child: Text("YOU CAN \n EXPLORE \n HERE",
                style: TextStyle(
                  fontFamily: 'Lora',
                  fontSize: 55,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                )),
          ),
          //
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        child: Container(
          height: 56.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => UserPage(value: "Home"),
                    ),
                  );
                },
              ),
              IconButton(
                icon: Icon(
                  Icons.explore,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ExplorePage(value: "Explore"),
                    ),
                  );
                },
              ),
              IconButton(
                icon: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProfilePage(value: "Profile"),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
