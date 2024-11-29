import 'package:flutter/material.dart';
// import 'package:gym_project/profilepage.dart';
import 'package:gym_project/userpage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  String value = '';
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 200, 213, 211),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 110, 20, 0),
          child: Form(
            key: _formkey,
            child: Column(
              children: [
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
                            fontFamily: 'Lora',
                            fontSize: 35,
                            letterSpacing: 2.5,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Card(
                  color: Color.fromARGB(255, 18, 18, 17),
                  child: TextFormField(
                    style: TextStyle(color: Color.fromARGB(255, 200, 213, 211)),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Enter valid username";
                      }
                      return null;
                    },
                    onChanged: (text) {
                      value = text;
                    },
                    controller: username,
                    keyboardType: TextInputType.text,
                    decoration: const InputDecoration(
                      hintStyle:
                          TextStyle(color: Color.fromARGB(255, 200, 213, 211)),
                      labelStyle:
                          TextStyle(color: Color.fromARGB(255, 200, 213, 211)),
                      hintText: "Enter your username",
                      labelText: "Username",
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Card(
                  color: Color.fromARGB(255, 18, 18, 17),
                  child: TextFormField(
                    style: TextStyle(color: Color.fromARGB(255, 200, 213, 211)),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Enter valid password";
                      }
                      return null;
                    },
                    controller: password,
                    keyboardType: TextInputType.text,
                    decoration: const InputDecoration(
                      hintStyle:
                          TextStyle(color: Color.fromARGB(255, 200, 213, 211)),
                      labelStyle:
                          TextStyle(color: Color.fromARGB(255, 200, 213, 211)),
                      hintText: "Enter your password",
                      labelText: "Password",
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    // Navigator.pop(context);
                    if (_formkey.currentState!.validate()) {
                      setState(
                        () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text("Logged in Successfully"),
                            ),
                          );
                        },
                      );
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => UserPage(value: username.text),
                        ),
                      );
                    }
                  },
                  child: Text(
                    "LOGIN",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 18, 18, 17),
                    padding: EdgeInsets.fromLTRB(100, 25, 100, 25),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(
                  height: 40,
                  color: Colors.black,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Container(
                          child: Text(
                            "Create New Account",
                            style: TextStyle(
                              fontFamily: "Oxygen",
                              fontSize: 16,
                              decoration: TextDecoration.underline,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: Text(
                          "|",
                          style: TextStyle(
                            fontFamily: "Oxygen",
                            fontSize: 16,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Container(
                          child: Text(
                            "Forgot Password",
                            style: TextStyle(
                              fontFamily: "Oxygen",
                              fontSize: 16,
                              decoration: TextDecoration.underline,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
