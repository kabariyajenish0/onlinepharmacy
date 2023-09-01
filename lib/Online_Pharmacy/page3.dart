import 'package:flutter/material.dart';

class page3 extends StatefulWidget {
  const page3(
      {Key? key, this.image, this.fname, this.fprise, this.sprise, this.pills})
      : super(key: key);

  final image;
  final fname;
  final pills;
  final fprise;
  final sprise;

  @override
  State<page3> createState() => _page3State();
}

class _page3State extends State<page3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF3D3AC),
      body:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Padding(
          padding: const EdgeInsets.only(top: 40, right: 10, left: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.teal,
                  )),
              Icon(
                Icons.shopping_cart_outlined,
                color: Colors.teal,
              ),
            ],
          ),
        ),
        Image(image: AssetImage(widget.image), height: 200, width: 170),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 340,
            height: 450,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 20, left: 25, right: 20, bottom: 12),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.fname,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 22),
                            ),
                            SizedBox(
                              height: 9,
                            ),
                            Text(
                              widget.pills,
                              style: TextStyle(
                                  color: Colors.black38, fontSize: 15),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star_rounded,
                                  color: Color(0xffFBAC46),
                                ),
                                Icon(
                                  Icons.star_rounded,
                                  color: Color(0xffFBAC46),
                                ),
                                Icon(
                                  Icons.star_rounded,
                                  color: Color(0xffFBAC46),
                                ),
                                Icon(
                                  Icons.star_rounded,
                                  color: Color(0xffFBAC46),
                                ),
                                Icon(
                                  Icons.star_border_outlined,
                                  size: 22,
                                  color: Color(0xffFBAC46),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text(
                                    '4.0',
                                    style: TextStyle(
                                      color: Colors.black38,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.add_circle_outline_outlined,
                                color: Color(0xffFB886F),
                                size: 32,
                              )),
                          Text('1',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          // SizedBox(height: 30),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.remove_circle_outline_outlined,
                              color: Color(0xffFB886F),
                              size: 32,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Product Detail',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                    ],
                  ),
                  SizedBox(height: 28),
                  Text(
                    'Multivitamins are used to provide vitamins'
                    'that are not taken in through the diet.'
                    'Multivitamins are also used to treat vitamin'
                    'deficiencies caused by illness.pregnancy and'
                    'many other conditions',
                    style: TextStyle(color: Colors.grey, fontSize: 15),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: [
                      Text(widget.fprise,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20)),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        widget.sprise,
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            decoration: TextDecoration.lineThrough),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 55,
                        width: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(22),
                          color: Color(0xffFB886F),
                        ),
                        child: Icon(Icons.favorite_border, color: Colors.white),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Container(
                          height: 55,
                          width: 215,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(22),
                            color: Color(0xff2A8C8B),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.shopping_cart_outlined,
                                  color: Colors.white),
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                'Add to Basket',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
/*
import 'package:flutter/material.dart';

class page3 extends StatefulWidget {
  const page3({Key? key}) : super(key: key);

  @override
  State<page3> createState() => _page3State();
}

class _page3State extends State<page3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF3D3AC),
      body:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Padding(
          padding: const EdgeInsets.only(top: 40, right: 10, left: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.teal,
                  )),
              Icon(
                Icons.shopping_cart_outlined,
                color: Colors.teal,
              ),
            ],
          ),
        ),
        Image(
            image: AssetImage('assets/image/drugs.png'),
            height: 200,
            width: 200),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 340,
            height: 400,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30), color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 10, left: 20, right: 20, bottom: 17),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Multi Vitamins',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 25),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'go pills',
                              style: TextStyle(color: Colors.black38),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              children: [
                                Icon(Icons.star_rounded,
                                    color: Colors.yellowAccent.shade700),
                                Icon(Icons.star_rounded,
                                    color: Colors.yellowAccent.shade700),
                                Icon(Icons.star_rounded,
                                    color: Colors.yellowAccent.shade700),
                                Icon(Icons.star_rounded,
                                    color: Colors.yellowAccent.shade700),
                                Icon(
                                  Icons.star_outline,
                                  size: 22,
                                  color: Colors.yellowAccent.shade700,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  '4.0',
                                  style: TextStyle(
                                    color: Colors.black38,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.add_circle_outline_outlined,
                                    size: 30),
                                color: Color(0xfffb8886f)),
                            SizedBox(height: 5),
                            Text("1",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18)),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.remove_circle_outline_outlined,
                                    size: 30),
                                color: Color(0xfffb8886f)),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Product Detail',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                      'This medication is a multivitamin'
                      ' product used to treat or prevent'
                      ' vitamin deficiency due to poor diet,.'
                      ' certain illnesses, or during pregnancy. '
                      'Vitamins are important building blocks of'
                      'the body and help keep you in good health.',
                      style: TextStyle(color: Colors.grey)),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('\$217',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(width: 10),
                      Text('\$287',
                          style: TextStyle(
                              decoration: TextDecoration.lineThrough,
                              color: Colors.grey)),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xfffb886f),
                        ),
                        child: Icon(Icons.favorite_border, color: Colors.white),
                      ),
                      Container(
                        height: 60,
                        width: 225,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xff2A8C8B),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.shopping_cart,
                                color: Colors.white, size: 23),
                            SizedBox(width: 10),
                            Text('Add to Basket',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        )
      ]),
    );
  }
}
*/
