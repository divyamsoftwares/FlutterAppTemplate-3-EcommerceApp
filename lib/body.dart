import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class HomePage1 extends StatefulWidget {
  static String routeName = '/home';
  @override
  _HomePage1State createState() => _HomePage1State();
}

class _HomePage1State extends State<HomePage1> with TickerProviderStateMixin {
  PageController _myPage = PageController(initialPage: 0);
  int currentIndex = 1;
  int currentTab = 1;
  List<String> name = [
    "High Waist Pants",
    "Grey Tights",
    "Light blue pants",
    "Light blue pants",
  ];
  List<String> Name =[
    "Piff Jenkins",
    "Giles Posture",
    "Justin Case",
    "Brian Cumin",
    "Alan Fresco",
    "Fleece Marigold",
    "Gunther Beard",
    "Fig Nelson",
  ];
  List<String> comment =[
    "likes your photo",
    "comment on your photo",
    "likes your photo",
    "likes your photo",
    "comment on your photo",
    "likes your photo",
    "likes your photo",
    "comment on your photo",
  ];
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    return Scaffold(
      drawer: Padding(
        padding: const EdgeInsets.only(right: 70),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white54,
              borderRadius: BorderRadius.all(Radius.circular(50))),
          child: Padding(
            padding: const EdgeInsets.only(right: 8),
            child: Container(
              width: double.infinity,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(50),
                    bottomRight: Radius.circular(50)),
                child: Drawer(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 50, right: 40),
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: Color(0xFFEC4207),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            child: InkWell(
                                onTap: () {
                                  Navigator.of(context).pop();
                                },
                                child: Image.asset("assets/images/x.png")),
                          ),
                        ],
                      ),
                      SizedBox(height: 150),
                      Container(
                        height: 90,
                        width: 90,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.1),
                              spreadRadius: 7,
                              blurRadius: 10,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(3.5),
                          child: Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                              color: Color(0xFFD8D8D8),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 17),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Piff Jenkins",
                            style: TextStyle(
                                color: Color(0xFF333333),
                                fontSize: 16,
                                fontWeight: FontWeight.w700),
                          ),
                          SizedBox(height: 6),
                          Text(
                            "@piffjenkins",
                            style: TextStyle(
                                color: Color(0xFF686363),
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                      SizedBox(height: 35),
                      Divider(thickness: 0),
                      SizedBox(height: 80),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                              onTap: () {},
                              child: Text(
                                "Profile",
                                style: TextStyle(
                                    color: Color(0xFF333333),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400),
                              )),
                          SizedBox(height: 20),
                          InkWell(
                              onTap: () {},
                              child: Text(
                                "Products You Saved",
                                style: TextStyle(
                                    color: Color(0xFF333333),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                              )),
                          SizedBox(height: 20),
                          InkWell(
                              onTap: () {},
                              child: Text(
                                "Products You Like",
                                style: TextStyle(
                                    color: Color(0xFF333333),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                              )),
                          SizedBox(height: 20),
                          InkWell(
                              onTap: () {},
                              child: Text(
                                "Add Product",
                                style: TextStyle(
                                    color: Color(0xFF333333),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                              )),
                          SizedBox(height: 20),
                          InkWell(
                              onTap: () {},
                              child: Text(
                                "Settings",
                                style: TextStyle(
                                    color: Color(0xFF333333),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                              )),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      key: _scaffoldKey,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(10.0),
        child: AppBar(
          backgroundColor: Color(0xffEC4207),
          elevation: 0,
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 130.0,
            child: Stack(
              children: <Widget>[
                ClipPath(
                  clipper: RoundShape(),
                  child: Container(
                    color: Color(0xFFEC4207),
                    width: MediaQuery.of(context).size.width,
                    height: 100.0,
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 14,bottom: 25),
                            child: IconButton(
                                onPressed: (){
                                  _scaffoldKey.currentState!.openDrawer();
                                },
                                icon: Icon(Icons.menu,color: Colors.white,)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 25),
                            child: Center(
                              child: Text(
                                "Pants",
                                style: TextStyle(color: Colors.white, fontSize: 18.0),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 14),
                            child: Badge(
                                badgeColor: Colors.white,
                                position: BadgePosition.bottomEnd(bottom: 35, end: 5),
                                badgeContent: Text(
                                  '2',
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFFEC4207)),
                                ),
                                child: InkWell(
                                  onTap: () {
                                    showModalBottomSheet(
                                        constraints: const BoxConstraints(maxHeight:800),
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.only(
                                                topRight: Radius.circular(40),
                                                topLeft: Radius.circular(40))),
                                        backgroundColor: Colors.white54,
                                        context: context,
                                        builder: (context) {
                                          return Container(

                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                                color: Colors.white38,
                                                borderRadius: BorderRadius.only(
                                                    topRight: Radius.circular(40),
                                                    topLeft: Radius.circular(40))),
                                            child: Container(
                                              margin: EdgeInsets.only(top: 10),
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius: BorderRadius.only(
                                                      topRight: Radius.circular(40),
                                                      topLeft: Radius.circular(40))),
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 14, right: 14),
                                                child: Container(
                                                  child: Column(
                                                    children: [
                                                      SizedBox(height: 7),
                                                      Container(
                                                        height: 4,
                                                        width: 90,
                                                        decoration: BoxDecoration(
                                                            color: Color(0xFFD8DBDE),
                                                            borderRadius: BorderRadius.all(
                                                                Radius.circular(4.5))),
                                                      ),
                                                      SizedBox(height: 30),
                                                      Stack(

                                                        children: [
                                                          Center(
                                                            child: Text(
                                                              "Notifications",
                                                              style: TextStyle(
                                                                  fontSize: 16,
                                                                  fontWeight: FontWeight.w600,
                                                                  color: Color(0xFF333333)),
                                                            ),
                                                          ),

                                                          Row(
                                                            mainAxisAlignment: MainAxisAlignment.end,
                                                            children: [
                                                              InkWell(
                                                                onTap: () {
                                                                  Navigator.of(context).pop();
                                                                },
                                                                child:
                                                                Image.asset("assets/images/x1.png"),
                                                              ),
                                                            ],
                                                          )
                                                        ],
                                                      ),
                                                      SizedBox(height: 40),
                                                      Expanded(
                                                        child: ListView.builder(
                                                            itemCount: 8,
                                                            itemBuilder: (context, index) {
                                                              return Column(
                                                                children: [
                                                                  Row(
                                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                    children: [
                                                                      CircleAvatar(
                                                                        radius: 20,
                                                                        backgroundColor:
                                                                        Color(0xFFD8D8D8),
                                                                      ),
                                                                      SizedBox(width: 15),
                                                                      Row(
                                                                        children: [
                                                                          Column(
                                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                                            children: [
                                                                              Row(

                                                                                children: [
                                                                                  Text(
                                                                                    Name[index],
                                                                                    style: TextStyle(
                                                                                        color: Color(
                                                                                            0xFFEC4207),
                                                                                        fontSize:
                                                                                        12),
                                                                                  ),
                                                                                  SizedBox(width: 3),
                                                                                  Text(
                                                                                    comment[index],
                                                                                    style: TextStyle(
                                                                                        color: Colors
                                                                                            .black,
                                                                                        fontSize:
                                                                                        12),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                              SizedBox(height: 5),
                                                                              Text(
                                                                                "2 hours ago",
                                                                                style: TextStyle(
                                                                                    color: Color(
                                                                                        0xFFC1C1C1),
                                                                                    fontSize: 12),
                                                                              ),
                                                                            ],
                                                                          )
                                                                        ],
                                                                      ),
                                                                      Spacer(),
                                                                      PopupMenuButton(

                                                                          icon:  Icon(Icons.more_horiz, color: Color(0xFFEC4207)),
                                                                          itemBuilder: (context) =>
                                                                          [
                                                                            PopupMenuItem(
                                                                              child:
                                                                              Text("First"),
                                                                              value: 1,
                                                                            ),
                                                                          ]),
                                                                    ],
                                                                  ),
                                                                  SizedBox(height: 2),
                                                                  Divider(thickness: 0,),
                                                                  SizedBox(height: 2),
                                                                ],
                                                              );
                                                            }),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          );
                                        });
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.only(bottom: 25),
                                    child: ImageIcon(
                                      AssetImage("assets/images/Notifications.png"),
                                      color: Colors.white,
                                    ),
                                  ),
                                )),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 60.0,
                  left: 40.0,
                  right: 40.0,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      children: [
                        Expanded(
                        child: TextFormField(
                          cursorColor: Colors.white,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              prefixIcon: Icon(
                                Icons.search,
                                color: Colors.grey,
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide:
                                BorderSide(color: Color(0xFFFFFFFF)),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide:
                                BorderSide(color: Color(0xFFFFFFFF)),
                              ),
                              focusColor: Color(0xFFFFFFFF),
                              fillColor: Color(0xFFFFFFFF),
                              filled: true,
                              contentPadding: EdgeInsets.only(left: 27),
                              hintText: "Search",
                              hintStyle: TextStyle(color: Colors.grey)),
                        ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 14, right: 14),
                        child: Container(
                          child: Column(
                            children: [
                              Container(
                                height: 48,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: Color(0xFFF5F5F5),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    TabBar(
                                      indicatorPadding: EdgeInsets.only(
                                           top: 2, bottom: 2),

                                      indicator: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.all(Radius.circular(10)),
                                        color: Color(0xFFFFFFFF),
                                      ),
                                      indicatorColor: Colors.transparent,
                                      controller: _tabController,
                                      labelColor: Color(0xFFEC4207),
                                      unselectedLabelColor: Colors.grey,
                                      isScrollable: true,
                                      tabs: [
                                        SizedBox(
                                          height: 40,
                                          width: 75,
                                          child: Tab(
                                              // iconMargin: EdgeInsets.only(left: 30),
                                              child: Text("Woman",
                                                  style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.normal,
                                                  ))),
                                        ),
                                        SizedBox(
                                          height: 40,
                                          width: 75,
                                          child: Tab(
                                              //  iconMargin: EdgeInsets.only(left: 30),
                                              child: Text("Man",
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.normal))),
                                        ),
                                        SizedBox(
                                          height: 40,
                                          width: 75,
                                          child: Tab(
                                              // iconMargin: EdgeInsets.only(right: 30),
                                              child: Text("Child",
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.normal))),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 30),
                              Row(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Sale",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xFF1E2022)),
                                      ),
                                      SizedBox(height: 4),
                                      Text(
                                        "super summer sale",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xFF77838F)),
                                      ),
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 22),
                      Container(
                        margin: EdgeInsets.only(left: 14),
                        height: 235,
                        child: Expanded(
                          child: ListView.builder(
                            itemCount: 4,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 15),
                                    child: Container(
                                      height: 168,
                                      width: 142,
                                      decoration: BoxDecoration(
                                          color: Color(0xFFD8D8D8),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(22))),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 14, top: 14),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              height: 24,
                                              width: 48,
                                              decoration: BoxDecoration(
                                                  color: Color(0xFFEC4207),
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(
                                                              12))),
                                              child: Center(
                                                  child: Text(
                                                "20%",
                                                style: TextStyle(
                                                    color: Colors.white),
                                              )),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 113, top: 145),
                                    child: Container(
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color(0xFFFFFFFF),
                                      ),
                                      child: ImageIcon(
                                        AssetImage("assets/images/Shape.png"),
                                        color: Color(0xFFEC4207),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 175),
                                    child: Row(
                                      children: [
                                        Image.asset("assets/images/star.png"),
                                        SizedBox(width: 4),
                                        Image.asset("assets/images/star.png"),
                                        SizedBox(width: 4),
                                        Image.asset("assets/images/star.png"),
                                        SizedBox(width: 4),
                                        Image.asset("assets/images/star.png"),
                                        SizedBox(width: 4),
                                        Image.asset("assets/images/star.png"),
                                        SizedBox(width: 4),
                                        Text(
                                          "(10)",
                                          style: TextStyle(
                                              color: Color(0xFF77838F),
                                              fontSize: 10),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 195),
                                    child: Text(
                                      name[index],
                                      style: TextStyle(
                                          color: Color(0xFF1E2022),
                                          fontWeight: FontWeight.w600,
                                          fontSize: 14),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 215),
                                    child: Row(
                                      children: [
                                        Text(
                                          "\$ 27.00",
                                          style: TextStyle(
                                              decoration:
                                                  TextDecoration.lineThrough,
                                              color: Color(0xFF77838F),
                                              fontWeight: FontWeight.w400,
                                              fontSize: 12),
                                        ),
                                        SizedBox(width: 4),
                                        Text(
                                          "\$ 27.90",
                                          style: TextStyle(
                                              color: Color(0xFFEC4207),
                                              fontWeight: FontWeight.w400,
                                              fontSize: 16),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              );
                            },
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 14, top: 38),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "New",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xFF1E2022)),
                                    ),
                                    SizedBox(height: 4),
                                    Text(
                                      "You’ve never seen before!",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xFF77838F)),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            SizedBox(height: 22),
                            Container(
                              // margin: EdgeInsets.only(left:14 ),
                              height: 235,
                              child: Expanded(
                                child: ListView.builder(
                                  itemCount: 4,
                                  scrollDirection: Axis.horizontal,
                                  //physics: BouncingScrollPhysics(),
                                  itemBuilder: (context, index) {
                                    return Stack(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              right: 15),
                                          child: Container(
                                            height: 168,
                                            width: 142,
                                            decoration: BoxDecoration(
                                                color: Color(0xFFD8D8D8),
                                                borderRadius:
                                                    BorderRadius.all(
                                                        Radius.circular(22))),
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 14, top: 14),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    height: 24,
                                                    width: 48,
                                                    decoration: BoxDecoration(
                                                        color:
                                                            Color(0xFF1E2022),
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius
                                                                    .circular(
                                                                        12))),
                                                    child: Center(
                                                        child: Text(
                                                      "New",
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 14),
                                                    )),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 113, top: 145),
                                          child: Container(
                                            height: 30,
                                            width: 30,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Color(0xFFFFFFFF),
                                            ),
                                            child: ImageIcon(
                                              AssetImage("assets/images/Shape.png"),
                                              color: Color(0xFFEC4207),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 175),
                                          child: Row(
                                            children: [
                                              Image.asset(
                                                  "assets/images/star.png"),
                                              SizedBox(width: 4),
                                              Image.asset(
                                                  "assets/images/star.png"),
                                              SizedBox(width: 4),
                                              Image.asset(
                                                  "assets/images/star.png"),
                                              SizedBox(width: 4),
                                              Image.asset(
                                                  "assets/images/star.png"),
                                              SizedBox(width: 4),
                                              Image.asset(
                                                  "assets/images/star.png"),
                                              SizedBox(width: 4),
                                              Text(
                                                "(10)",
                                                style: TextStyle(
                                                    color: Color(0xFF77838F),
                                                    fontSize: 10),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 195),
                                          child: Text(
                                            name[index],
                                            style: TextStyle(
                                                color: Color(0xFF1E2022),
                                                fontWeight: FontWeight.w600,
                                                fontSize: 14),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 215),
                                          child: Row(
                                            children: [
                                              Text(
                                                "\$ 27.00",
                                                style: TextStyle(
                                                    color: Color(0xFF77838F),
                                                    fontWeight:
                                                        FontWeight.w400,
                                                    fontSize: 12),
                                              ),
                                              SizedBox(width: 4),
                                              Text(
                                                "\$ 27.90",
                                                style: TextStyle(
                                                    color: Color(0xFFEC4207),
                                                    fontWeight:
                                                        FontWeight.w400,
                                                    fontSize: 16),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    );
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {

        },
        child: ImageIcon(AssetImage('assets/images/Icon.png')),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: AutomaticNotchedShape(RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(21), topRight: Radius.circular(21)),
        )),
        notchMargin: 10,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              IconButton(
                  onPressed: () {
                    setState(() {
                      currentTab = 0;
                    });
                    Navigator.of(context).pushNamed(HomePage.routeName);
                  },
                  icon: ImageIcon(
                    AssetImage('assets/images/Home.png'),
                    color:
                    currentTab == 0 ? Color(0xffEC4207) : Color(0xff4D4D4D),
                  )),
              IconButton(
                  onPressed: () {
                    setState(() {

                      currentTab = 1;

                    });

                  },
                  icon: ImageIcon(
                    AssetImage('assets/images/Search.png'),
                    color:
                    currentTab == 1 ? Color(0xffEC4207) : Color(0xff4D4D4D),
                  )),
              IconButton(
                  onPressed: () {
                    setState(() {
                      currentTab = 2;
                    });
                  },
                  icon: ImageIcon(
                    AssetImage('assets/images/Message.png'),
                    color:
                    currentTab == 2 ? Color(0xffEC4207) : Color(0xff4D4D4D),
                  )),
              IconButton(
                  onPressed: () {
                    setState(() {
                      currentTab = 3;
                    });
                  },
                  icon: ImageIcon(
                    AssetImage('assets/images/Profile.png'),
                    color:
                    currentTab == 3 ? Color(0xffEC4207) : Color(0xff4D4D4D),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

class RoundShape extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    double height = size.height;
    double width = size.width;
    double curveHeight = size.height / 4;
    var p = Path();
    p.lineTo(0, height - curveHeight);
    p.quadraticBezierTo(width / 2, height, width, height - curveHeight);
    p.lineTo(width, 0);
    p.close();
    return p;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) => true;
}
