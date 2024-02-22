import "package:flutter/material.dart";
import "package:intl/intl.dart";
import "package:menopausal_app/constants.dart";
import "package:menopausal_app/screens/Calender/Calender.dart";
import "package:menopausal_app/screens/Oops/Oops.dart";
import "package:menopausal_app/screens/Profile/Profile.dart";
import "package:menopausal_app/screens/predictData/Predictdata.dart";
import "package:menopausal_app/screens/Stats/Stats.dart";
import "package:menopausal_app/screens/Symptoms/Symptoms.dart";
import "package:menopausal_app/size_config.dart";

class Body extends StatelessWidget {
  const Body({Key? key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: getProportionateScreenHeight(20)),
                    Text(
                      "Hi UserName !!!",
                      style: TextStyle(
                        fontSize: getProportionateScreenWidth(14),
                        color: kPrimaryColor,
                      ),
                    ),
                    SizedBox(height: getProportionateScreenHeight(20)),
                    Center(
                      child: MiniCalendar(),
                    ),
                    SizedBox(height: 20), // Add some space between the WhiteRectangularArea and the new Column
                    GestureDetector(
  onTap: () {
    Navigator.pushNamed(context, Symptoms.routeName);
  },
  child: Container(
    color: Colors.white,
    width: double.infinity,
    child: Row(
      children: [
        Expanded(
          child: Container(
            width: double.infinity,
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Image.asset(
                    "Assets/Images/log.png", // Replace with your image asset
                    height: getProportionateScreenHeight(300), // Adjust the height as needed
                  ),
                ),
                SizedBox(width: 10), // Add some space between the image and the text
                Expanded(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Log your symptoms now",
                        style: TextStyle(
                          fontSize: getProportionateScreenWidth(14),
                          color: kPrimaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10), // Add some space between the text and the button
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, Symptoms.routeName);
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(kPrimaryColor),
                        ),
                        child: Text(
                          "Click here",
                          style: TextStyle(
                            fontSize: getProportionateScreenWidth(14),
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  ),
),

                    SizedBox(height:20),
                    WhiteRectangularArea(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
class WhiteRectangularArea extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // White rectangular area with logo and text
        GestureDetector(
  onTap: () {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Choose an option"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop(); // Close the dialog
                  Navigator.pushNamed(
                    context,
                    Oops.routeName
                  ); // Navigate to Symptoms page
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(kPrimaryColor), // Background color
                ),
                child: Text(
                  "Use existing data",
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(14),
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop(); 
                  Navigator.pushNamed(
                    context,
                    Prediction.routeName
                  );
                  // Handle option 2
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(kPrimaryColor), // Background color
                ),
                child: Text(
                  "Enter new data",
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(14),
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  },
  child: Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(16.0),
    ),
    padding: EdgeInsets.all(16.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Background for the logo
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: babyPink,
          ),
          padding: EdgeInsets.all(8.0),
          child: Image.asset(
            "Assets/Images/smalllogo.png", // Replace with your actual logo path
            height: 50,
          ),
        ),
        SizedBox(width: 16.0),
        // Second part with text
        Text(
          "Check the severity of menopause",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(12),
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
  ),
),

        SizedBox(height: 10.0), // Add space between the white rectangular area and the square boxes
        // Row with two square boxes
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            // First square box
            SquareBox(
              logoPath: "Assets/Images/logo1.png", // Replace with your actual logo path
              text: "Daily Log",
              routeName: '/Symptoms',
            ),
            // Second square box
            SquareBox(
              logoPath: "Assets/Images/logo2.png", // Replace with your actual logo path
              text: "Doctor",
              routeName: '/DoctorList',
            ),
          ],
        ),
        SizedBox(height: 10.0), // Add space between the two rows of square boxes
        // Row with two more square boxes
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            // Third square box
            SquareBox(
              logoPath: "Assets/Images/logo3.png", // Replace with your actual logo path
              text: "Report",
              routeName: '/Report',
            ),
            // Fourth square box
            SquareBox(
              logoPath: "Assets/Images/logo4.png", // Replace with your actual logo path
              text: "Vitals",
              routeName: '/Vitals',
            ),
          ],
        ),
        SizedBox(height: 10.0), // Add space between the two rows of square boxes
        // Row with two more square boxes
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            // Third square box
            SquareBox(
              logoPath: "Assets/Images/logo3.png", // Replace with your actual logo path
              text: "Timeline",
              routeName: '/Timeline',
            ),
            // Fourth square box
            
          ],
        ),

        SizedBox(height: 30.0),
      ],
    );
  }
}

class MiniCalendar extends StatelessWidget {
  @override
 Widget build(BuildContext context) {
    List<DateTime> weekDates = getWeekDates();

    return Table(
      // Remove the border line
      children: [
        TableRow(
          children: List.generate(7, (index) {
            DateTime date = weekDates[index];
            return TableCell(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4.0), // Add padding outside the boxes
                child: Container(
                  decoration: BoxDecoration(
                    color: isToday(date) ? kPrimaryLightColor : Colors.white,
                    borderRadius: BorderRadius.vertical(top: Radius.circular(8.0)),
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric( vertical: 10.0),
                    child: Text(
                      DateFormat('EE').format(date),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: isToday(date) ? Colors.white : Colors.black,
                      ),
                    ),
                    ),
                  ),
                  ),
              ),
            );
          }) // Add space between columns
        ),
        TableRow(
          children: List.generate(7, (index) {
            DateTime date = weekDates[index];
            return TableCell(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4.0), // Add padding outside the boxes
                child: Container(
                  decoration: BoxDecoration(
                    color: isToday(date) ? kPrimaryLightColor : Colors.white,
                    borderRadius: BorderRadius.vertical(bottom: Radius.circular(8.0)),
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric( vertical: 15.0), // Add space between days
                      child: Text(
                        DateFormat('d').format(date),
                        style: TextStyle(
                          color: isToday(date) ? Colors.white : Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            );
          })// Add space between columns
        ),
        
      ],
    );
    
  }

  bool isToday(DateTime date) {
    DateTime today = DateTime.now();
    return date.year == today.year && date.month == today.month && date.day == today.day;
  }

  List<DateTime> getWeekDates() {
    DateTime now = DateTime.now();
    DateTime monday = now.subtract(Duration(days: now.weekday - 1)); // Calculate Monday of the current week

    List<DateTime> weekDates = List.generate(7, (index) => monday.add(Duration(days: index)));
    return weekDates;
  }
}
class SquareBox extends StatelessWidget {
  final String logoPath;
  final String text;
  final String routeName;

  SquareBox({required this.logoPath, required this.text,required this.routeName});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigate to the specified route when tapped
        Navigator.pushNamed(context, routeName);
      },
      child:Container(
      width: getProportionateScreenWidth(150.0), // Adjust the width as needed
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0), // Make the box rounded
      ),
      padding: EdgeInsets.all(getProportionateScreenWidth(8.0)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            logoPath,
            height: getProportionateScreenHeight(100.0), // Adjust the height as needed
          ),
          SizedBox(height: getProportionateScreenHeight(10.0)),
          Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: getProportionateScreenWidth(20.0),
              color: kPrimaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    ),
    );
  }
}