import 'package:flutter/material.dart';
import 'profilepage.dart';
import 'explorepage.dart';
import 'chestpage.dart';

class UserPage extends StatefulWidget {
  final String? value;

  UserPage({Key? key, required this.value}) : super(key: key);

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  int myIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 200, 213, 211),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "DEER GYM",
          style: TextStyle(
            fontFamily: 'Lora',
            fontSize: 35,
            letterSpacing: 2.5,
            color: Color.fromARGB(255, 200, 213, 211),
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
        actions: [
          PopupMenuButton(
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(
                  child: Text('Menu Item 1'),
                  value: 'item1',
                ),
                PopupMenuItem(
                  child: Text('Menu Item 2'),
                  value: 'item2',
                ),
                // Add more menu items as needed
              ];
            },
            onSelected: (value) {
              // Handle the selected menu item
              if (value == 'item1') {
                // Handle item 1
              } else if (value == 'item2') {
                // Handle item 2
              }
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              child: const DrawerHeader(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/deergym.png"),
                    fit: BoxFit.cover,
                  ),
                  color: Color.fromARGB(255, 200, 213, 211),
                ),
                child: Column(),
              ),
            ),
            ListTile(
              title: Text('Menu Item 1'),
              onTap: () {
                // Handle menu item 1
              },
            ),
            ListTile(
              title: Text('Menu Item 2'),
              onTap: () {
                // Handle menu item 2
              },
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Welcome, \n \t\t ${widget.value}!",
                    style: const TextStyle(
                      height: 1.5,
                      fontFamily: 'Lora',
                      fontSize: 35,
                      letterSpacing: 2.5,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  child: Center(
                    child: Image.asset(
                      "images/userdeerr.png",
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Choose Your Workout Here",
                    style: TextStyle(
                      fontFamily: 'Lora',
                      fontSize: 21,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Divider(
                  height: 5,
                  color: Colors.black,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    alignment: Alignment.center,
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 100,
                                        child: Center(
                                          child: InkWell(
                                            onTap: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          ChestPage()));
                                            },
                                            child: Image.asset(
                                              'images/chest.png',
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                      const Text(
                                        "CHEST",
                                        style: TextStyle(
                                          height: 1.5,
                                          fontFamily: 'Lora',
                                          fontSize: 20,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 100,
                                        child: Center(
                                          child: InkWell(
                                            onTap: () {},
                                            child: Image.asset(
                                              'images/arms.png',
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                      const Text(
                                        "ARMS",
                                        style: TextStyle(
                                          height: 1.5,
                                          fontFamily: 'Lora',
                                          fontSize: 20,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 100,
                                        child: Center(
                                          child: InkWell(
                                            onTap: () {},
                                            child: Image.asset(
                                              'images/back.png',
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                      const Text(
                                        "BACK",
                                        style: TextStyle(
                                          height: 1.5,
                                          fontFamily: 'Lora',
                                          fontSize: 20,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 100,
                                        child: Center(
                                          child: InkWell(
                                            onTap: () {},
                                            child: Image.asset(
                                              'images/shoulder.png',
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                      const Text(
                                        "SHOULDER",
                                        style: TextStyle(
                                          height: 1.5,
                                          fontFamily: 'Lora',
                                          fontSize: 20,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 100,
                                        child: Center(
                                          child: InkWell(
                                            onTap: () {},
                                            child: Image.asset(
                                              'images/leg.png',
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                      const Text(
                                        "LEG",
                                        style: TextStyle(
                                          height: 1.5,
                                          fontFamily: 'Lora',
                                          fontSize: 20,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 100,
                                        child: Center(
                                          child: InkWell(
                                            onTap: () {},
                                            child: Image.asset(
                                              'images/abs.png',
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                      const Text(
                                        "ABS",
                                        style: TextStyle(
                                          height: 1.5,
                                          fontFamily: 'Lora',
                                          fontSize: 20,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          //-----BOTTOM NAV BAR

          BottomNavigationBar(
            backgroundColor: Colors.black,
            onTap: (index) {
              setState(() {
                myIndex = index;
              });

              // Navigate to corresponding pages
              switch (index) {
                case 0:
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => UserPage(value: "Home")),
                  );
                  break;
                case 1:
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ExplorePage(
                              value: "Explore",
                            )),
                  );
                  break;
                case 2:
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ProfilePage(value: "profile")),
                  );
                  break;
              }
            },
            currentIndex: myIndex,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Color.fromARGB(255, 200, 213, 211),
                ),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.explore,
                  color: Color.fromARGB(255, 200, 213, 211),
                ),
                label: "Explore",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  color: Color.fromARGB(255, 200, 213, 211),
                ),
                label: "Profile",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
