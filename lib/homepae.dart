import 'package:flutter/material.dart';
import 'package:home_ui/Details.dart';
import 'package:home_ui/constant.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 20, right: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  BoxIcon(icon: Icons.menu),
                  BoxIcon(icon: Icons.settings),
                ],
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "City",
                    style: TextStyle(
                        color: Colors.grey.shade700,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Text(
                    "San Francisco",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Divider(
                    color: Colors.grey.shade700,
                  )
                ],
              ),
            ),
            Container(
              height: 42,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  textBox(
                    text: '<\$220,000',
                  ),
                  textBox(text: "For Sale"),
                  textBox(text: "3-4 Beds"),
                  textBox(text: "aaaga"),
                  textBox(text: "aaaafgth"),
                  textBox(text: "aaaa"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: MediaQuery.of(context).size.height *3/5,
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children:  const [
                    homeee(
                        image: "asset/image/home1.jpg",
                        text1: "\$200,000",
                        text2: "Jension, MI8564, SF",
                        text3: "4 Bedrooms / 2 Bathrooms / 1416 sqft"),
                    SizedBox(
                      height: 20,
                    ),
                    homeee(
                        image: "asset/image/home2.jpg",
                        text1: "\$105,000",
                        text2: "",
                        text3: "4 Bedrooms / 2 Bathrooms / 1416 sqft"),
                    SizedBox(
                      height: 20,
                    ),
                    homeee(
                        image: "asset/image/home1.jpg",
                        text1: "\$305,000",
                        text2: "",
                        text3: "4 Bedrooms / 2 Bathrooms / 1416 sqft"),
                    SizedBox(
                      height: 20,
                    ),
                    homeee(
                        image: "asset/image/home2.jpg",
                        text1: "\$45,100",
                        text2: "",
                        text3: "4 Bedrooms / 2 Bathrooms / 1416 sqft"),
                    SizedBox(
                      height: 20,
                    ),
                    homeee(
                        image: "asset/image/home1.jpg",
                        text1: "\$22,00",
                        text2: "",
                        text3: "4 Bedrooms / 2 Bathrooms / 1416 sqft"),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FAB("Map View", Icons.map),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

class homeee extends StatelessWidget {
  const homeee({
    Key? key,
    required this.image,
    required this.text1,
    required this.text2,
    required this.text3,
  }) : super(key: key);

  final String image;
  final String text1;
  final String text2;
  final String text3;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const DetailsPage()));
          },
          child: Stack(
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(image)),
              Padding(
                padding: const EdgeInsets.all(13.0),
                child: Align(
                  alignment: Alignment.topRight,
                  child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15)),
                      child: const Center(
                          child: Icon(
                        Icons.favorite_border,
                      ))),
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Text(
              text1,
              style: const TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              width: 8,
            ),
            Text(
              text2,
              style: TextStyle(
                  fontSize: 13,
                  color: Colors.grey.shade600,
                  fontWeight: FontWeight.w700),
            ),
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          text3,
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
        )
      ],
    );
  }
}
