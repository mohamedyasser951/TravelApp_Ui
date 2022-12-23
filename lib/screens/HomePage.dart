import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:travelapp/screens/PostScreen.dart';
import 'package:travelapp/widgets/HomeAppBar.dart';
import 'package:travelapp/widgets/HomeNavBar.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  List category = [
    "Best Places",
    "Most Visited",
    "Favourites",
    "New Added",
    "Hotels",
    "Resturants"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          child: HomeAppBar(), preferredSize: Size.fromHeight(90.0)),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 200.0,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: 6,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (context, index) => InkWell(
                  onTap: () {},
                  child: Container(
                    width: 160,
                    padding: const EdgeInsets.all(20.0),
                    margin: const EdgeInsets.only(left: 15),
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(15.0),
                        image: DecorationImage(
                            image: AssetImage("assets/city${index + 1}.jpg"),
                            fit: BoxFit.cover,
                            opacity: 0.7)),
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.topRight,
                          child: const Icon(
                            Icons.bookmark_border_outlined,
                            color: Colors.white,
                            size: 30.0,
                          ),
                        ),
                        const Spacer(),
                        Container(
                          alignment: Alignment.bottomLeft,
                          child: const Text(
                            "City Name",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.0,
                                fontWeight: FontWeight.w600),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Row(
                  children: [
                    for (int i = 0; i <= 5; i++)
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 10.0),
                        padding: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 4.0,
                              ),
                            ]),
                        child: Text(
                          category[i],
                          style: const TextStyle(
                              fontSize: 15.0, fontWeight: FontWeight.w500),
                        ),
                      ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            ListView.builder(
              itemCount: 6,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>const PostScreen(),
                              ));
                        },
                        child: Container(
                          height: 200.0,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(15.0),
                              image: DecorationImage(
                                  image:
                                      AssetImage("assets/city${index + 1}.jpg"),
                                  fit: BoxFit.cover,
                                  opacity: 0.8)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              "City Name",
                              style: TextStyle(
                                  fontSize: 20.0, fontWeight: FontWeight.w600),
                            ),
                            Icon(
                              Icons.more_vert,
                              size: 30.0,
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: const [
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                            size: 20.0,
                          ),
                          Text(
                            "4.5",
                            style: TextStyle(fontWeight: FontWeight.w500),
                          )
                        ],
                      )
                    ],
                  ),
                );
              },
            )
          ],
        ),
      ),
      bottomNavigationBar: HomeNavBar(),
    );
  }
}
