import 'dart:io';
import 'dart:ui';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:olilifood/Utils/Provider.dart';
import 'package:olilifood/Screen/Home.dart';
import 'package:olilifood/Screen/MyOrders.dart';
import 'package:olilifood/Screen/Cart.dart';
import 'package:olilifood/Screen/Profile.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  HomePage();

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  PageController _myPage;
  final scafoldKey = GlobalKey<ScaffoldState>();


  @override
  void initState() {
    super.initState();

    // var data = Provider.of<Utils>(context, listen: false);
    var datas = Provider.of<DataProvider>(context, listen: false);
    datas.setSelectedBottomNavBar(0);

//    Provider.of<LocationService>(context, listen: false).getCurrentLocation();
    _myPage =
        PageController(initialPage: 0, viewportFraction: 1, keepPage: true);
  }

    @override
    void dispose() {
      _myPage.dispose();
      super.dispose();
    }

    @override
    Widget build(BuildContext context) {
      var data = Provider.of<DataProvider>(context);

      // FirebaseApi.updateUsertoOnline(datas.mobile_device_token);
      var widget = Scaffold(
        key: scafoldKey,
        drawer: SizedBox(
          width: 240,
          child: Drawer(
            child: Text(''), //DrawerWidget(context, _myPage),
          ),
        ),
        bottomNavigationBar: Container(
          height: 60,
          child: BottomNavigationBar(
              onTap: (index) {
                if (index == data.selectedPage) {} else {
                  _myPage.jumpToPage(index);
                  data.setSelectedBottomNavBar(index);
                }
              },
              elevation: 20,
              type: BottomNavigationBarType.fixed,
              currentIndex: data.selectedPage,
              unselectedItemColor: Color(0xFF555555),
              selectedItemColor: Colors.orange,
              selectedLabelStyle: TextStyle(fontSize: 12),
              unselectedLabelStyle: TextStyle(fontSize: 12),
              items: [
                BottomNavigationBarItem(
                  icon: Padding(
                    padding: const EdgeInsets.only(bottom: 1),
                    child: Icon(
                      data.selectedPage == 0
                          ? Icons.home_rounded
                          : Icons.home_outlined,
                      size: 28,
                    ),
                  ),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Padding(
                    padding: const EdgeInsets.only(bottom: 3),
                    child: Icon(data.selectedPage == 1
                        ? Icons.shopping_cart
                        : Icons.shopping_cart_outlined),
                  ),
                  label: 'Cart',
                ),
                BottomNavigationBarItem(
                  icon: Padding(
                    padding: const EdgeInsets.only(bottom: 3),
                    child: data.selectedPage == 2
                        ? Icon(
                      Icons.shopping_basket,
                      size: 25,
                    )
                        : Icon(Icons.shopping_basket_outlined),
                  ),
                  label: 'Orders',
                ),
                BottomNavigationBarItem(
                  icon: Padding(
                    padding: const EdgeInsets.only(bottom: 3),
                    child: Icon(Icons.apps),
                  ),
                  label: 'Profile',
                ),

              ]),
        ),
        body: WillPopScope(
          onWillPop: () {
            return showDialog(
                context: context,
                builder: (ctx) {
                  return BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
                    child: AlertDialog(
                      elevation: 6,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                              Radius.circular(32.0))),
                      content: Container(
                        height: 150,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Oops!!',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.orange,
                                  fontWeight: FontWeight.bold),
                            ),
                            Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.only(top: 15, bottom: 15),
                                  child: Center(
                                    child: Text(
                                      'DO YOU WANT TO EXIT THIS APP?',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black54,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            ButtonBar(
                                alignment: MainAxisAlignment.center,
                                children: [
                                  Material(
                                    borderRadius: BorderRadius.circular(26),
                                    elevation: 2,
                                    child: Container(
                                      height: 35,
                                      width: 100,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.orange),
                                          borderRadius:
                                          BorderRadius.circular(26)),
                                      child: FlatButton(
                                        onPressed: () {
                                          return exit(0);
                                        },
                                        color: Colors.orange,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                            BorderRadius.circular(26)),
                                        padding: EdgeInsets.all(0.0),
                                        child: Ink(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                              BorderRadius.circular(26)),
                                          child: Container(
                                            constraints: BoxConstraints(
                                                maxWidth: 190.0,
                                                minHeight: 53.0),
                                            alignment: Alignment.center,
                                            child: Text(
                                              "Yes",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Material(
                                    borderRadius: BorderRadius.circular(26),
                                    elevation: 2,
                                    child: Container(
                                      height: 35,
                                      width: 100,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.orange),
                                          borderRadius:
                                          BorderRadius.circular(26)),
                                      child: FlatButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        color: Colors.orange,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                            BorderRadius.circular(26)),
                                        padding: EdgeInsets.all(0.0),
                                        child: Ink(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                              BorderRadius.circular(26)),
                                          child: Container(
                                            constraints: BoxConstraints(
                                                maxWidth: 190.0,
                                                minHeight: 53.0),
                                            alignment: Alignment.center,
                                            child: Text(
                                              "No",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ]),
                          ],
                        ),
                      ),
                    ),
                  );
                });
          },
          child: PageView(
            controller: _myPage,
            physics: NeverScrollableScrollPhysics(),
            children: [
              Home(scafoldKey, data, _myPage),
              MyCart(scafoldKey, data, _myPage),
              MyOrders(scafoldKey, data, _myPage),
              Profile(scafoldKey, data, _myPage),
            ],
          ),
        ),
      );

      return widget;
    }
  }
