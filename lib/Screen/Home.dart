import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:olilifood/Utils/Provider.dart';
import 'package:olilifood/Screen/MenuPage.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  final scafoldKey;
  var search;
  final data;
  final controller;

  Home(this.scafoldKey, this.data, this.controller);

  String getDistance({String rawDistance}) {
    String distance;
    if (rawDistance.length > 3) {
      distance = '$rawDistance' + 'km';
    } else {
      distance = '$rawDistance' + 'm';
    }
    return distance;
  }

  @override
  Widget build(BuildContext context) {
//    var network = Provider.of<WebServices>(context, listen: false);
//    var location = Provider.of<LocationService>(context);
    var data = Provider.of<DataProvider>(context);
    return CustomScrollView(
      physics: NeverScrollableScrollPhysics(),
      slivers: [
        SliverAppBar(
          forceElevated: true,
          backgroundColor: Colors.white,
          titleSpacing: 0.0,
          elevation: 2.5,
          shadowColor: Color(0xFFF1F1FD).withOpacity(0.5),
          automaticallyImplyLeading: false,
          title: Row(
            children: [
              InkWell(
                onTap: () {
                  scafoldKey.currentState.openDrawer();
                },
                child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Image.asset(
                      'assets/images/logo.png',
                      height: 80,
                      width: 80,
                    )),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Delivery to',
                      style: TextStyle(
                        fontSize: 15,
                        color: Color(0xFF272b3f),
                      )),
                  Row(
                    children: [
                      Text(
                        'Benin City',
                        style: TextStyle(
                          fontSize: 17,
                          color: Color(0xFF272b3f),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(
                        Icons.expand_more,
                        color: Colors.orange,
                        size: 18,
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
        SliverFillRemaining(
            child: ListView(
                padding: const EdgeInsets.only(top: 0),
                shrinkWrap: true,
                physics: ScrollPhysics(),
                children: [
              Container(
                padding: const EdgeInsets.only(top: 5.0, left: 10, right: 10),
                width: MediaQuery.of(context).size.width / 0.2,
                height: 60,
                child: InkWell(
                  splashColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () {
//                          Navigator.push(
//                            context,
//                            PageRouteBuilder(
//                              pageBuilder:
//                                  (context, animation, secondaryAnimation) {
//                                return SearchPage();
//                              },
//                              transitionsBuilder: (context, animation,
//                                  secondaryAnimation, child) {
//                                return FadeTransition(
//                                  opacity: animation,
//                                  child: child,
//                                );
//                              },
//                            ),
//                          );
                  },
                  child: Hero(
                    tag: 'searchButton',
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 500),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Color(0xFFFFFFFF),
                          border: Border.all(color: Colors.black12),
                          boxShadow: [
                            BoxShadow(
                                color: Color(0xFFF1F1FD).withOpacity(0.7),
                                blurRadius: 10.0,
                                offset: Offset(0.3, 4.0))
                          ],
                          borderRadius: BorderRadius.all(Radius.circular(7))),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10, right: 5),
                            child: Icon(
                              Icons.search,
                              color: Colors.black38,
                              size: 20,
                            ),
                          ),
                          Expanded(
                            child: TextField(
                                enabled: false,
                                obscureText: true,
                                style: TextStyle(color: Colors.black),
                                cursorColor: Colors.black,
                                decoration: InputDecoration.collapsed(
                                  enabled: false,
                                  hintStyle: TextStyle(
                                      color: Colors.black38, fontSize: 15),
                                  hintText: 'Search for your favourite',
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10, right: 5),
                            child: Icon(
                              FeatherIcons.filter,
                              color: Colors.black38,
                              size: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 10, bottom: 10),
                child: Text(
                  'RESTAURANTS',
                  style: TextStyle(color: Colors.black38, fontSize: 15),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, bottom: 10),
                child: Text('Big Chops, Small Money',
                    style: GoogleFonts.openSans(
                        fontSize: 20,
                        color: Color(0xFF272b3f),
                        fontWeight: FontWeight.bold)),
              ),
              Container(
                padding: const EdgeInsets.only(
                  top: 12.0,
                ),
                height: 310,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.only(bottom: 10),
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Container(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            padding: const EdgeInsets.only(left: 10, bottom: 3),
                            width: 290,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(4))),
                            child: Card(
                              elevation: 4,
                              child: Stack(
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Stack(
                                        children: [
                                          Container(
                                            height: 170,
                                            width: 280,
                                            clipBehavior:
                                                Clip.antiAliasWithSaveLayer,
                                            decoration: BoxDecoration(
                                                color: Colors.transparent,
                                                borderRadius: BorderRadius.only(
                                                    topLeft: Radius.circular(4),
                                                    topRight:
                                                        Radius.circular(4))),
                                            child: Image.asset(
                                                'assets/images/mobile.jpg',
                                                fit: BoxFit.cover),
                                          ),
                                          Container(
                                            clipBehavior:
                                                Clip.antiAliasWithSaveLayer,
                                            height: 170,
                                            width: 280,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(4),
                                                  topRight: Radius.circular(4)),
                                              color: Colors.black38,
                                            ),
                                            child: Center(
                                                child: Text('CLOSED',
                                                    style: GoogleFonts.openSans(
                                                        fontSize: 18,
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold))),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 8.0, bottom: 2, top: 23),
                                        child: Text('Chicken Republic - Ugbowo',
                                            style: GoogleFonts.openSans(
                                                fontSize: 16,
                                                color: Color(0xFF272b3f),
                                                fontWeight: FontWeight.bold)),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 8),
                                        child: Text(
                                          'Snadwiches • BreakFast • Buger • Meatpie',
                                          style: GoogleFonts.openSans(
                                            fontSize: 13,
                                            color: Colors.black38,
                                          ),
                                          maxLines: 1,
                                          softWrap: true,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 8.0, bottom: 12),
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.star_border,
                                              color: Colors.black38,
                                              size: 20,
                                            ),
                                            Text(
                                              '3.7',
                                              style: TextStyle(
                                                color: Colors.black38,
                                              ),
                                            ),
                                            Text('•   ₦₦ •  ',
                                                style: TextStyle(
                                                  color: Colors.black38,
                                                )),
                                            Icon(
                                              Icons.credit_card,
                                              color: Colors.black38,
                                              size: 20,
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                  Positioned(
                                    top: 145,
                                    left: 160,
                                    child: Container(
                                      width: 90,
                                      child: Chip(
                                          backgroundColor: Colors.white,
                                          elevation: 3,
                                          label: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              Text('45-65 ',
                                                  style: GoogleFonts.openSans(
                                                      fontSize: 15,
                                                      color: Color(0xFF272b3f),
                                                      fontWeight:
                                                          FontWeight.bold)),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    bottom: 1.2),
                                                child: Text('MIN',
                                                    style: GoogleFonts.openSans(
                                                      fontSize: 10,
                                                      color: Color(0xFF272b3f),
                                                    )),
                                              ),
                                            ],
                                          )),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, bottom: 10),
                child: Text('All Vendors',
                    style: GoogleFonts.openSans(
                        fontSize: 20,
                        color: Color(0xFF272b3f),
                        fontWeight: FontWeight.bold)),
              ),
              Container(
                padding: const EdgeInsets.only(
                  top: 12.0,
                ),
                height: MediaQuery.of(context).size.height + 130,
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  padding: const EdgeInsets.only(bottom: 10),
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageRouteBuilder(
                            pageBuilder:
                                (context, animation, secondaryAnimation) {
                              return MENUPAGE();
                            },
                            transitionsBuilder: (context, animation,
                                secondaryAnimation, child) {
                              return FadeTransition(
                                opacity: animation,
                                child: child,
                              );
                            },
                          ),
                        );
                      },
                      child: Container(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10))),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              padding: const EdgeInsets.only(bottom: 17),
                              width: 330,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(4))),
                              child: Card(
                                elevation: 4,
                                child: Stack(
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Stack(
                                          children: [
                                            Container(
                                              height: 170,
                                              width: 330,
                                              clipBehavior:
                                                  Clip.antiAliasWithSaveLayer,
                                              decoration: BoxDecoration(
                                                  color: Colors.transparent,
                                                  borderRadius:
                                                      BorderRadius.only(
                                                          topLeft:
                                                              Radius.circular(
                                                                  4),
                                                          topRight:
                                                              Radius.circular(
                                                                  4))),
                                              child: Image.asset(
                                                  'assets/images/mobile.jpg',
                                                  fit: BoxFit.cover),
                                            ),
                                            Container(
                                              clipBehavior:
                                                  Clip.antiAliasWithSaveLayer,
                                              height: 170,
                                              width: 330,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                    topLeft: Radius.circular(4),
                                                    topRight:
                                                        Radius.circular(4)),
                                                color: Colors.black38,
                                              ),
                                              child: Center(
                                                  child: Text('CLOSED',
                                                      style:
                                                          GoogleFonts.openSans(
                                                              fontSize: 18,
                                                              color:
                                                                  Colors.white,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold))),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 8.0, bottom: 2, top: 23),
                                          child: Text(
                                              'Chicken Republic - Ugbowo',
                                              style: GoogleFonts.openSans(
                                                  fontSize: 16,
                                                  color: Color(0xFF272b3f),
                                                  fontWeight: FontWeight.bold)),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 8),
                                          child: Text(
                                            'Snadwiches • BreakFast • Buger • Meatpie',
                                            style: GoogleFonts.openSans(
                                              fontSize: 13,
                                              color: Colors.black38,
                                            ),
                                            maxLines: 1,
                                            softWrap: true,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 8.0, bottom: 12),
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.star_border,
                                                color: Colors.black38,
                                                size: 20,
                                              ),
                                              Text(
                                                '3.7',
                                                style: TextStyle(
                                                  color: Colors.black38,
                                                ),
                                              ),
                                              Text('•   ₦₦ •  ',
                                                  style: TextStyle(
                                                    color: Colors.black38,
                                                  )),
                                              Icon(
                                                Icons.credit_card,
                                                color: Colors.black38,
                                                size: 20,
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                    Positioned(
                                      top: 145,
                                      left: 215,
                                      child: Container(
                                        width: 90,
                                        child: Chip(
                                            backgroundColor: Colors.white,
                                            elevation: 3,
                                            label: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: [
                                                Text('45-65 ',
                                                    style: GoogleFonts.openSans(
                                                        fontSize: 15,
                                                        color:
                                                            Color(0xFF272b3f),
                                                        fontWeight:
                                                            FontWeight.bold)),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          bottom: 1.2),
                                                  child: Text('MIN',
                                                      style:
                                                          GoogleFonts.openSans(
                                                        fontSize: 10,
                                                        color:
                                                            Color(0xFF272b3f),
                                                      )),
                                                ),
                                              ],
                                            )),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ]))
      ],
    );
  }
}
