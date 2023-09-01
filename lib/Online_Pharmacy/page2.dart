import 'package:flutter/material.dart';
import 'package:onlinepharmacy/Online_Pharmacy/page3.dart';

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
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
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.teal,
            )),
        title: Center(
            child: Text(
          'Medicines',
          style: TextStyle(color: Colors.black),
        )),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Icon(
              Icons.shopping_cart_outlined,
              color: Colors.teal,
            ),
          )
        ],
        backgroundColor: Colors.white30,
      ),
      body: Column(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10, left: 20),
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
                  ],
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: 4,
              physics: BouncingScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    height: 130,
                    width: 178,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35),
                      color: Color(0xffFFE1BA),
                    ),
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 10, left: 20, right: 20, bottom: 17),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            medicine[index]['image'],
                            width: 75,
                            height: 78,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  medicine[index]['fname'],
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  medicine[index]['pills'],
                                  style: TextStyle(color: Colors.black38),
                                ),
                                SizedBox(
                                  height: 15,
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
                                          decoration:
                                              TextDecoration.lineThrough),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Column(children: [
                            Icon(Icons.favorite_border,
                                size: 20, color: Color(0xff2A8C8B)),
                            SizedBox(height: 39),
                            CircleAvatar(
                              child: Icon(Icons.add, color: Colors.white),
                              backgroundColor: Color(0xffFB886F),
                            ),
                            // IconButton(onPressed: () {}, icon: I)
                          ]),
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
    );
  }
}
