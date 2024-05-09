import 'package:flutter/material.dart';

class Upcycling extends StatefulWidget {
  const Upcycling({super.key});

  @override
  State<Upcycling> createState() => _UpcyclingState();
}

class _UpcyclingState extends State<Upcycling> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: const Color(0xffEAE4C0),
          body: ListView(children: [
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                    color: const Color(0xff6B8949),
                    image: DecorationImage(
                      image: AssetImage('images/upcycling.png'), // Your image
                      fit: BoxFit
                          .cover, // Ensures the image covers the container
                      // Adjusts the image's transparency
                    ),
                  ),
                  padding: const EdgeInsets.only(
                    left: 50,
                    right: 20,
                    top: 250,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, top: 8),
                  child: Row(
                    children: [
                      RichText(
                        text: const TextSpan(
                          children: [
                            TextSpan(
                                text: "Upcycling 101: ",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                )),
                            TextSpan(
                                text: "Transforming Waste \n",
                                style: TextStyle(
                                  color: Color(0xff6B8949),
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                )),
                            TextSpan(
                                text: "into Wonder \n",
                                style: TextStyle(
                                  color: Color(0xff6B8949),
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                )),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8),
                  child: Text(
                      "In the world of upcycling, everyday objects are the building blocks of creative innovation. From empty jars to old clothes, there's no shortage of potential waiting to be unlocked. Here are some tips to help you upcycle common items and turn them into unique treasures:",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      )),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 20),
                      child: Text("Jars and Bottles",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20),
                  child: Text(
                      "Empty glass jars and bottles are versatile upcycling champions. Turn them into charming candle holders by adding a bit of paint or wrapping them in decorative paper. Alternatively, transform them into stylish vases by adorning them with twine, beads, or fabric scraps.",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(50)),
                    height: 200, // Fixed height for the card
                    child: Image.asset(
                      'images/jars.png', // Path to your image
                      fit: BoxFit.cover, // Fills the available space
                      width: double
                          .infinity, // Ensures the image stretches horizontally
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 20),
                      child: Text("New Life Old Clothes",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20),
                  child: Text(
                      "Don't toss out those worn-out jeans or t-shirts just yet! Cut them into strips and weave them into colorful rag rugs or braided baskets. Old sweaters can be repurposed into cozy pillow covers or trendy handbags with a few simple stitches.",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    height: 180, // Fixed height for the card
                    child: Image.asset(
                      'images/clothes.png', // Path to your image
                      fit: BoxFit.cover, // Fills the available space
                      width: double
                          .infinity, // Ensures the image stretches horizontally
                    ),
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(50)),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 20),
                      child: Text("Textile Scraps",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20),
                  child: Text(
                      "Leftover fabric scraps can be upcycled into a wide range of projects, from patchwork quilts to DIY cloth napkins. Get creative with embroidery, appliqué, or fabric painting to add unique embellishments to your creations.",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    height: 180, // Fixed height for the card
                    child: Image.asset(
                      'images/textile.png', // Path to your image
                      fit: BoxFit.cover, // Fills the available space
                      width: double
                          .infinity, // Ensures the image stretches horizontally
                    ),
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(100)),
                  ),
                ),
                SizedBox(
                  height: 10,
                )
              ],
            )
          ])),
    );
  }
}
