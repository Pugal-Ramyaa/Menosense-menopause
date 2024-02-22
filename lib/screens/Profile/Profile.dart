import 'package:flutter/material.dart';
import 'package:menopausal_app/constants.dart';
import 'package:menopausal_app/screens/Calender/Calender.dart';
import 'package:menopausal_app/screens/Home/Home.dart';
import 'package:menopausal_app/screens/Profile/components/body.dart';
import 'package:menopausal_app/screens/Stats/Stats.dart';

class Profile extends StatelessWidget {
  static String routeName = "/Profile";
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            // Handle menu icon press
          },
        ),
        title: Text(
          "PROFILE",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          CircleAvatar(
            backgroundImage: AssetImage("Assets/Images/profile_pic.jpg"),
          ),
          SizedBox(width: 16), // Adjust spacing as needed
        ],
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Body(),
          ),
          Container(
            width: double.infinity,
            color: Colors.white,
            child: BottomNavigationBar(
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home, color: Colors.grey),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.calendar_month, color: Colors.grey),
                  label: 'Search',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.notifications, color: Colors.grey),
                  label: 'Notifications',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person, color: kPrimaryColor),
                  label: 'Profile',
                ),
              ],
              selectedItemColor: Colors.grey,
              unselectedItemColor: Colors.grey,
              showSelectedLabels: true,
              showUnselectedLabels: true,
              onTap: (index) {
                // Handle navigation based on the selected tab
                switch (index) {
                  case 0:
                    // Navigate to the home screen
                    Navigator.pushReplacementNamed(context, Home.routeName);
                    break;
                  case 1:
                    // Navigate to the search screen
                    Navigator.pushReplacementNamed(context, Calender.routeName);
                    break;
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
    );
  }
}
