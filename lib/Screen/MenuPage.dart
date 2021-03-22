import 'dart:io';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'dart:async';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';

class MENUPAGE extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MENUPAGESTATE();
  }
}

class MENUPAGESTATE extends State<MENUPAGE> {
  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();

    return Scaffold(
        key: scaffoldKey,
        backgroundColor: const Color(0xffffffff),
        body: DefaultTabController(
          length: 4,
          child: Container(
              child: ListView(
            shrinkWrap: true,
            physics: ClampingScrollPhysics(),
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                      height: 250,
                      width: MediaQuery.of(context).size.width,
                      color: Color(0xFF67b9fb),
                      child: Image.asset('assets/images/mobile.jpg',
                          fit: BoxFit.cover)),
                  Container(
                    height: 250,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.black38,
                    ),
                    child: Center(
                        child: Text('CLOSED',
                            style: GoogleFonts.openSans(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold))),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Padding(
                        padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.width / 10,
                            left: MediaQuery.of(context).size.width / 500),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  shape: BoxShape.circle),
                              width: 40,
                              height: 40,
                              child: Center(
                                child: Icon(
                                  Icons.arrow_back,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  shape: BoxShape.circle),
                              width: 40,
                              height: 40,
                              child: Center(
                                child: Icon(
                                  Icons.help,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        )),
                  ),
                ],
              ),
              Container(
                  height: 100.0,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(children: <Widget>[
                      Text(
                        'Chicken Republic - Ugbowo Lagos Road Benin City Edo State Ugbowo Lagos Road Benin City ',
                        style: GoogleFonts.openSans(
                            fontSize: 20,
                            color: Color(0xFF272b3f),
                            fontWeight: FontWeight.bold),
                        maxLines: 2,
                        softWrap: true,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Row(
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
                          Text(
                            'Min Order ₦ 800 . Delivery fee ₦ 450',
                            style: TextStyle(
                              color: Colors.black38,
                            ),
                          ),
                        ],
                      ),
                    ]),
                  )),
              TabBar(
                isScrollable: true,
                unselectedLabelColor: Colors.black38,
                onTap: (v) {},
                labelColor: Colors.black,
                tabs: [
                  Tab(
                    child: Text('REGULAR COMBO MENU'),
                  ),
                  Tab(
                    child: Text('MEAL'),
                  ),
                  Tab(
                    child: Text('SIDES & SAUCES'),
                  ),
                  Tab(
                    child: Text('DRINKS'),
                  )
                ],
              ),
              Container(
                height: MediaQuery.of(context).size.height,
                child: TabBarView(
                  children: [
                    ListView(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      children: [
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              'REGULAR COMBO MENU',
                              style: GoogleFonts.poppins(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w400,
                                  color:  Colors.black38),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                        ListView.builder(
                          shrinkWrap: true,
                         physics: ScrollPhysics(),
                          itemCount: 20,
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
//              Navigator.push(
//              context,
//              PageRouteBuilder(
//              pageBuilder:
//              (context, animation, secondaryAnimation) {
//              return menuitemdetail(
//              menu_description:
//              snapshot.data[index].menu_description,
//              menu_picture1:
//              snapshot.data[index].menu_picture1,
//              menu_price: snapshot.data[index].menu_price,
//              menu_title: snapshot.data[index].menu_title,
//              vendor_phone: vendor_phone,
//              );
//              },
//              transitionsBuilder: (context, animation,
//              secondaryAnimation, child) {
//              return FadeTransition(
//              opacity: animation,
//              child: child,
//              );
//              },
//              ),
//              );
                              },
                              child: ListTile(
                                leading: Container(
                                  child: Image.asset('assets/images/mobile.jpg',
                                      fit: BoxFit.cover),
                                  width: 70.0,
                                  height: 70.0,
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        offset: const Offset(1.0, 1.0),
                                        blurRadius: .3,
                                        spreadRadius: .3,
                                      ),
                                    ],
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                        width: 0.5,
                                        color: Colors.black12),
                                  ),
                                ),
                                title: Text(
                                  'Express Meal',
                                  style: GoogleFonts.poppins(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400,
                                      color:  Colors.black,
                                      ),
                                  textAlign: TextAlign.left,
                                ),
                                subtitle: Column(
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Text(
                                          'spicy fried rice and chicken',
                                          style: GoogleFonts.poppins(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w400,
                                              color:  Colors.black38,
                                              ),
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Text(
                                          '50\$',
                                          style: GoogleFonts.poppins(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w400,
                                              color:  Colors.black38
                                          ),
                                        ),
                                      ),
                                    ),
                                    Divider(),
                                  ],
                                ),
                              ),
                            );
                          },
                        )
                      ],
                    ),



                    ListView(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      children: [
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              'MEAL',
                              style: GoogleFonts.poppins(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w400,
                                  color:  Colors.black38),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                        ListView.builder(
                          shrinkWrap: true,
                          physics: ScrollPhysics(),
                          itemCount: 20,
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
//              Navigator.push(
//              context,
//              PageRouteBuilder(
//              pageBuilder:
//              (context, animation, secondaryAnimation) {
//              return menuitemdetail(
//              menu_description:
//              snapshot.data[index].menu_description,
//              menu_picture1:
//              snapshot.data[index].menu_picture1,
//              menu_price: snapshot.data[index].menu_price,
//              menu_title: snapshot.data[index].menu_title,
//              vendor_phone: vendor_phone,
//              );
//              },
//              transitionsBuilder: (context, animation,
//              secondaryAnimation, child) {
//              return FadeTransition(
//              opacity: animation,
//              child: child,
//              );
//              },
//              ),
//              );
                              },
                              child: ListTile(
                                leading: Container(
                                  child: Image.asset('assets/images/mobile.jpg',
                                      fit: BoxFit.cover),
                                  width: 70.0,
                                  height: 70.0,
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        offset: const Offset(1.0, 1.0),
                                        blurRadius: .3,
                                        spreadRadius: .3,
                                      ),
                                    ],
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                        width: 0.5,
                                        color: Colors.black12),
                                  ),
                                ),
                                title: Text(
                                  'Express Meal',
                                  style: GoogleFonts.poppins(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                    color:  Colors.black,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                                subtitle: Column(
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Text(
                                          'spicy fried rice and chicken',
                                          style: GoogleFonts.poppins(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w400,
                                            color:  Colors.black38,
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Text(
                                          '50\$',
                                          style: GoogleFonts.poppins(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w400,
                                              color:  Colors.black38
                                          ),
                                        ),
                                      ),
                                    ),
                                    Divider(),
                                  ],
                                ),
                              ),
                            );
                          },
                        )
                      ],
                    ),





                    ListView(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      children: [
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              'SIDE & SAUCES',
                              style: GoogleFonts.poppins(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w400,
                                  color:  Colors.black38),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                        ListView.builder(
                          shrinkWrap: true,
                          physics: ScrollPhysics(),
                          itemCount: 20,
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
//              Navigator.push(
//              context,
//              PageRouteBuilder(
//              pageBuilder:
//              (context, animation, secondaryAnimation) {
//              return menuitemdetail(
//              menu_description:
//              snapshot.data[index].menu_description,
//              menu_picture1:
//              snapshot.data[index].menu_picture1,
//              menu_price: snapshot.data[index].menu_price,
//              menu_title: snapshot.data[index].menu_title,
//              vendor_phone: vendor_phone,
//              );
//              },
//              transitionsBuilder: (context, animation,
//              secondaryAnimation, child) {
//              return FadeTransition(
//              opacity: animation,
//              child: child,
//              );
//              },
//              ),
//              );
                              },
                              child: ListTile(
                                leading: Container(
                                  child: Image.asset('assets/images/mobile.jpg',
                                      fit: BoxFit.cover),
                                  width: 70.0,
                                  height: 70.0,
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        offset: const Offset(1.0, 1.0),
                                        blurRadius: .3,
                                        spreadRadius: .3,
                                      ),
                                    ],
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                        width: 0.5,
                                        color: Colors.black12),
                                  ),
                                ),
                                title: Text(
                                  'Express Meal',
                                  style: GoogleFonts.poppins(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                    color:  Colors.black,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                                subtitle: Column(
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Text(
                                          'spicy fried rice and chicken',
                                          style: GoogleFonts.poppins(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w400,
                                            color:  Colors.black38,
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Text(
                                          '50\$',
                                          style: GoogleFonts.poppins(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w400,
                                              color:  Colors.black38
                                          ),
                                        ),
                                      ),
                                    ),
                                    Divider(),
                                  ],
                                ),
                              ),
                            );
                          },
                        )
                      ],
                    ),





                    ListView(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      children: [
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              'DRINKS',
                              style: GoogleFonts.poppins(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w400,
                                  color:  Colors.black38),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                        ListView.builder(
                          shrinkWrap: true,
                          physics: ScrollPhysics(),
                          itemCount: 20,
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
//              Navigator.push(
//              context,
//              PageRouteBuilder(
//              pageBuilder:
//              (context, animation, secondaryAnimation) {
//              return menuitemdetail(
//              menu_description:
//              snapshot.data[index].menu_description,
//              menu_picture1:
//              snapshot.data[index].menu_picture1,
//              menu_price: snapshot.data[index].menu_price,
//              menu_title: snapshot.data[index].menu_title,
//              vendor_phone: vendor_phone,
//              );
//              },
//              transitionsBuilder: (context, animation,
//              secondaryAnimation, child) {
//              return FadeTransition(
//              opacity: animation,
//              child: child,
//              );
//              },
//              ),
//              );
                              },
                              child: ListTile(
                                leading: Container(
                                  child: Image.asset('assets/images/mobile.jpg',
                                      fit: BoxFit.cover),
                                  width: 70.0,
                                  height: 70.0,
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        offset: const Offset(1.0, 1.0),
                                        blurRadius: .3,
                                        spreadRadius: .3,
                                      ),
                                    ],
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                        width: 0.5,
                                        color: Colors.black12),
                                  ),
                                ),
                                title: Text(
                                  'Express Meal',
                                  style: GoogleFonts.poppins(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                    color:  Colors.black,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                                subtitle: Column(
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Text(
                                          'spicy fried rice and chicken',
                                          style: GoogleFonts.poppins(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w400,
                                            color:  Colors.black38,
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Text(
                                          '50\$',
                                          style: GoogleFonts.poppins(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w400,
                                              color:  Colors.black38
                                          ),
                                        ),
                                      ),
                                    ),
                                    Divider(),
                                  ],
                                ),
                              ),
                            );
                          },
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          )),
        ));
  }
}
