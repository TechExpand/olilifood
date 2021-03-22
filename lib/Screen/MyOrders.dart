import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:olilifood/Utils/Provider.dart';
import 'package:olilifood/Screen/MenuPage.dart';
import 'package:olilifood/Widget/Rating.dart';
import 'package:provider/provider.dart';

class MyOrders extends StatelessWidget {
  final scafoldKey;
  var search;
  final data;
  final controller;

  MyOrders(this.scafoldKey, this.data, this.controller);

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
//      bottomNavigationBar:  Container(
//        height: 125,
//        width:
//        MediaQuery.of(context).size.width ,
//        margin: EdgeInsets.all(5),
//        child: Card(
//            color: Colors.orange,
//            child:Column(
//              children: [
//                Padding(
//                  padding: const EdgeInsets.all(8.0),
//                  child: Row(
//                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                    children: [
//                      Column(
//                        crossAxisAlignment: CrossAxisAlignment.start,
//                        children: [
//                          Text('Wallet  Balance',  style: TextStyle(
//                            color: Colors.white,
//                            fontSize: 18,
//                            fontWeight: FontWeight.w500,
//                          ),),
//                          Text('# 0',  style: TextStyle(
//                            color: Colors.white,
//                            fontSize: 18,
//                            fontWeight: FontWeight.w500,
//                          ),),
//                        ],
//                      ),
//                      FlatButton(
//                          color: Colors.green,
//                          onPressed: (){}, child: Text('Add Funds',  style: TextStyle(
//                        color: Colors.white,
//                        fontWeight: FontWeight.w500,
//                      ),))
//                    ],
//                  ),
//                ),
//                Divider(color: Colors.white70,),
//                Padding(
//                  padding: const EdgeInsets.only(left:8.0, right: 8),
//                  child: Row(
//                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                    children: [
//                      Column(
//                        crossAxisAlignment: CrossAxisAlignment.start,
//                        children: [
//                          Text('6455363776',  style: TextStyle(
//                            color: Colors.white,
//                            fontWeight: FontWeight.w500,
//                          ),),
//                          Text('first bank',  style: TextStyle(
//                            color: Colors.white,
//                            fontWeight: FontWeight.w500,
//                          ),)
//                        ],
//                      ),
//                      Text('Copy',  style: TextStyle(
//                        color: Colors.white,
//                        fontWeight: FontWeight.w500,
//                      ),)
//                    ],
//                  ),
//                ),
//              ],
//            )
//        ),
//      ),
        appBar: AppBar(
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
                  backgroundImage: AssetImage(
                    'assets/images/mobile.jpg',
                  ),
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.white,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 4.0),
                child: Text(
                  'My Orders',
                  style: TextStyle(
                    fontSize: 18,
                    color: Color(0xFF272b3f),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
        ),
        body: Container(
            color: Colors.white,
            child: ListView.builder(
                itemCount: 13,
                itemBuilder: (index, context) {
                  return Card(
                    child: ListTile(
                      title: Text('Order#: 2345678'),
                      subtitle:  Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('30-Dec-2021, 3:00PM'),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Text('Estimated Delivery on 21 Dec', style: TextStyle(color:Colors.orange, fontWeight: FontWeight.w600),),
                              SizedBox(width: 20,),
                              Text('Rating:', softWrap: true, maxLines: 1, overflow: TextOverflow.visible,),
                              StarRating(starCount: 5, rating: 3,)
                            ],
                          ),
                        ],
                      ),
                      trailing:    Container(
                        height: 40,
                        width: 40,
                        child: Image.asset(
                            'assets/images/mobile.jpg',
                            fit: BoxFit.cover),
                      ),
                    ),
                  );
                })));
  }
}
