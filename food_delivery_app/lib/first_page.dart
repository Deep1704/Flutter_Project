import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:music_player_app/detail_page.dart';
import 'package:music_player_app/second_page.dart';

class first_page extends StatefulWidget {
  const first_page({Key? key}) : super(key: key);

  @override
  State<first_page> createState() => _first_pageState();
}

class _first_pageState extends State<first_page> {
  List items = [
    {
      'imagepath': 'https://cdn-icons-png.flaticon.com/128/9273/9273859.png',
      'name': 'Salad'
    },
    {
      'imagepath': 'https://cdn-icons-png.flaticon.com/128/3595/3595458.png',
      'name': 'Pizza'
    },
    {
      'imagepath': 'https://cdn-icons-png.flaticon.com/128/5930/5930051.png',
      'name': 'Burger'
    },
    {
      'imagepath': 'https://cdn-icons-png.flaticon.com/128/7310/7310233.png',
      'name': 'Boba Milk'
    },
    {
      'imagepath': 'https://cdn-icons-png.flaticon.com/128/6518/6518098.png',
      'name': 'Sandwich'
    },
    {
      'imagepath': 'https://cdn-icons-png.flaticon.com/128/9487/9487283.png',
      'name': 'Dosa'
    },
    {
      'imagepath': 'https://cdn-icons-png.flaticon.com/128/3041/3041130.png',
      'name': 'Noodles'
    },
    {
      'imagepath': 'https://cdn-icons-png.flaticon.com/128/2719/2719313.png',
      'name': 'Coke'
    },
    {
      'imagepath': 'https://cdn-icons-png.flaticon.com/128/2674/2674083.png',
      'name': 'Hotdog'
    },
    {
      'imagepath': 'https://cdn-icons-png.flaticon.com/512/3851/3851646.png',
      'name': 'Pastry'
    },
    {
      'imagepath': 'https://cdn-icons-png.flaticon.com/128/189/189146.png',
      'name': 'Soup'
    },
    {
      'imagepath': 'https://cdn-icons-png.flaticon.com/512/1375/1375210.png',
      'name': 'Donut'
    },
    {
      'imagepath': 'https://cdn-icons-png.flaticon.com/128/2515/2515209.png',
      'name': 'Popcorn'
    }
  ];

  List foods = [
    {
      'imgpath':
          'https://img.freepik.com/premium-photo/summer-green-salad-white-bowl-plate-isolated-white-backgorund-healty-salat-from-tomato-spinach-onion-green-leaves-with-oil-dinner-lunch-vegetarian-food-concept-top-view_335758-59.jpg?size=626&ext=jpg&ga=GA1.2.792835448.1657559394&semt=ais',
      'name': 'Salad With Sirata',
      'value': '4.0',
      'km': '1 km',
      'time': '10 min delivery'
    },
  ];

  List<Map> food = [];
  List<Map> item = [];

