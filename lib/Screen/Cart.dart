import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:olilifood/Utils/Provider.dart';
import 'package:olilifood/Screen/MenuPage.dart';
import 'package:olilifood/Widget/Rating.dart';
import 'package:provider/provider.dart';

class MyCart extends StatelessWidget {
  final scafoldKey;
  var search;
  final data;
  final controller;

  MyCart(this.scafoldKey, this.data, this.controller);

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
      bottomNavigationBar:  Container(
        height:80,
        width:
        MediaQuery.of(context).size.width ,
        margin: EdgeInsets.only(left:5, right:5),
        child: Card(
            color: Colors.orange,
            child:Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Total',  style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),),
                              Text('3 items',  style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left:8.0),
                            child: Text('\$158.00 USD',  style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),),
                          ),
                        ],
                      ),
                      FlatButton(
                          color: Colors.green,
                          onPressed: (){}, child: Text('checkout',  style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),))
                    ],
                  ),
                ),
              ],
            )
        ),
      ),
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
                  'My Cart',
                  style: TextStyle(
                    fontSize: 18,
                    color: Color(0xFF272b3f),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Spacer(),
              Stack(
                children:[
                  Icon(Icons.shopping_cart),
                  Container(
                    width: 15,
                    height: 15,
                    child:Center(child: Text('8', style: TextStyle(color:Colors.white, fontSize: 10, fontWeight: FontWeight.bold),)),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.orange,
                    ),
                  )
                ]
              )
            ],
          ),
        ),
        body: Container(
            color: Colors.white,
            child: ListView.builder(
                itemCount: 8,
                itemBuilder: (index, context) {
                  return Card(
                    child: ListTile(
                      title: Text('Beats Solo HD'),
                      subtitle:  Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Drenched in book'),
                          SizedBox(
                            height: 5,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top:0, bottom: 4),
                            child: Text('\$165.00', style: TextStyle(color:Colors.orange, fontWeight: FontWeight.w600),),
                          ),
                          StarRating(starCount: 5, rating: 3,)
                        ],
                      ),
                      trailing:Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Qty: 6'),
                          ),
                          Text('Delete', softWrap: true, maxLines: 1, overflow: TextOverflow.visible, style: TextStyle(color:Colors.red, fontWeight: FontWeight.w600)),
                        ],
                      ),
                      leading:    Container(
                        height: 65,
                        width: 65,
                        child: Image.asset(
                            'assets/images/mobile.jpg',
                            fit: BoxFit.cover),
                      ),
                    ),
                  );
                })));
  }
}
