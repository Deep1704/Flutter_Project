import 'package:flutter/material.dart';
import 'package:music_player_app/first_page.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  List<Map> foods = [];

  void initState() {
    Map<String, dynamic> map = {};

    map["image"] =
        "https://img.freepik.com/premium-photo/tomato-salad-fresh-onion-lettuce-meal-vegetable-dish-food-table-copy-space-food-background_88242-22915.jpg?size=626&ext=jpg&ga=GA1.2.792835448.1657559394&semt=ais";
    map["name"] = "Sayure Ikane";
    map["rname"] = "Restaurant Mamih";
    map["price"] = "Rp 40,000";
    map["nprice"] = "Rp 80,000";
    map["label"] = "50% OFF";
    foods.add(map);

    map = {};
    map["image"] =
        "https://img.freepik.com/free-photo/close-up-vegetarian-salad-green-bowl_23-2148076240.jpg?size=338&ext=jpg&ga=GA1.2.792835448.1657559394&semt=ais";
    map["name"] = "Sarham Ikane";
    map["rname"] = "Restaurant Jakib";
    map["price"] = "Rp 60,000";
    map["nprice"] = "Rp 90,000";
    map["label"] = "20% OFF";
    foods.add(map);

    map = {};
    map["image"] =
        "https://img.freepik.com/free-photo/grilled-chicken-skewers-green-salad-menu-recipe-idea_53876-101446.jpg?size=338&ext=jpg&ga=GA1.2.792835448.1657559394&semt=ais";
    map["name"] = "Sayure Selsi";
    map["rname"] = "Restaurant Kastir";
    map["price"] = "Rp 20,000";
    map["nprice"] = "Rp 30,000";
    map["label"] = "40% OFF";
    foods.add(map);

    map = {};
    map["image"] =
        "https://img.freepik.com/premium-photo/tomato-salad-fresh-onion-lettuce-meal-vegetable-dish-food-table-copy-space-food-background_88242-22915.jpg?size=626&ext=jpg&ga=GA1.2.792835448.1657559394&semt=ais";
    map["name"] = "Sajda Veg";
    map["rname"] = "Restaurant Vegis";
    map["price"] = "Rp 40,000";
    map["nprice"] = "Rp 50,000";
    map["label"] = "70% OFF";
    foods.add(map);

    map = {};
    map["image"] =
        "https://img.freepik.com/premium-photo/tomato-salad-fresh-onion-lettuce-meal-vegetable-dish-food-table-copy-space-food-background_88242-22915.jpg?size=626&ext=jpg&ga=GA1.2.792835448.1657559394&semt=ais";
    map["name"] = "Sayure Ikane";
    map["rname"] = "Restaurant Mamih";
    map["price"] = "Rp 40,000";
    map["nprice"] = "Rp 80,000";
    map["label"] = "50% OFF";
    foods.add(map);

    map = {};
    map["image"] =
        "https://img.freepik.com/premium-photo/tomato-salad-fresh-onion-lettuce-meal-vegetable-dish-food-table-copy-space-food-background_88242-22915.jpg?size=626&ext=jpg&ga=GA1.2.792835448.1657559394&semt=ais";
    map["name"] = "Sajda Veg";
    map["rname"] = "Restaurant Vegis";
    map["price"] = "Rp 40,000";
    map["nprice"] = "Rp 50,000";
    map["label"] = "70% OFF";
    foods.add(map);

    map = {};
    map["image"] =
        "https://img.freepik.com/free-photo/close-up-vegetarian-salad-green-bowl_23-2148076240.jpg?size=338&ext=jpg&ga=GA1.2.792835448.1657559394&semt=ais";
    map["name"] = "Sarham Ikane";
    map["rname"] = "Restaurant Jakib";
    map["price"] = "Rp 60,000";
    map["nprice"] = "Rp 90,000";
    map["label"] = "20% OFF";
    foods.add(map);
    // TODO: implement initState
    super.initState();
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            InkWell(
              onTap: () {
                Navigator.pop(context,
                    MaterialPageRoute(builder: (context) => first_page()));
              },
              child: Container(
                padding: EdgeInsets.only(top: 25),
                margin: EdgeInsets.only(right: 160),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.arrow_back_ios,
                      size: 25,
                    ),
                    SizedBox(
                      height: 23,
                    ),
                    Text(
                      "Favourite Menu",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 45,
            ),
            Container(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Menu",
                        style: TextStyle(color: Colors.deepOrange),
                      ),
                      Text("Favourite"),
                    ],
                  ),
                  Divider(
                    color: Colors.deepOrangeAccent[50],
                    thickness: 2,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              margin: EdgeInsets.only(right: 10, left: 10),
              height: 700,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: foods.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(bottom: 20),
                    width: 310,
                    height: 140,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.2),
                            blurRadius: 5,
                            // offset: Offset(5, 5),
                          )
                        ]),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            radius: 50,
                            backgroundImage:
                                NetworkImage(foods[index]['image']),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Positioned(
                                    right:30,
                                    top:0,
                                    child: Stack(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                              color: Colors.red),
                                          child: Text(
                                            foods[index]["label"],
                                            textAlign: TextAlign.center,
                                            style: TextStyle(fontSize: 10),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                foods[index]['name'],
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                foods[index]['rname'],
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Text(foods[index]['price']),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Text(
                                    foods[index]['nprice'],
                                    style: TextStyle(
                                        decoration: TextDecoration.lineThrough,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
    return const Placeholder();
  }
}
