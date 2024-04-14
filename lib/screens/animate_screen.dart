import 'package:flutter/material.dart';
import 'package:nikeanim/data.dart';

class AnimateScreen extends StatefulWidget {
  const AnimateScreen({super.key});

  @override
  State<AnimateScreen> createState() => _AnimateScreenState();
}

class _AnimateScreenState extends State<AnimateScreen> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Stack(
        children: [
          Positioned(
            bottom: 10,
            left: 25,
            right: 25,
            child: Container(
              width: 50,
              height: 60,
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(18)),
              child: const Center(
                child: Text(
                  "Add to list",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: h * .88,
              color: Colors.grey.shade200,
              child: PageView.builder(
                itemCount: snickers.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  final snicker = snickers[index];
                  return Stack(
                    children: [
                      Container(
                        height: h * .5,
                        width: w * 8,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(snicker.image),
                          ),
                        ),
                        child: Text(snicker.name),
                      ),
                      Positioned(
                          bottom: 250,
                          left: 10,
                          right: 10,
                          child: Container(
                            height: 70,
                            width: 300,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                              color: Colors.white,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  width: 70,
                                  height: 50,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(18),
                                      color: Colors.grey.shade200,
                                      image: const DecorationImage(
                                          image: AssetImage(
                                              "assets/images/img1.png"))),
                                ),
                                Container(
                                  width: 70,
                                  height: 50,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(18),
                                      color: Colors.grey.shade200,
                                      image: const DecorationImage(
                                          image: AssetImage(
                                              "assets/images/img1.png"))),
                                ),
                                Container(
                                  width: 70,
                                  height: 50,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(18),
                                      color: Colors.grey.shade200,
                                      image: const DecorationImage(
                                          image: AssetImage(
                                              "assets/images/img1.png"))),
                                ),
                                Container(
                                  width: 70,
                                  height: 50,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(18),
                                      color: Colors.grey.shade200,
                                      image: const DecorationImage(
                                          image: AssetImage(
                                              "assets/images/img1.png"))),
                                ),
                              ],
                            ),
                          )),
                      Positioned(
                        bottom: 110,
                        left: 10,
                        right: 10,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  snicker.name,
                                  style: const TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black),
                                ),
                                Text(
                                  "\$ " + snicker.price,
                                  style: const TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                            Text(
                              snicker.description,
                              style: const TextStyle(
                                  fontSize: 16, color: Colors.black),
                            )
                          ],
                        ),
                      ),
                      Positioned(
                        bottom: 20,
                        left: 10,
                        right: 10,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  border: Border.all(
                                      width: .5, color: Colors.white),
                                  borderRadius: BorderRadius.circular(18)),
                              child: const Center(
                                child: Text(
                                  "28",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                            Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                      width: 1.5, color: Colors.black),
                                  borderRadius: BorderRadius.circular(18)),
                              child: const Center(
                                child: Text(
                                  "37",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                            Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                      width: 1.5, color: Colors.black),
                                  borderRadius: BorderRadius.circular(18)),
                              child: const Center(
                                child: Text(
                                  "39",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                            Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                      width: 1.5, color: Colors.black),
                                  borderRadius: BorderRadius.circular(18)),
                              child: const Center(
                                child: Text(
                                  "41",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  );
                },
              ),
            ),
          ),
          Positioned(
            bottom: 100,
            left: -150 //100
            ,
            child: Container(
              height: 150,
              width: 140,
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.black)),
              child: const Center(child: Text("Box of shoes")),
            ),
          ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 700),
            top: -60
            //75
            ,
            left: 100,
            right: 100,
            child: Container(
              height: 50,
              width: 100,
              decoration: BoxDecoration(
                  border: Border.all(width: 1.5, color: Colors.black)),
              child: const Center(
                child: Text("Cover of shoes"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
