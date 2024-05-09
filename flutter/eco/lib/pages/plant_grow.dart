import 'package:flutter/material.dart';

class PlantGrow extends StatefulWidget {
  const PlantGrow({Key? key}) : super(key: key);

  @override
  State<PlantGrow> createState() => PlantGrowState();
}

class PlantGrowState extends State<PlantGrow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFD865),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Here's how your plant",
              style: TextStyle(
                  color: Color(0xff59533D),
                  fontSize: 32,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "is doing.",
              style: TextStyle(
                  color: Color(0xff59533D),
                  fontSize: 32,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "You're doing great!",
              style: TextStyle(
                color: Color(0xff59533D),
                fontSize: 24,
              ),
            ),
            SizedBox(height: 20),
            Stack(
              alignment: Alignment.center,
              children: [
                // Background color circle
                Container(
                  width: 310,
                  height: 310,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xffD2CDAE),
                  ),
                ),
                // Inner images
                CircleAvatar(
                  radius: 155,
                  backgroundColor: Color(0xffD2CDAE),
                  child: CircleAvatar(
                    radius: 155,
                    backgroundImage: AssetImage('images/slider.png'),
                    backgroundColor: Colors.transparent,
                    child: CircleAvatar(
                      radius: 140,
                      backgroundColor: Color(0xffEAE4C0),
                      backgroundImage: AssetImage('images/good_plant.png'),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              'Lvl 3',
              style: TextStyle(
                color: Color(0xffEE8C00),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Flourishing Follage',
              style: TextStyle(
                color: Color(0xff59533D),
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
      bottomSheet: Container(
        color: Color(0xffEAE4C0),
        height: 185,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage("images/vine.png"),
            ),
            RichText(
              textAlign: TextAlign.left, // Adjust text alignment as needed
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Reach ', // Normal text
                    style: TextStyle(
                      color: Color(0xff59533D),
                      fontSize: 20,
                    ),
                  ),
                  TextSpan(
                    text: 'Lvl 4', // Text with different color and bold
                    style: TextStyle(
                      color: Colors.red, // Different color for emphasis
                      fontWeight: FontWeight.bold, // Make it bold
                      fontSize: 20, // Ensure same font size for consistency
                    ),
                  ),
                  TextSpan(
                    text:
                        ' to unlock \n Verdant Vine', // Normal text with new line
                    style: TextStyle(
                      color: Color(0xff59533D),
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
