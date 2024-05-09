import 'package:eco/pages/home_screen.dart';
import 'package:eco/pages/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class AugumentedReality extends StatefulWidget {
  const AugumentedReality({Key? key});

  @override
  State<AugumentedReality> createState() => _AugumentedRealityState();
}

class _AugumentedRealityState extends State<AugumentedReality> {
  final controller = PageController();
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEAE4C0),
      body: Container(
        padding: const EdgeInsets.only(bottom: 80),
        child: PageView(
          controller: controller,
          children: [
            Column(
              children: [
                SizedBox(height: 220),
                Center(
                  child: SizedBox(
                    height: 160, // Adjust height as needed
                    width: 160, // Adjust width as needed
                    child: Image.asset("images/augument.png"),
                  ),
                ),
                SizedBox(height: 50),
                Text(
                  "AUGMENTED",
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "REALITY",
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff6B8949),
                  ),
                ),
                SizedBox(height: 30),
                Text(
                  "Tap this icon to open the AR",
                  style: TextStyle(
                    fontSize: 22,
                    color: Color(0xff1D2416),
                  ),
                ),
                Text(
                  "camera and start scanning for",
                  style: TextStyle(
                    fontSize: 22,
                    color: Color(0xff1D2416),
                  ),
                ),
                Text(
                  "recycling guidance and tips on",
                  style: TextStyle(
                    fontSize: 22,
                    color: Color(0xff1D2416),
                  ),
                ),
                Text(
                  "the go!",
                  style: TextStyle(
                    fontSize: 22,
                    color: Color(0xff1D2416),
                  ),
                ),
                SizedBox(height: 60),
                ElevatedButton(
                  onPressed: () {
                    controller.nextPage(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeInOut);
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Color(0xff6B8949)), // Background color
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    minimumSize: MaterialStateProperty.all<Size>(
                        Size(200, 60)), // Bigger size
                  ),
                  child: Text(
                    "Next",
                    style: TextStyle(
                      color: Color(0xffEAE4C0),
                      fontSize: 24,
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                SizedBox(height: 220),
                Center(
                  child: SizedBox(
                    height: 150, // Adjust height as needed
                    width: 110, // Adjust width as needed
                    child: Image.asset("images/trash.png"),
                  ),
                ),
                SizedBox(height: 50),
                Text(
                  "RECYCLING",
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "TIPS",
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff6B8949),
                  ),
                ),
                SizedBox(height: 30),
                Text(
                  "Explore our comprehensive",
                  style: TextStyle(
                    fontSize: 22,
                    color: Color(0xff1D2416),
                  ),
                ),
                Text(
                  "guidee to elevate your eco-",
                  style: TextStyle(
                    fontSize: 22,
                    color: Color(0xff1D2416),
                  ),
                ),
                Text(
                  "game and make a bigger",
                  style: TextStyle(
                    fontSize: 22,
                    color: Color(0xff1D2416),
                  ),
                ),
                Text(
                  "impact!",
                  style: TextStyle(
                    fontSize: 22,
                    color: Color(0xff1D2416),
                  ),
                ),
                SizedBox(height: 60),
                ElevatedButton(
                  onPressed: () {
                    controller.nextPage(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeInOut);
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Color(0xff6B8949)), // Background color
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    minimumSize: MaterialStateProperty.all<Size>(
                        Size(200, 60)), // Bigger size
                  ),
                  child: Text(
                    "Next",
                    style: TextStyle(
                      color: Color(0xffEAE4C0),
                      fontSize: 24,
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                SizedBox(height: 220),
                Center(
                  child: SizedBox(
                    height: 160, // Adjust height as needed
                    width: 180, // Adjust width as needed
                    child: Image.asset("images/plant.png"),
                  ),
                ),
                SizedBox(height: 50),
                Text(
                  "RECYCLE",
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "& BLOOM",
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff6B8949),
                  ),
                ),
                SizedBox(height: 30),
                Text(
                  "Earn points towards growing a",
                  style: TextStyle(
                    fontSize: 22,
                    color: Color(0xff1D2416),
                  ),
                ),
                Text(
                  "virtual plant with each",
                  style: TextStyle(
                    fontSize: 22,
                    color: Color(0xff1D2416),
                  ),
                ),
                Text(
                  "recycled item, witnessing its",
                  style: TextStyle(
                    fontSize: 22,
                    color: Color(0xff1D2416),
                  ),
                ),
                Text(
                  "growth as you recycle more.",
                  style: TextStyle(
                    fontSize: 22,
                    color: Color(0xff1D2416),
                  ),
                ),
                SizedBox(height: 60),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => HomeScreen(),
                    ));
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Color(0xff6B8949)), // Background color
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    minimumSize: MaterialStateProperty.all<Size>(
                        Size(200, 60)), // Bigger size
                  ),
                  child: Text(
                    "Start",
                    style: TextStyle(
                      color: Color(0xffEAE4C0),
                      fontSize: 24,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomSheet: Container(
        color: Color(0xffEAE4C0),
        height: 165,
        child: SmoothPageIndicator(
          controller: controller,
          count: 3,
          effect: SlideEffect(
            dotColor: Color(0xff6B8949),
            activeDotColor: Color(0xff1D2416),
          ),
        ),
      ),
    );
  }
}
