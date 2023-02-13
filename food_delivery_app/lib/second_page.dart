import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:music_player_app/first_page.dart';

class Second_page extends StatefulWidget {
  const Second_page({Key? key}) : super(key: key);

  @override
  State<Second_page> createState() => _Second_pageState();
}

class _Second_pageState extends State<Second_page> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context, MaterialPageRoute(builder: (context)=>first_page()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(25),
                      child: Container(
                        child: Icon(Icons.arrow_back_ios, size: 25),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      padding: EdgeInsets.only(
                        top: 25,
                      ),
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://img.freepik.com/premium-photo/summer-green-salad-white-bowl-plate-isolated-white-backgorund-healty-salat-from-tomato-spinach-onion-green-leaves-with-oil-dinner-lunch-vegetarian-food-concept-top-view_335758-59.jpg?size=626&ext=jpg&ga=GA1.2.792835448.1657559394&semt=ais "),
                        radius: 90,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text("2 km"),
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
                        Text("10 min delivery"),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Salad With Shirata",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          CircleAvatar(
                            child: Icon(
                              Icons.favorite_rounded,
                              color: Colors.red,
                            ),
                            backgroundColor: Colors.white70,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      child: Row(
                        children: [
                          RatingBar.builder(
                            initialRating: 4,
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemSize: 20,
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
                            height: 8,
                          ),
                          Text("4.0 Rating"),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    Container(
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.only(right: 270),
                            child: Text(
                              "Description",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          RichText(
                            text: TextSpan(
                              children: <TextSpan>[
                                TextSpan(
                                    text:
                                        "The flavour of salad with shirataki taste much like vegetable and regular pasta they are very neutral,and will flavor ",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 16)),
                                TextSpan(
                                    text: "Read more...",
                                    style: TextStyle(color: Colors.red))
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      child: Row(
                        children: [
                          Text(
                            "Size",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                          SizedBox(
                            width: 60,
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                textStyle: TextStyle(color: Colors.black)),
                            child: Row(
                              children: [
                                Icon(Icons.rice_bowl, color: Colors.black),
                                SizedBox(
                                  width: 12,
                                ),
                                Text(
                                  "Normal",
                                  style: TextStyle(color: Colors.black),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                textStyle: TextStyle(color: Colors.black)),
                            child: Row(
                              children: [
                                Icon(Icons.rice_bowl_sharp,
                                    color: Colors.black),
                                SizedBox(
                                  width: 12,
                                ),
                                Text(
                                  "Large",
                                  style: TextStyle(color: Colors.black),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 45,
                    ),
                    Container(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Price"),
                                  SizedBox(
                                    height: 7,
                                  ),
                                  Text(
                                    "Rp 40.500",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 80, top: 20),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          border: Border.all(color: Colors.red),
                                          borderRadius:
                                              BorderRadius.circular(25),
                                          color: Colors.white),
                                      child: CircleAvatar(
                                          backgroundColor: Colors.white,
                                          child: Text(
                                            "-",
                                            style: TextStyle(
                                                color: Colors.red,
                                                fontSize: 20),
                                          )),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "1",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          border: Border.all(color: Colors.red),
                                          borderRadius:
                                              BorderRadius.circular(22),
                                          color: Colors.white),
                                      child: CircleAvatar(
                                          backgroundColor: Colors.white,
                                          child: Text(
                                            "+",
                                            style: TextStyle(
                                                color: Colors.red,
                                                fontSize: 20),
                                          )),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 38,
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(25),
                            child: Container(
                              width: double.infinity,
                              height: 50,
                              color: Colors.deepOrangeAccent[200],
                              child: Center(child: Text("Add to cart",style: TextStyle(color: Colors.white,fontSize: 20),)),
                            ),
                          )
                        ],
                      ),
                    ),
                    // SizedBox(
                    //   height: 20,
                    // ),
                    // ClipRRect(
                    //   borderRadius: BorderRadius.circular(25),
                    //   child: Container(
                    //     width: double.infinity,
                    //     height: 50,
                    //     color: Colors.deepOrangeAccent[200],
                    //     child: Center(child: Text("Add to cart",style: TextStyle(color: Colors.white,fontSize: 15),)),
                    //   ),
                    // )
                  ],
                ),
              ),
            ),
          ],
        )
      ),
    );

    return const Placeholder();
  }
}
