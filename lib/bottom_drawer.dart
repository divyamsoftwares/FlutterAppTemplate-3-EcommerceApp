import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BottomSheetWidget extends StatefulWidget {
  static String routeName = 'drawer';

  @override
  _BottomSheetWidgetState createState() => _BottomSheetWidgetState();
}

class _BottomSheetWidgetState extends State<BottomSheetWidget>
    with TickerProviderStateMixin {
  int cuttentTab = 0;
  int activeIndex = 0;
  int count = 1;
  bool isTrue = false;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(vsync: this, length: 3);
    final controller = PageController(viewportFraction: 0.8, keepPage: true);

    return Scaffold(
      backgroundColor: Colors.grey,
      body: SafeArea(
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back),
                color: Colors.white,
              ),
              IconButton(
                  onPressed: () {},
                  icon: ImageIcon(
                    AssetImage('assets/images/Shape (1).png'),
                    color: Colors.white,
                  ))
            ],
          ),
          //  color: Colors.grey,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              backgroundColor: Colors.transparent,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(50.0),
                ),
              ),
              context: context,
              builder: (BuildContext context) {
                return ListView(
                  children: [
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            child: SmoothPageIndicator(
                              controller: controller,
                              count: 3,
                              effect: ScrollingDotsEffect(
                                dotWidth: 8,
                                dotHeight: 7,
                                spacing: 7,
                                dotColor: Colors.grey,
                                activeDotColor: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      // height: 34 ,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50.0),
                          topRight: Radius.circular(50.0),
                        ),
                        color: Colors.grey.shade300,
                      ),
                      child: Column(
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(50.0),
                                topRight: Radius.circular(50.0),
                              ),
                              color: Colors.transparent,
                            ),
                            height: 12,
                          ),
                          Container(
                              // height:4800,
                              height: MediaQuery.of(context).size.height,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(50.0),
                                  topRight: Radius.circular(50.0),
                                ),
                                color: Colors.white,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 15, top: 20, right: 15),
                                child: Column(
                                  children: [
                                    Center(
                                      child: Container(
                                        height: 4,
                                        width: 90,
                                        decoration: BoxDecoration(
                                          color: Color(0xffD8DBDE),
                                          borderRadius:
                                              BorderRadius.circular(4.5),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 20),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Choose Size",
                                            style: TextStyle(
                                                letterSpacing: 2,
                                                color: Colors.black,
                                                fontWeight: FontWeight.w700,
                                                fontSize: 16),
                                          ),
                                          Container(
                                            child: Row(
                                              children: [
                                                CircleAvatar(
                                                  child: ImageIcon(AssetImage(
                                                      'assets/images/share.png')),
                                                ),
                                                SizedBox(width: 10),
                                                CircleAvatar(
                                                  child: ImageIcon(AssetImage(
                                                      'assets/images/Shape (2).png')),
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: TabBar(
                                          indicatorColor: Colors.transparent,

                                          indicator: BoxDecoration(
                                            color: Color(0xffEC4207),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          controller: _tabController,
                                          isScrollable: true,
                                          labelPadding: EdgeInsets.only(
                                              left: 10, right: 10),
                                          labelColor: Colors.white,
                                          unselectedLabelColor: Colors.grey,
                                          tabs: [
                                            SizedBox(
                                              width: 70,
                                              height: 40,
                                              child: Tab(
                                                child: Center(
                                                  child: Container(
                                                    child: Text(
                                                      'Small',
                                                      style: TextStyle(
                                                        letterSpacing: 1,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 60,
                                              child: Tab(
                                                child: Text(
                                                  'Medium',
                                                  style: TextStyle(
                                                    letterSpacing: 1,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 60,
                                              child: Tab(
                                                child: Text(
                                                  'Large',
                                                  style: TextStyle(
                                                    letterSpacing: 1,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 20),
                                    Column(
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              'Description',
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w700,
                                                  color: Colors.black,
                                                  letterSpacing: 1),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 15),
                                        Text(
                                          'Nulla eu tempor tortor. Sed iaculis sit amet purus eu pharetra. Maecenas eu risus sem. Fusce sollicitudin sollicitudin sapien.',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14,
                                              letterSpacing: 1,
                                              color: Color(0xff77838F)),
                                        ),
                                        SizedBox(height: 15),
                                        Row(
                                          children: [
                                            Text(
                                              '\$159.90',
                                              style: TextStyle(
                                                  color: Color(0xffEC4207),
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w700,
                                                  letterSpacing: 0.5),
                                            ),
                                            SizedBox(width: 3),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 12),
                                              child: Text(
                                                '\$200',
                                                style: TextStyle(
                                                    decoration: TextDecoration
                                                        .lineThrough,
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 12,
                                                    color: Color(0xff9C9C9C)),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 30),
                                        Row(
                                          children: [
                                            Container(
                                              child: SizedBox(
                                                //width: 120,
                                                child: Container(
                                                    height: 25,
                                                    width: 100,
                                                    decoration: BoxDecoration(
                                                      //border: Border.all(color: Colors.deepOrange),
                                                      // color: Colors.deepOrange,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              4),
                                                    ),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceAround,
                                                      children: [
                                                        InkWell(
                                                          onTap: () {
                                                            if (count > 1) {
                                                              setState(() {
                                                                count--;
                                                              });
                                                            }
                                                            if (count == 1) {
                                                              setState(() {
                                                                isTrue = false;
                                                              });
                                                            }
                                                          },
                                                          child: Container(
                                                            height: 22,
                                                            width: 22,
                                                            decoration: BoxDecoration(
                                                                border: Border.all(
                                                                    color: Color(
                                                                        0xff6C6C6C)),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            5)),
                                                            child: Icon(
                                                              Icons.remove,
                                                              size: 15,
                                                              color:
                                                                  Colors.black,
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          height: 23,
                                                          width: 23,
                                                          child: Center(
                                                            child: Text(
                                                              "$count",
                                                              style: TextStyle(
                                                                  color: Color(
                                                                      0xff686363),
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w700,
                                                                  fontSize: 16),
                                                            ),
                                                          ),
                                                        ),
                                                        InkWell(
                                                            onTap: () {
                                                              setState(() {
                                                                count++;
                                                              });
                                                            },
                                                            child: Container(
                                                              height: 22,
                                                              width: 22,
                                                              decoration: BoxDecoration(
                                                                  border: Border.all(
                                                                      color: Color(
                                                                          0xff6C6C6C)),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              5)),
                                                              child: Icon(
                                                                Icons.add,
                                                                size: 15,
                                                                color: Colors
                                                                    .black,
                                                              ),
                                                            )),
                                                      ],
                                                    )),
                                              ),
                                            ),
                                            Spacer(),
                                            Container(
                                                height: 40,
                                                width: 185,
                                                child: ElevatedButton(
                                                    style: ButtonStyle(
                                                        shape: MaterialStateProperty.all(
                                                            RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            20.0),
                                                                side: BorderSide(
                                                                    color: Color(
                                                                        0xffEC4207))))),
                                                    onPressed: () {},
                                                    child: Text(
                                                      'Buy',
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.w700),
                                                    ))),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              )),
                        ],
                      ),
                    ),
                  ],
                );
              });
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
                      // cuttentscreen = Home(),
                      cuttentTab = 1;
                    });
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
}
