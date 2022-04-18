import 'package:flutter/material.dart';
import 'package:home_ui/constant.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Stack(
              children: [
                Container(
                  // height: 400,
                  width: 700,
                  decoration: const BoxDecoration(
                    image: DecorationImage(image: AssetImage("asset/image/home1.jpg"),
                    fit: BoxFit.cover,
                    )
                  ),
                  child: Image.asset("asset/image/home1.jpg",fit: BoxFit.cover,)),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 20, top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      BoxIcon(
                        icon: Icons.arrow_back,
                      ),
                      BoxIcon(icon: Icons.favorite_border)
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "\$200,000",
                        style: TextStyle(
                            fontSize: 23, fontWeight: FontWeight.bold),
                      ),
                      Container(
                        height: 43,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14),
                            border: Border.all(color: Colors.grey.shade300)),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Center(
                            child: Text(
                              "20 Hourse ago",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Text(
                    "Jension, MI 8564, SF",
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey.shade400,
                        fontWeight: FontWeight.w700),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                "House Information",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              // color: Colors.white,
              height: 120,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 15,
                    ),
                    child: Row(
                      children: const [
                        House_information(
                          text1: '3453',
                          text2: "Square Foot",
                        ),
                        House_information(text1: "4", text2: "Bedrooms"),
                        House_information(text1: "4", text2: "Bedrooms"),
                        House_information(text1: "3", text2: "Bathrooms"),
                        House_information(text1: "1", text2: "Garage"),
                        House_information(text1: "1", text2: "Kitchen")
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Text(
                "Freshly steamed milk with vanilla-flavored syrup is marked with espresso and topped with caramel drizzle for an oh-so-sweet finish.",
                style: TextStyle(
                  color: Colors.grey.shade500,
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: 
            
            
          
          FAB("Message", Icons.message),
          // FAB("Call", Icons.call),
        
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

class House_information extends StatelessWidget {
  final String text1;
  final String text2;

  const House_information({Key? key, required this.text1, required this.text2})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15.0),
      child: Column(
        children: [
          Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.grey.shade300)),
            child: Center(
              child: Text(
                text1,
                style:
                    const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(text2,
              style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold))
        ],
      ),
    );
  }
}
//FAB("Call", Icons.call)