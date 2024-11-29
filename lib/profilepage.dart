import 'package:flutter/material.dart';
import 'package:gym_project/loginpage.dart';
import 'userpage.dart';
import 'explorepage.dart';

class ProfilePage extends StatefulWidget {
  final String value;

  ProfilePage({required this.value});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int myIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 200, 213, 211),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'PROFILE',
          style: TextStyle(
            fontFamily: 'Lora',
            fontSize: 25,
            letterSpacing: 2.5,
            color: Color.fromARGB(255, 200, 213, 211),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
            width: 20,
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('images/avatar.png'),
            ),
          ),
          SizedBox(height: 10),
          Text("Username",
              style: TextStyle(
                fontFamily: 'Lora',
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              )),
          //
          SizedBox(height: 10),
          Text(
            "BIO",
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text(
                    'Height',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    '5.8',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    'Weight',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    '65',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Divider(
            height: 30,
            color: Colors.black,
          ),
          SizedBox(height: 20),
          ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Colors.black),
            onPressed: () {},
            child: Text(
              'Edit Profile',
              style: TextStyle(fontSize: 16),
            ),
          ),
          SizedBox(height: 20),
          Column(
            children: [
              Text(
                'Current Best',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5),
              Text(
                'Bench Press: 100 kg',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.black),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginPage()));
                },
                child: Text(
                  'LOGOUT',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
          )
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