  @override
  void initState() {
    Map<String, dynamic> map = {};
    map['image'] =
        'https://img.freepik.com/premium-photo/summer-green-salad-white-bowl-plate-isolated-white-backgorund-healty-salat-from-tomato-spinach-onion-green-leaves-with-oil-dinner-lunch-vegetarian-food-concept-top-view_335758-59.jpg?size=626&ext=jpg&ga=GA1.2.792835448.1657559394&semt=ais ';
    map['name'] = 'Salad With Shirata';
    map['rating'] = 5.0;
    map['value'] = "14 k";
    map['no'] = "5.0";
    map['km'] = "1 km";
    map["time"] = "10 min delivery";
    food.add(map);

    map = {};
    map['image'] =
        'https://img.freepik.com/premium-photo/mix-salad-plate-close-up-white-background-top-view_269543-2292.jpg?size=626&ext=jpg&ga=GA1.2.792835448.1657559394&semt=ais ';
    map['name'] = 'Salado Beef Wagur';
    map['rating'] = 2.0;
    map['value'] = "12 k";
    map['no'] = "2.0";
    map['km'] = "2 km";
    map["time"] = "10 min delivery";
    food.add(map);

    map = {};
    map['image'] =
        'https://img.freepik.com/premium-photo/fresh-cabbage-salad-with-spinach-bowl-isolated-white-coleslaw_311158-3386.jpg?size=626&ext=jpg&ga=GA1.2.792835448.1657559394&semt=ais';
    map['name'] = 'Salad With Selsi';
    map['rating'] = 3.0;
    map['value'] = "11 k";
    map['no'] = "3.0";
    map['km'] = "4 km";
    map["time"] = "20 min delivery";
    food.add(map);

    map = {};
    map['image'] =
        'https://img.freepik.com/premium-photo/tomato-salad-fresh-onion-lettuce-meal-vegetable-dish-food-table-copy-space-food-background_88242-22915.jpg?size=626&ext=jpg&ga=GA1.2.792835448.1657559394&semt=ais';
    map['name'] = 'Salad With Veg';
    map['rating'] = 4.0;
    map['value'] = "19 k";
    map['no'] = "4.0";
    map['km'] = "5 km";
    map["time"] = "22 min delivery";
    food.add(map);

    Map<String, dynamic> maps = {};

    maps["image"] =
        "https://img.freepik.com/premium-photo/tomato-salad-fresh-onion-lettuce-meal-vegetable-dish-food-table-copy-space-food-background_88242-22915.jpg?size=626&ext=jpg&ga=GA1.2.792835448.1657559394&semt=ais";
    maps["name"] = "Sayure Ikane";
    maps["rname"] = "Restaurant Mamih";
    maps["price"] = "Rp 40,000";
    maps["nprice"] = "Rp 80,000";
    maps["label"] = "50% OFF";
    item.add(maps);

    maps = {};
    maps["image"] =
        "https://img.freepik.com/free-photo/grilled-chicken-skewers-green-salad-menu-recipe-idea_53876-101446.jpg?size=338&ext=jpg&ga=GA1.2.792835448.1657559394&semt=ais";
    maps["name"] = "Sarham Ikane";
    maps["rname"] = "Restaurant Jakib";
    maps["price"] = "Rp 60,000";
    maps["nprice"] = "Rp 90,000";
    maps["label"] = "20% OFF";
    item.add(maps);

    maps = {};
    maps["image"] =
        "https://img.freepik.com/free-photo/close-up-vegetarian-salad-green-bowl_23-2148076240.jpg?size=338&ext=jpg&ga=GA1.2.792835448.1657559394&semt=ais";
    maps["name"] = "Sayure Selsi";
    maps["rname"] = "Restaurant Kastir";
    maps["price"] = "Rp 20,000";
    maps["nprice"] = "Rp 30,000";
    maps["label"] = "40% OFF";
    item.add(maps);

    maps = {};
    maps["image"] =
        "https://img.freepik.com/premium-photo/plate-with-fresh-salad-with-strawberry-tomatoes-cherry-mozzarella-cheese-basil-isolated-white_503274-1952.jpg?size=626&ext=jpg&ga=GA1.1.792835448.1657559394&semt=ais";
    maps["name"] = "Sajda Veg";
    maps["rname"] = "Restaurant Vegis";
    maps["price"] = "Rp 40,000";
    maps["nprice"] = "Rp 50,000";
    maps["label"] = "70% OFF";
    item.add(maps);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.center,
                  stops: [0.5, 0.001],
                  colors: [
                    Color(0XFFF5F5F3),
                    Color.fromARGB(0, 255, 202, 176),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Delivery to",
                    style: TextStyle(color: Colors.grey, fontSize: 20),
                    textAlign: TextAlign.justify,
                  ),
                  Text.rich(
                    textAlign: TextAlign.center,
                    TextSpan(
                      children: [
                        WidgetSpan(
                          child: Icon(
                            Icons.location_on_rounded,
                            color: Colors.deepOrange,
                            size: 22,
                          ),
                        ),
                        TextSpan(
                          text: "Sukabumi,Indonesia",
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),

                  //Searchbar
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      width: double.maxFinite,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 10,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 10,
                        ),
                        child: Flexible(
                          child: Row(
                            children: [
                              Icon(
                                Icons.search,
                                color: Colors.grey,
                              ),
                              Flexible(
                                child: Container(
                                  height: 50,
                                  width: 300,
                                  child: Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 15),
                                    child: TextField(
                                      decoration: InputDecoration(
                                        hintText: "What did you eat today?",
                                        border: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            //Horizontal Scroller
            ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: [
                for (var i in items)
                  Container(
                    margin: EdgeInsets.all(8),
                    padding: EdgeInsets.only(top: 140),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ClipOval(
                          child: Container(
                            child: CircleAvatar(
                              radius: 40,
                              backgroundColor: Colors.white,
                              foregroundColor: Colors.orange,
                              child: Image.network(
                                i['imagepath'],
                                width: 50,
                                height: 50,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Text(
                          i['name'],
                          style: TextStyle(
                              fontSize: 19, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 280, left: 20),
              child: Row(
                children: [
                  Text(
                    "Popular food",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 22),
                  ),
                  SizedBox(
                    width: 100,
                  ),
                  Text(
                    "see all",
                    style: TextStyle(color: Colors.grey, fontSize: 15),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 320),
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Second_page()));
                },
                child: Container(
                  height: 300,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: food.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.only(right: 10, left: 10),
                        width: 200,
                        height: 300,
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
                        padding: EdgeInsets.only(left: 20, top: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              children: [
                                CircleAvatar(
                                  backgroundImage:
                                      NetworkImage(food[index]['image']),
                                  radius: 80,
                                ),
                                Positioned(
                                  top: 100,
                                  left: 117,
                                  child: CircleAvatar(
                                    radius: 21,
                                    child: Text(food[index]['value']),
                                    backgroundColor: Colors.orange,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              food[index]['name'],
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                RatingBar.builder(
                                  initialRating: food[index]["rating"],
                                  minRating: 1,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemCount: 5,
                                  itemSize: 15,
                                  itemPadding: EdgeInsets.only(right: 4.0),
                                  itemBuilder: (context, _) => Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  onRatingUpdate: (rating) {
                                    print(rating);
                                  },
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(food[index]['no']),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Text(food[index]["km"]),
                                SizedBox(
                                  width: 7,
                                ),
                                Icon(
                                  Icons.circle,
                                  color: Colors.orange,
                                  size: 5,
                                ),
                                SizedBox(
                                  width: 7,
                                ),
                                Text(food[index]["time"]),
                              ],
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 640, left: 20),
              child: Flexible(
                child: Row(
                  children: [
                    Text(
                      "Favourite Menu",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 22),
                    ),
                    SizedBox(
                      width: 90,
                    ),
                    Text(
                      "see all",
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 680),
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailPage()));
                },
                child: Flexible(
                  child: Container(
                    margin: EdgeInsets.only(right: 10, left: 10),
                    height: 200,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: item.length,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.only(right: 20),
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
                                      NetworkImage(item[index]['image']),
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
                                          left: 30,
                                          top: 0.0,
                                          child: Container(
                                            color: Colors.red,
                                            child: Padding(
                                              padding: const EdgeInsets.all(5),
                                              child: Text(
                                                item[index]["label"],
                                                textAlign: TextAlign.center,
                                                style: TextStyle(fontSize: 12),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      item[index]['name'],
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      item[index]['rname'],
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Text(item[index]['price']),
                                        SizedBox(
                                          width: 4,
                                        ),
                                        Text(
                                          item[index]['nprice'],
                                          style: TextStyle(
                                              decoration:
                                                  TextDecoration.lineThrough,
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
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          elevation: 80,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          selectedItemColor: Colors.deepOrange,
          unselectedItemColor: Colors.grey,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 40,
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite_border,
                size: 40,
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.add_alert_rounded,
                size: 40,
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                size: 40,
              ),
              label: "",
            ),
          ],
        ),
      ),
    );
  }
}
