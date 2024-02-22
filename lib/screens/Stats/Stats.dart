import 'package:flutter/material.dart';
import 'package:menopausal_app/constants.dart';
import 'package:menopausal_app/screens/Calender/Calender.dart';
import 'package:menopausal_app/screens/Profile/Profile.dart';
import 'components/Months.dart';
import 'components/Days.dart';
import 'package:menopausal_app/screens/Home/Home.dart';
import 'components/Weeks.dart';

class Stats extends StatefulWidget {
  static String routeName = "/Stats";

  @override
  _StatsState createState() => _StatsState();
}

class _StatsState extends State<Stats> {
  static List<String> data = [
    "Sleeping problems",
    "Hot flashes",
    "Night Sweats",
    "Chills",
    "Fatigue",
    "Headache",
    "Vaginal Dryness",
    "Mood Swings",
  ];

  int currentIndex = 0;

  void goToNext() {
    setState(() {
      currentIndex = (currentIndex + 1) % data.length;
    });
  }

  void goToPrevious() {
    setState(() {
      currentIndex = (currentIndex - 1 + data.length) % data.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.menu), // Add your menu icon here
            onPressed: () {
              // Handle menu icon press
            },
          ),
          title: Text(
            "Statistics",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          actions: [
            CircleAvatar(
              backgroundImage: AssetImage("Assets/Images/profile_pic.jpg"),
            ),
            SizedBox(width: 16), // Adjust spacing as needed
          ],
          centerTitle: true,
          bottom: TabBar(
            indicatorColor: kPrimaryColor,
            tabs: [
              Tab(text: 'Days'),
              Tab(text: 'Weeks'),
              Tab(text: 'Months'),
            ],
          ),
        ),
        
        body: Column(
          children: [
            Expanded(
              child: TabBarView(
                children: [
                  Days(),
                  Weeks(),
                  Months(),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    goToPrevious();
                    // Handle back button press for the ElevatedButton
                  },
                ),
                TextButton(
                  onPressed: () {
                    // Handle ElevatedButton press
                  },
                  style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all(Size(200, 50)), // Set fixed width and height
                    backgroundColor: MaterialStateProperty.all(kPrimaryLightColor),
                     // Set background color to red
                  ),
                  child: Text(
                    data[currentIndex],
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold, // Set font color to white
                      // You can add more text styling properties here if needed
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.arrow_forward),
                  onPressed: () {
                    goToNext();
                    // Handle next button press for the ElevatedButton
                  },
                ),
              ],
            ),
            SizedBox(height: 70),
            Container(
              width: double.infinity,
              color: Colors.black, // Change color as needed
              child: BottomNavigationBar(
                items: [
                  BottomNavigationBarItem(
                  icon: Icon(Icons.home,
                  color:Colors.grey ),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.calendar_month,
                  color: Colors.grey),
                  label: 'Search',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.notifications,
                  color: kPrimaryColor),
                  label: 'Notifications',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person,
                  color: Colors.grey),
                  label: 'Profile',
                ),
                ],
                // Change color as needed
                selectedItemColor: Colors.grey,
                unselectedItemColor: Colors.grey,
                showSelectedLabels: true,
                showUnselectedLabels: true,
                onTap: (index) {
                  switch (index) {
                  case 0:
                    // Navigate to the home screen
                    Navigator.pushReplacementNamed(context, Home.routeName);
                    break;
                  case 1:
                    // Navigate to the search screen
                    Navigator.pushReplacementNamed(context, Calender.routeName);
                  case 2:
                    Navigator.pushReplacementNamed(context, Stats.routeName);
                    break;
                  case 3:
                    Navigator.pushReplacementNamed(context, Profile.routeName);
                    break;
                }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
