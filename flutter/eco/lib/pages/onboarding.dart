import 'package:eco/pages/augumented_reality.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff6B8949),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 100,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "SEE ",
                          style: TextStyle(
                            fontSize: 47,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "WASTE",
                          style: TextStyle(
                            fontSize: 47,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "DIFFERENTLY",
                          style: TextStyle(
                            fontSize: 47,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "!",
                          style: TextStyle(
                            fontSize: 47,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "Your AR Companion for",
                      style: TextStyle(
                        fontSize: 28,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "Eco-Friendly Living",
                      style: TextStyle(
                        fontSize: 28,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 70,
              ),
              Padding(
                padding: EdgeInsets.only(top: 20, left: 20),
                child: SizedBox(
                  height: 250,
                  width: 250,
                  child: Image(
                    image: AssetImage('images/bottle.png'),
                  ),
                ),
              ),
              SizedBox(
                  height:
                      150), // Added SizedBox to create space below the image
              Padding(
                padding: const EdgeInsets.only(left: 37.0, right: 30),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => AugumentedReality(),
                    ));
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 16,
                        horizontal: 16), // Adjust horizontal padding
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Get started",
                          style: TextStyle(
                            color: Color(0xff1D2416),
                            fontSize: 24,
                          ),
                        ),
                        Icon(
                          Icons.arrow_right_alt,
                          size: 45,
                          color: Color(0xff1D2416),
                        ),
                      ],
                    ),
                  ),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Color(0xffEAE4C0)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
