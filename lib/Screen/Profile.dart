import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:olilifood/Utils/Provider.dart';
import 'package:olilifood/Screen/MenuPage.dart';
import 'package:provider/provider.dart';

class Profile extends StatelessWidget {
  final scafoldKey;
  var search;
  final data;
  final controller;

  Profile(this.scafoldKey, this.data, this.controller);

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
    return Scaffold(
      appBar:  AppBar(
        backgroundColor: Colors.white,
        titleSpacing: 0.0,
        elevation: 0,
        shadowColor: Color(0xFFF1F1FD).withOpacity(0.5),
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: CircleAvatar(
                child: Text(''),
                radius: 23,
                backgroundImage:AssetImage(
                  'assets/images/mobile.jpg',
                ),
                foregroundColor: Colors.white,
                backgroundColor: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:4.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Eddie Simmons',
                    style: TextStyle(
                      fontSize: 17,
                      color: Color(0xFF272b3f),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text('+23489746347',
                      style: TextStyle(
                        fontSize: 15,
                        color: Color(0xFF272b3f),
                      )),
                ],
              ),
            )
          ],
        ),
      ),
      body:  Container(
        color: Colors.white,
        child: Column(
            children: [
              Container(
                height: 125,
                width:
                MediaQuery.of(context).size.width ,
                margin: EdgeInsets.all(5),
                child: Card(
                  color: Colors.orange,
                  child:Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Wallet  Balance',  style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),),
                                Text('# 0',  style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),),
                              ],
                            ),
                            FlatButton(
                                color: Colors.green,
                                onPressed: (){}, child: Text('Add Funds',  style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),))
                          ],
                        ),
                      ),
                      Divider(color: Colors.white70,),
                      Padding(
                        padding: const EdgeInsets.only(left:8.0, right: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('6455363776',  style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),),
                                Text('first bank',  style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                ),)
                              ],
                            ),
                            Text('Copy',  style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),)
                          ],
                        ),
                      ),
                    ],
                  )
                  ),
                ),
              ListTile(
                leading: Icon(FeatherIcons.mapPin),
                title: Text('Manage Address'),
                trailing: Icon(Icons.chevron_right),
              ),
              ListTile(
                leading: Icon(Icons.credit_card),
                title: Text('Wallet Transaction'),
                trailing: Icon(Icons.chevron_right),
              ),
              ListTile(
                leading: Icon(Icons.shopping_basket_outlined),
                title: Text('My Orders'),
                trailing: Icon(Icons.chevron_right),
              ),
              ListTile(
                leading: Icon(FeatherIcons.key),
                title: Text('Change Passcode'),
                trailing: Icon(Icons.chevron_right),
              ),
              ListTile(
                leading: Icon(Icons.help
                ),
                title: Text('Customer Support'),
                trailing: Icon(Icons.chevron_right),
              ),
              Spacer(),
              Align(
                  alignment: Alignment.center,
                  child: Container(
                    margin: EdgeInsets.only(left: 6, right: 6),
                    padding: EdgeInsets.only(
                      top: 24,
                      bottom: 50,
                    ),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.transparent),
                        borderRadius: BorderRadius.circular(8)),
                    child: FlatButton(
                      onPressed:(){},
                      color: Colors.orange,
                      disabledColor: Colors.orange[200],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      padding: EdgeInsets.all(0.0),
                      child: Ink(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8)),
                        child: Container(
                          constraints: BoxConstraints(
                              maxWidth:
                              MediaQuery
                                  .of(context)
                                  .size
                                  .width,
                              minHeight: 45.0),
                          alignment: Alignment.center,
                          child: Text(
                            "Logout",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
              ),
            ]),
      ));
  }
}
