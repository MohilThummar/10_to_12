import 'package:flutter/material.dart';
import 'package:ten_to_twelve/common/common_widget/app_food_items.dart';

class FigmaScreenFour extends StatefulWidget {
  const FigmaScreenFour({super.key});

  @override
  State<FigmaScreenFour> createState() => _FigmaScreenFourState();
}

class _FigmaScreenFourState extends State<FigmaScreenFour> {
  List<String> listData = [
    "Snacks",
    "Pizza",
    "Biryani",
    "Burgers",
    "Chinese",
    "Desserts",
    "Sweets",
    "North Indian",
    "South Indian",
  ];

  List<String> imageData = [
    "assets/images/Snacks.png",
    "assets/images/Pizza.png",
    "assets/images/Biryani.png",
    "assets/images/Burgers.png",
    "assets/images/Chinese.png",
    "assets/images/Desserts.png",
    "assets/images/Sweets.png",
    "assets/images/North_Indian.png",
    "assets/images/South_Indian.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset("assets/images/bell.png"),
                  Column(
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            "assets/images/map.png",
                          ),
                          const Text(
                            "Home",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                          const Icon(
                            Icons.expand_more,
                            color: Colors.white,
                            size: 25,
                          ),
                        ],
                      ),
                      const Text(
                        "9, suramya duplex, nr. nigam bus stand.....",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontFamily: "Poppins",
                        ),
                      ),
                    ],
                  ),
                  Image.asset(
                    "assets/images/heart.png",
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 55,
                      width: 280,
                      color: const Color(0xFF161616),
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Row(
                          children: const [
                            Icon(
                              Icons.search,
                              color: Colors.white,
                              size: 28,
                            ),
                            SizedBox(width: 10),
                            Text(
                              "Name ur mood...",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(width: 65),
                            Icon(
                              Icons.mic,
                              color: Colors.white,
                              size: 25,
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      height: 55,
                      width: 65,
                      color: const Color(0xFF161616),
                      child: Image.asset(
                        "assets/images/slider.png",
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 25),
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: 208,
                    width: 700,
                    color: Colors.black,
                    child: Image.asset(
                      "assets/images/Group 26.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 80),
                    child: Image.asset(
                      "assets/images/Offer.png",
                      fit: BoxFit.cover,
                      height: 58,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 125, right: 155),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Get your first order at",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "60% off",
                          style: TextStyle(
                            fontSize: 17,
                            color: Color(0xFFFF9D01),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 135, left: 158),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: const [
                        Text(
                          "Dive in now.",
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xFFFF9D01),
                          ),
                        ),
                        Text(
                          "*Only available for new foodies.",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "What’s your mood today?",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Text(
                      "view all",
                      style: TextStyle(
                        color: Color(0xFFFF9D01),
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 125,
                child: ListView.builder(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                  itemCount: listData.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => AppFoodItems(
                    image: imageData[index],
                    text: listData[index],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "What’s your mood today?",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Text(
                      "view all",
                      style: TextStyle(
                        color: Color(0xFFFF9D01),
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 10, right: 10),
                        height: 125,
                        width: 130,
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Image.asset("assets/images/Domino's_pizza.png", height: 120, width: 120),
                            Container(
                              height: 125,
                              width: 130,
                              decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Color(0x24161616),
                                    Color(0x30FF9E01),
                                    Color(0xFFFF9D01),
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  // stops: [0.5, 0.2],
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 95),
                              child: Text(
                                "Domino’s",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  // fontFamily: "Poppins",
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 10, right: 10),
                        height: 125,
                        width: 130,
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Image.asset("assets/images/Starbucks.png", height: 120, width: 120),
                            Container(
                              height: 125,
                              width: 130,
                              decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Color(0x24161616),
                                    Color(0x30FF9E01),
                                    Color(0xFFFF9D01),
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  // stops: [0.5, 0.2],
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 95),
                              child: Text(
                                "Starbucks",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  // fontFamily: "Poppins",
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 10, right: 10),
                        height: 125,
                        width: 130,
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Image.asset("assets/images/McDonald.png", height: 120, width: 120),
                            Container(
                              height: 125,
                              width: 130,
                              decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Color(0x24161616),
                                    Color(0x30FF9E01),
                                    Color(0xFFFF9D01),
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  // stops: [0.5, 0.2],
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 95),
                              child: Text(
                                "McDonald’s",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  // fontFamily: "Poppins",
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 10, right: 10),
                        height: 125,
                        width: 130,
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Image.asset("assets/images/Dunkin'_logo.png", height: 120, width: 120),
                            Container(
                              height: 125,
                              width: 130,
                              decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Color(0x24161616),
                                    Color(0x30FF9E01),
                                    Color(0xFFFF9D01),
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  // stops: [0.5, 0.2],
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 95),
                              child: Text(
                                "Dunkin'",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  // fontFamily: "Poppins",
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 10, right: 10),
                        height: 125,
                        width: 130,
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Image.asset("assets/images/Subway_log.png", height: 120, width: 120),
                            Container(
                              height: 125,
                              width: 130,
                              decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Color(0x24161616),
                                    Color(0x30FF9E01),
                                    Color(0xFFFF9D01),
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  // stops: [0.5, 0.2],
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 95),
                              child: Text(
                                "Subway'",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  // fontFamily: "Poppins",
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 10, right: 10),
                        height: 125,
                        width: 130,
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Image.asset("assets/images/KFC_logo.png", height: 120, width: 120),
                            Container(
                              height: 125,
                              width: 130,
                              decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Color(0x24161616),
                                    Color(0x30FF9E01),
                                    Color(0xFFFF9D01),
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  // stops: [0.5, 0.2],
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 95),
                              child: Text(
                                "KFC'",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  // fontFamily: "Poppins",
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 10, right: 10),
                        height: 125,
                        width: 130,
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Image.asset("assets/images/Pizza_Hut_logo 1.png", height: 120, width: 120),
                            Container(
                              height: 125,
                              width: 130,
                              decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Color(0x24161616),
                                    Color(0x30FF9E01),
                                    Color(0xFFFF9D01),
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  // stops: [0.5, 0.2],
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 95),
                              child: Text(
                                "Pizza Hut'",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  // fontFamily: "Poppins",
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 10, right: 10),
                        height: 125,
                        width: 130,
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Image.asset("assets/images/Burger_King_logo.png", height: 120, width: 120),
                            Container(
                              height: 125,
                              width: 130,
                              decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Color(0x24161616),
                                    Color(0x30FF9E01),
                                    Color(0xFFFF9D01),
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  // stops: [0.5, 0.2],
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 95),
                              child: Text(
                                "Burger King'",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  // fontFamily: "Poppins",
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 10, right: 10),
                        height: 125,
                        width: 130,
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Image.asset("assets/images/Haldiram's_Logo.png", height: 120, width: 120),
                            Container(
                              height: 125,
                              width: 130,
                              decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Color(0x24161616),
                                    Color(0x30FF9E01),
                                    Color(0xFFFF9D01),
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  // stops: [0.5, 0.2],
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 95),
                              child: Text(
                                "Haldiram's'",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  // fontFamily: "Poppins",
                                  fontWeight: FontWeight.w500,
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
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Nearby moods around you",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Text(
                      "view all",
                      style: TextStyle(
                        color: Color(0xFFFF9D01),
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: SingleChildScrollView(
                  child: Container(
                    height: 266,
                    width: double.infinity,
                    color: Colors.black,
                    child: Stack(
                      children: [
                        Image.asset("assets/images/Pav_Bhaji.png"),
                        Padding(
                          padding: const EdgeInsets.only(top: 185),
                          child: Container(
                            height: 100,
                            width: double.infinity,
                            color: Colors.black,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      "assets/images/India_vegetarian.png",
                                      fit: BoxFit.fill,
                                      height: 23,
                                      // alignment: Alignment.topLeft,
                                    ),
                                    const Text(
                                      "Das Kitchen",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontFamily: "Poppins",
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const Text(
                                      "North Indian, Snacks",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        //fontFamily: "Poppins",
                                        fontWeight: FontWeight.w300,
                                      ),
                                    )
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    const Text(
                                      "Pav Bhaji",
                                      style: TextStyle(
                                        color: Color(0xFFFF9D01),
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const Text(
                                      "₹ 100",
                                      style: TextStyle(
                                        color: Color(0xFFFF9D01),
                                        fontSize: 17,
                                        fontWeight: FontWeight.w200,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Image.asset("assets/images/clock.png"),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        const Text(
                                          "15 mins | 1 km",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontFamily: "Poppins",
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 162, top: 165),
                          child: Container(
                            height: 45,
                            width: 45,
                            decoration: const BoxDecoration(
                              color: Color(0xFFFF9D01),
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(Icons.add, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  height: 266,
                  width: double.infinity,
                  color: Colors.black,
                  child: Stack(
                    children: [
                      Image.asset("assets/images/Loaded_Pizza.png"),
                      Padding(
                        padding: const EdgeInsets.only(top: 185),
                        child: Container(
                          height: 100,
                          width: double.infinity,
                          color: Colors.black,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    "assets/images/India_vegetarian.png",
                                    fit: BoxFit.fill,
                                    height: 23,
                                    // alignment: Alignment.topLeft,
                                  ),
                                  const Text(
                                    "La Pino’z Pizza",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const Text(
                                    "Pizza, Fast food",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      //fontFamily: "Poppins",
                                      fontWeight: FontWeight.w300,
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  const Text(
                                    "Loaded Pizza",
                                    style: TextStyle(
                                      color: Color(0xFFFF9D01),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const Text(
                                    "₹ 175",
                                    style: TextStyle(
                                      color: Color(0xFFFF9D01),
                                      fontSize: 17,
                                      fontWeight: FontWeight.w200,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Image.asset("assets/images/clock.png"),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      const Text(
                                        "25 mins | 1.5 km",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 162, top: 165),
                        child: Container(
                          height: 45,
                          width: 45,
                          decoration: const BoxDecoration(
                            color: Color(0xFFFF9D01),
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(Icons.add, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  height: 266,
                  width: double.infinity,
                  color: Colors.black,
                  child: Stack(
                    children: [
                      Image.asset("assets/images/Veg_Fix_Thali.png"),
                      Padding(
                        padding: const EdgeInsets.only(top: 185),
                        child: Container(
                          height: 100,
                          width: double.infinity,
                          color: Colors.black,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    "assets/images/India_vegetarian.png",
                                    fit: BoxFit.fill,
                                    height: 23,
                                    // alignment: Alignment.topLeft,
                                  ),
                                  const Text(
                                    "Shree Marutinandan",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const Text(
                                    "North Indian, Thali",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      //fontFamily: "Poppins",
                                      fontWeight: FontWeight.w300,
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  const Text(
                                    "Veg Fix Thali",
                                    style: TextStyle(
                                      color: Color(0xFFFF9D01),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const Text(
                                    "₹ 100",
                                    style: TextStyle(
                                      color: Color(0xFFFF9D01),
                                      fontSize: 15,
                                      fontWeight: FontWeight.w200,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Image.asset("assets/images/clock.png"),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      const Text(
                                        "35 mins | 2.5 km",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 162, top: 165),
                        child: Container(
                          height: 45,
                          width: 45,
                          decoration: const BoxDecoration(
                            color: Color(0xFFFF9D01),
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(Icons.add, color: Colors.white),
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
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.white,
        backgroundColor: Colors.black,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dataset),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "",
          ),
        ],
      ),
    );
  }
}
