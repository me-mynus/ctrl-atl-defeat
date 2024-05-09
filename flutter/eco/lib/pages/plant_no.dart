import 'package:eco/pages/plant.dart';
import 'package:eco/pages/plant_grow.dart';
import 'package:flutter/material.dart';

class PlantNo extends StatefulWidget {
  const PlantNo({super.key});

  @override
  State<PlantNo> createState() => _PlantNoState();
}

class _PlantNoState extends State<PlantNo> {
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
                height: 10, // Adjust the space at the top
              ),
              Center(
                child: Image(
                  image: AssetImage('images/plant_no.png'),
                ),
              ),
              SizedBox(
                height: 20, // Adjust the space between image and text
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                    children: const <TextSpan>[
                      TextSpan(
                        text: 'Oops!\n',
                        style: TextStyle(
                          color: Color(0xff1D2416),
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: "\nIt looks like recycling slipped by\n",
                        style: TextStyle(
                          color: Color(0xff475651),
                          fontSize: 14,
                        ),
                      ),
                      TextSpan(
                        text: 'this time.',
                        style: TextStyle(
                          color: Color(0xff475651),
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30, // Adjust the space at the bottom
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => PlantGrow(),
                    ),
                  );
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Color(0xff6B8949)), // Background color
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  minimumSize: MaterialStateProperty.all<Size>(Size(178, 45)),
                ),
                child: Text(
                  "Continue",
                  style: TextStyle(
                    color: Color(0xffEAE4C0),
                    fontSize: 16,
                  ),
                ),
              ),
              SizedBox(height: 15),
            ],
          ),
        ),
      ),
    );
  }
}
