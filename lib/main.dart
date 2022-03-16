import 'package:ecommerce/body.dart';
import 'package:ecommerce/bottom_drawer.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main() {
  // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
  //   systemNavigationBarColor: Color(0xffEC4207),
  // statusBarColor: Color(0xffEC4207),
  //));

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: HomePage(),
      //   initialRoute: 'drawer',
      routes: {
        BottomSheetWidget.routeName: (ctx) => BottomSheetWidget(),
        HomePage1.routeName:(ctx)=>HomePage1(),
        HomePage.routeName:(ctx)=>HomePage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  static String routeName= 'home';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int cuttentTab = 0;
  int activeIndex = 0;
  bool isLoading = true;
  final PageStorageBucket backet = PageStorageBucket();
  List<String> text = [
    'High Waist Pants',
    'Mini Dress',
    'High Waist Pants',
    'Mini Dress',
  ];
  List<String> price = ['\$ 27.90', '\$ 79.90', '\$ 27.90', '\$ 79.90'];

   Widget currentScreen = HomePage();
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {


    return Scaffold(

      appBar: PreferredSize(
        preferredSize: Size.fromHeight(10.0),
        child: AppBar(
          backgroundColor: Color(0xffEC4207),
          elevation: 0,
        ),
      ),
       key: _scaffoldKey,

      body: Column(
        children: [
          Container(
            height: 130.0,
            child: Stack(
              children: <Widget>[

                ClipPath(
                  clipper: RoundShape(),
                  child: Container(
                    color: Color(0xffEC4207),
                    width: MediaQuery.of(context).size.width,
                    height: 100.0,
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 25),
                            child: IconButton(
                              icon: Icon(
                                Icons.menu,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                //print("your menu action here");
                                //_scaffoldKey.currentState!.openDrawer();
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 25),
                            child: Center(
                              child: Text(
                                "Home",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                          ),
                          Badge(
                            position: BadgePosition.topEnd(top: 4, end: 18),
                            badgeContent: Text(
                              '2',
                              style: TextStyle(  fontWeight: FontWeight.bold,fontSize: 10,color: Color(0xffEC4207)),
                            ),
                            badgeColor: Color(0xffFFFFFF),
                            toAnimate: false,
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 25),
                              child: IconButton(
                                onPressed: () {},
                                icon: ImageIcon(
                                  AssetImage(
                                      'assets/images/Notifications.png'),
                                  color: Color(0xffFFFFFF),
                                ),
                              ),
                            ),
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
                            keyboardType: TextInputType.text,
                            cursorColor: Colors.deepOrange,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                prefixIcon: Icon(
                                  Icons.search,
                                  color: Colors.grey,
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: BorderSide(
                                        color: Color(0xffFFFFFF))),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: BorderSide(
                                        color: Color(0xffFFFFFF))),
                                focusColor: Color(0xffFFFFFF),
                                fillColor: Color(0xffFFFFFF),
                                filled: true,
                                contentPadding: EdgeInsets.only(left: 22),

                                //labelText: 'User Name',
                                hintText: 'Search',
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

          Column(
            children: [
              SizedBox(height: 12),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '2703 results',
                      style: TextStyle(
                          color: Color(0xff77838f),
                          fontWeight: FontWeight.w400,
                          fontSize: 12),
                    ),
                    ImageIcon(AssetImage('assets/images/Icon1.png')),
                  ],
                ),
              ),
              CarouselSlider.builder(
                options: CarouselOptions(
                  height: 140,

                  viewportFraction: 1,
                  autoPlay: false,
                  //reverse: true,
                  //   enlargeStrategy: CenterPageEnlargeStrategy.height,
                  autoPlayInterval: Duration(seconds: 2),
                  onPageChanged: (index, reason) =>
                      setState(() => activeIndex = index),
                ),
                itemCount: 3,
                itemBuilder: (context, index, realIndex) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(22),
                            bottomLeft: Radius.circular(22)),
                      ),

                      // color: Colors.grey,
                      height: 158,
                      width: double.infinity,
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xffD8D8D8),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(22),
                                  bottomLeft: Radius.circular(22)),
                            ),
                            width: 130,
                            height: 158,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 95),
                                  height: 30,
                                  width: 80,
                                  decoration: BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.only(
                                        bottomRight: Radius.circular(12),
                                        topRight: Radius.circular(12),
                                      )),
                                  child: Center(
                                      child: Text(
                                    'Sponsored',
                                    style: TextStyle(color: Colors.white),
                                  )),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Stylish Patterned Bikini',
                                style: TextStyle(
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 14,
                                    color: Color(0xff1E2022)),
                              ),
                              Text(
                                'by Jarvis Pepperspray',
                                style: TextStyle(
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                    color: Color(0xff77838F)),
                              ),
                              SizedBox(height: 10),
                              Text(
                                '\$65.00',
                                style: TextStyle(
                                    color: Color(0xffEC4207),
                                    fontSize: 22,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
              SizedBox(
                height: 8,
              ),
              buildIndicator(),
              SizedBox(height: 20),
            ],
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: Container(
                  child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 4,
                        mainAxisExtent: 241,
                      ),
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return Container(
                          height: 300,
                          width: 168,
                          decoration: BoxDecoration(
                              // borderRadius: BorderRadius.circular(22),
                              ),
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(22.0),
                            ),
                            child: Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(22),
                                      topLeft: Radius.circular(22),
                                    ),
                                    color: Color(0xffD8D8D8),
                                  ),
                                  width: double.infinity,
                                  height: 168,
                                  child: Align(
                                      alignment: Alignment.topRight,
                                      child: Padding(
                                        padding: const EdgeInsets.all(20.0),
                                        child: CircleAvatar(
                                          backgroundColor: Colors.white,
                                          radius: 18,
                                          child: IconButton(
                                            onPressed: () {},
                                            icon: ImageIcon(
                                              AssetImage(
                                                  'assets/images/Shape.png'),
                                              color: Color(0xffEC4207),
                                            ),
                                          ),
                                        ),
                                      )),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 13, left: 13),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            text[index],
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w700,
                                                letterSpacing: 1),
                                          ),
                                          Text(
                                            price[index],
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                letterSpacing: 1),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      })),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed(BottomSheetWidget.routeName);
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
                      cuttentTab = 0;
                    });
                  },
                  icon: ImageIcon(
                    AssetImage('assets/images/Home.png'),
                    color:
                        cuttentTab == 0 ? Color(0xffEC4207) : Color(0xff4D4D4D),
                  )),
              IconButton(
                  onPressed: () {
                    setState(() {

                      cuttentTab = 1;

                    });
                  Navigator.of(context).pushNamed(HomePage1.routeName);
                  },
                  icon: ImageIcon(
                    AssetImage('assets/images/Search.png'),
                    color:
                        cuttentTab == 1 ? Color(0xffEC4207) : Color(0xff4D4D4D),
                  )),
              IconButton(
                  onPressed: () {
                    setState(() {
                      cuttentTab = 2;
                    });
                  },
                  icon: ImageIcon(
                    AssetImage('assets/images/Message.png'),
                    color:
                        cuttentTab == 2 ? Color(0xffEC4207) : Color(0xff4D4D4D),
                  )),
              IconButton(
                  onPressed: () {
                    setState(() {
                      cuttentTab = 3;
                    });
                  },
                  icon: ImageIcon(
                    AssetImage('assets/images/Profile.png'),
                    color:
                        cuttentTab == 3 ? Color(0xffEC4207) : Color(0xff4D4D4D),
                  )),
            ],
         ),
        ),
       ),
    );
  }

  Widget buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: 3,
        effect: ScrollingDotsEffect(
          dotWidth: 8,
          dotHeight: 7,
          spacing: 7,
          dotColor: Color(0xffFBC9B8),
          activeDotColor: Colors.deepOrange,
        ),
      );
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
