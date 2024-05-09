import 'package:eco/pages/home_screen.dart';
import 'package:eco/pages/onboarding.dart';
import 'package:eco/pages/plant_no.dart';
import 'package:eco/pages/plant_yes.dart';
import 'package:flutter/material.dart';

class Plant extends StatefulWidget {
  const Plant({Key? key}) : super(key: key);

  @override
  State<Plant> createState() => _PlantState();
}

class _PlantState extends State<Plant> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFD865),
      body: Center(
        child: Container(
          height: 440,
          width: 300,
          decoration: BoxDecoration(
            color: Color(0xffEAE4C0),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                spreadRadius: 1,
                blurRadius: 1,
                offset: Offset(5, 5),
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 30, // Adjust the space at the top
              ),
              Center(
                child: Image(
                  image: AssetImage('images/question.png'),
                ),
              ),
              SizedBox(
                height: 30, // Adjust the space between image and text
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                    children: const <TextSpan>[
                      TextSpan(
                        text: 'Did you ',
                        style: TextStyle(
                          color: Color(0xff1D2416),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: 'learn\n',
                        style: TextStyle(
                          color: Color(0xffE49B31),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: 'anything new ',
                        style: TextStyle(
                          color: Color(0xffE49B31),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: 'about\n',
                        style: TextStyle(
                          color: Color(0xff1D2416),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: 'recycling recently or\n',
                        style: TextStyle(
                          color: Color(0xff1D2416),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: 'had the chance to\n',
                        style: TextStyle(
                          color: Color(0xff1D2416),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: 'recycle today',
                        style: TextStyle(
                          color: Color(0xffE49B31),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: '?\n',
                        style: TextStyle(
                          color: Color(0xff1D2416),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10, // Adjust the space at the bottom
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      icon: const Icon(Icons.check),
                      color: Color(0xff6B8949),
                      iconSize: 40,
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => PlantYes(),
                        ));
                      },
                    ),
                    IconButton(
                      icon: const Icon(Icons.clear),
                      color: Color(0xffC57400),
                      iconSize: 40,
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => PlantNo(),
                        ));
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10)
            ],
          ),
        ),
      ),
    );
  }
}
