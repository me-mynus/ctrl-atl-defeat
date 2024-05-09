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
          ],
        ),
      ),
    );
  }
}
