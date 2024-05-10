import 'package:eco/pages/camera.dart';
import 'package:eco/pages/plant.dart';
import 'package:eco/pages/upscaling.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  int _currentIndex = 0;

  // Function to navigate based on the index
  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });

    // Navigate to the correct page
    switch (index) {
      case 0:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomeScreen()));
        break;
      case 1:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Camera()));

        break;
      case 2:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Plant()));
        break;
      default:
        break;
    }
  }

  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color(0xffEAE4C0),
      body: ListView(
        //  crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
              color: const Color(0xff6B8949),
              image: DecorationImage(
                image: AssetImage('images/background.png'), // Your image
                fit: BoxFit.cover, // Ensures the image covers the container
                // Adjusts the image's transparency
              ),
            ),
            padding: const EdgeInsets.only(
                left: 20,
                bottom: 20,
                right: 20,
                top: 20), // Padding inside the container
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    RichText(
                      text: const TextSpan(
                        children: [
                          TextSpan(
                              text: "RECYCLE ",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 32,
                                fontWeight: FontWeight.bold,
                              )),
                          TextSpan(
                              text: "MORE \n",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 32,
                                fontWeight: FontWeight.bold,
                              )),
                          TextSpan(
                              text: "WITH ",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 32,
                                fontWeight: FontWeight.bold,
                              )),
                          TextSpan(
                              text: "US \n",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 32,
                                fontWeight: FontWeight.bold,
                              )),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 70), // Optional padding
                      child: Row(
                        mainAxisAlignment:
                            MainAxisAlignment.end, // Aligns items to the right
                        children: [],
                      ),
                    ),
                  ],
                ),

                // Spacing between text and text field
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xffEAE4C0),
                    prefixIcon: Icon(Icons.search),

                    hintText: "Search..", // Placeholder text
                    border: InputBorder.none, // Removing default border
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Row(
              children: [
                Text(
                  'Explore Articles ',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                SizedBox(
                  width: 200,
                ),
                Text('See all', style: TextStyle(color: Color(0xffA7B779))),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 12.0, right: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => Upcycling(),
                          ),
                        );
                      },
                      child: Container(
                        width: 180,
                        height: 180,
                        child: Image.asset(
                          'images/1.png', // Path to your image
                          fit: BoxFit.contain, // Fills the available space
                          width: double
                              .infinity, // Ensures the image stretches horizontally
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xffA7B779),
                          borderRadius: BorderRadius.circular(
                              10), // Border radius for the text field
                        ),
                      ),
                    ),
                    Container(
                      width: 180,
                      height: 180,
                      child: Image.asset(
                        'images/2.png', // Path to your image
                        fit: BoxFit.contain, // Fills the available space
                        width: double
                            .infinity, // Ensures the image stretches horizontally
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xffA7B779),
                        borderRadius: BorderRadius.circular(
                            10), // Border radius for the text field
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Upcycling()));
                      },
                      child: Text('Upcycling',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ))),
                  TextButton(
                      onPressed: null,
                      child: Text('Composting',
                          style: TextStyle(color: Colors.black, fontSize: 18)))
                ],
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 15.0,
                    ),
                    child: RichText(
                      text: const TextSpan(
                        children: [
                          TextSpan(
                              text: "Your Plant Growth\n",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              )),
                          TextSpan(
                              text: "It's flourishing. You're doing great \n",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                // fontWeight: FontWeight.bold,
                              )),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  SizedBox(
                    width: 180,
                  ),
                  Text('See all', style: TextStyle(color: Color(0xffA7B779))),
                ],
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Plant(),
                  ));
                },
                child: Card(
                  margin: EdgeInsets.only(left: 15, right: 15, top: 5),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // Image fitted to the card with a fixed height
                      Container(
                        height: 200, // Fixed height for the card
                        child: Image.asset(
                          'images/pot.png', // Path to your image
                          fit: BoxFit.cover, // Fills the available space
                          width: double
                              .infinity, // Ensures the image stretches horizontally
                        ),
                      ),
                      // ListTile(
                      //   leading: Icon(Icons.image),
                      //   title: Text('Card with Fitted Image'),
                      //   subtitle: Text('This card contains an image that fills the space.'),
                      // ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15, top: 10),
                    child: RichText(
                      text: const TextSpan(
                        children: [
                          TextSpan(
                              text: "Recycling Tips \n",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              )),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),

              // Modified card with text above the image
              Card(
                margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                elevation: 4, // Add some shadow for depth
                child: Stack(
                  children: [
                    // The background image
                    Container(
                      height: 200, // Fixed height for the card
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage('images/cards.png'), // Your image
                          fit:
                              BoxFit.cover, // Ensures the image fills the space
                          opacity: 0.8, // Adjusts image transparency
                        ),
                      ),
                    ),
                    // Text positioned above the image
                    Positioned(
                      left: 65, // Distance from the left
                      top: 20, // Distance from the top
                      child: Text(
                        'Flatten cardboard boxes \n and crush plastic bottles \n to save space in your \n recycling bin.', // The text to display
                        style: TextStyle(
                          color: Colors.white, // White text for contrast
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onTabTapped,
        showSelectedLabels: false, // Hides label for selected items
        showUnselectedLabels: false,
        backgroundColor: Color(0xffEAE4C0),
        elevation: 20,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Image.asset(
                'images/augument.png', // Path to your image asset
                width: 24,
                height: 24,
              ),
              label: 'Camera'),
          BottomNavigationBarItem(
              icon: Image.asset(
                'images/leaf.png', // Path to your image asset
                width: 24,
                height: 24,
              ),
              label: 'Tree'),
        ],
      ),
    ));
  }
}
