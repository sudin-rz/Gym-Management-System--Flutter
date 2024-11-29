import 'package:flutter/material.dart';
import 'package:gym_project/loginpage.dart';

class Welcomepage extends StatefulWidget {
  const Welcomepage({super.key});

  @override
  State<Welcomepage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<Welcomepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 200, 213, 211),
      body: Column(
        children: [
          const SizedBox(
            height: 80,
          ),
          Container(
            height: 280,
            child: Center(child: Image.asset("images/deergym.png")),
          ),
          Container(
            child: const Padding(
              padding: EdgeInsets.only(top: 5),
              child: Center(
                child: Text(
                  "DEER GYM",
                  style: TextStyle(
                      letterSpacing: 2.5,
                      fontFamily: 'Lora',
                      fontSize: 35,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 80,
            child: Center(child: Image.asset("images/barbelll.png")),
          ),
          Container(
            height: 100,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Center(
                child: const Text(
                  "Your Workout Companion",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Lora',
                      fontSize: 30,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child: Center(
              child: const Text(
                "Workout & Grow",
                style: TextStyle(
                  fontFamily: 'Lora',
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Divider(
            height: 40,
            color: Colors.black,
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
              );
            },
            child: const Text(
              "GET STARTED",
              style: TextStyle(
                color: Color.fromARGB(255, 200, 213, 211),
                fontSize: 20,
              ),
            ),
            style: ElevatedButton.styleFrom(
              primary: Color.fromARGB(255, 18, 18, 17),
              padding: EdgeInsets.fromLTRB(100, 25, 100, 25),
            ),
          )
        ],
      ),
    );
  }
}
