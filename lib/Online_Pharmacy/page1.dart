import 'package:flutter/material.dart';
import 'package:onlinepharmacy/Online_Pharmacy/page2.dart';
import 'package:onlinepharmacy/Online_Pharmacy/page3.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int selectedIndex = 0;

  List<Map<String, dynamic>> namelist = [
    {'image': "assets/image/medical-kit.png", 'name': "Cosutation"},
    {'image': "assets/image/supplement.png", 'name': "Medicines"},
    {'image': "assets/image/result.png", 'name': "Lab Tests"},
    {'image': "assets/image/capsule.png", 'name': "Health"},
  ];
  List<Map<String, dynamic>> medicine = [
    {
      'image': "assets/image/drugs.png",
      'fname': "Multi Vitamins",
      'pills': "90 pills",
      'fprise': "\$217",
      'sprise': "\$287",
    },
    {
      'image': "assets/image/medicine (1).png",
      'fname': "Thayrosafe",
      'pills': "180 pills",
      'fprise': "\$342",
      'sprise': "\$392"
    },
    {
      'image': "assets/image/bar.png",
      'fname': "Omega 3",
      'pills': "132 pills",
      'fprise': "\$165",
      'sprise': "\$185",
    },
    {
      'image': "assets/image/pills.png",
      'fname': "Sore Capsule",
      'pills': "60 pills",
      'fprise': "\$135",
      'sprise': "\$165",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Column(
                children: [
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        height: 200,
                        width: 360,
                        // color: Colors.red,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10.0, top: 30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.short_text,
                                //color: Color(0xff2B6B69),
                                color: Color(0xff2A8C8B),
                                size: 35,
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "Online",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xffF23F60),
                                    fontSize: 45),
                              ),
                              Text(
                                "Pharmacy",
                                style: TextStyle(
                                    color: Color(0xffF23F60),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 49),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: -80,
                        bottom: -60,
                        // left: 170,
                        right: -100,
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/image/madicine.png",
                              height: 300,
                              width: 300,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 12, left: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 50,
                              width: 250,
                              //color: Colors.black,
                              child: TextField(
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Color(0xffFFE1BA),
                                  hintText: 'Search for drugs,doctors,etc...',
                                  hintStyle: TextStyle(fontSize: 13),
                                  //  contentPadding: EdgeInsets.only(left: 20, top: 5),
                                  prefixIcon: Icon(Icons.search_rounded,
                                      color: Color(0xff2A8C8B)),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              Page2()));
                                },
                                child: Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Color(0xff2A8C8B),
                                  ),
                                  child: Icon(Icons.format_list_bulleted_sharp,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 10.0, right: 10, top: 8, bottom: 8),
                    child: Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('Shop by Category',
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.bold)),
                          ],
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Icon(
                                Icons.more_horiz,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 360,
                    height: 110,
                    //  color: Colors.black,
                    //color: Color(0xffFFE1BA),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      physics: BouncingScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedIndex = index;
                                });
                              },
                              child: Container(
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: selectedIndex == index
                                      ? Color(0xffFB886F)
                                      : Color(0xffFFE1BA),
                                ),
                                margin: EdgeInsets.symmetric(horizontal: 10),
                                child: Center(
                                  child: Image.asset(
                                    namelist[index]['image'],
                                    width: 50,
                                    height: 50,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 14,
                            ),
                            Text(
                              namelist[index]['name'],
                              style: TextStyle(fontWeight: FontWeight.w400),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 10.0, right: 10, top: 8, bottom: 8),
                    child: Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('Popular Products',
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.bold)),
                          ],
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Icon(
                                Icons.more_horiz,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 360,
                    height: 250,
                    //color: Color(0xffFFE1BA),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      physics: BouncingScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => page3(
                                  image: medicine[index]['image'],
                                  fname: medicine[index]['fname'],
                                  pills: medicine[index]['pills'],
                                  fprise: medicine[index]['fprise'],
                                  sprise: medicine[index]['sprise'],
                                ),
                              ),
                            );
                          },
                          child: Container(
                            height: 250,
                            width: 178,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(35),
                              color: Color(0xffFFE1BA),
                            ),
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 30, left: 20, right: 30, bottom: 20),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Icon(
                                        Icons.favorite_border,
                                        color: Color(0xff2A8C8B),
                                        size: 20,
                                      ),
                                    ],
                                  ),
                                  Center(
                                    child: Image.asset(
                                      medicine[index]['image'],
                                      width: 70,
                                      height: 70,
                                    ),
                                  ),
                                  SizedBox(height: 30),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          medicine[index]['fname'],
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          medicine[index]['pills'],
                                          style:
                                              TextStyle(color: Colors.black38),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              medicine[index]['fprise'],
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              medicine[index]['sprise'],
                                              style: TextStyle(
                                                  color: Colors.black38,
                                                  decoration: TextDecoration
                                                      .lineThrough),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
