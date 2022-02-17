import 'package:black_history_gram/Modal/dashboard_slider.dart';
import 'package:black_history_gram/View/book_detail_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import '../constants.dart';

class AvailableGigItem extends StatefulWidget {
  final int index;
  final String title;
  AvailableGigItem(this.index, this.title);

  @override
  _AvailableGigItemState createState() => _AvailableGigItemState();
}

class _AvailableGigItemState extends State<AvailableGigItem> {
  @override
  void initState() {
    // TODO: implement initState

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    final devSize = MediaQuery.of(context).size;
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          PageRouteBuilder(
            pageBuilder: (c, a1, a2) => BookDetailScreen(),
            transitionsBuilder: (c, anim, a2, child) =>
                FadeTransition(opacity: anim, child: child),
            transitionDuration: Duration(milliseconds: 0),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 10,right: 10,bottom: 8,),
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Stack(children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 0,right: 0,),
                  child: Container(
                    width: devSize.width,
                    height: devSize.height*0.16,
                    decoration: BoxDecoration(
                      //color: Colors.amberAccent,
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(0),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SizedBox(
                          height: devSize.height*0.005,
                        ),
                      Container(
                        padding: EdgeInsets.only(left: 0),
                      //  color: Colors.lightGreen,
                        width: devSize.width*0.65,
                        height: devSize.height*0.025,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              //        color: Colors.yellowAccent,
                              width: devSize.width*0.05,
                              height: devSize.height*0.025,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(0),
                                child: Image.asset(widget.title == 'Favorite' ? 'assets/pressed_bookmark_icon.png': 'assets/unpressed_bookmark_icon.png',
                                  fit: BoxFit.scaleDown,
                                  width: devSize.width*0.05,
                                  height: devSize.height*0.025,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                        Container(
                          alignment: Alignment.topLeft,
                          //color: Colors.lime,
                          height: devSize.height*0.03,
                          width: devSize.width*0.65,
                          child: Text(dashboardSlideList[widget.index].title,
                            style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold, color: kTextColor,),),
                        ),
                        Container(
                          //color: Colors.lightGreen,
                          width: devSize.width*0.65,
                          alignment: Alignment.topLeft,
                          height: devSize.height*0.025,
                          child: Text(dashboardSlideList[widget.index].instructor,
                            style: TextStyle(fontSize: 11, color: kTextLightColor,fontWeight: FontWeight.w400,),),
                        ),
                        Container(
                      //    color: Colors.lightGreen,
                          alignment: Alignment.topLeft,
                          width: devSize.width*0.65,
                          height: devSize.height*0.025,
                          child: Text('Type: Self-Improvement',
                            style: TextStyle(fontSize: 11, color: kTextLightColor,fontWeight: FontWeight.w400,),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 0),
                          child: Container(
                           // color: Colors.blueGrey,
                            height: devSize.height*0.028,
                            width: devSize.width*0.65,
                            child:
                                Padding(
                                  padding: const EdgeInsets.only(left: 0),
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Container(
                                      // color: Colors.lightBlueAccent,
                                      height: devSize.height*0.03,
                                      width: devSize.width*0.25,
                                      alignment: Alignment.centerLeft,
                                      child: RatingBar.builder(
                                        itemSize: 12,
                                        initialRating: 5,
                                        minRating: 1,
                                        direction: Axis.horizontal,
                                        allowHalfRating: true,
                                        itemCount: 5,
                                        // itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                                        itemBuilder: (context, _) => Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                        ),
                                        onRatingUpdate: (rating) {
                                          print(rating);
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 0,left: 0,),
                      child:  ClipRRect(
                        borderRadius: BorderRadius.circular(0),
                        child: Image.network(dashboardSlideList[widget.index].imageUrl,
                          fit: BoxFit.cover,
                          width: devSize.width*0.27,
                          height: devSize.height*0.16,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 0,
                  child: Container(
                    padding: EdgeInsets.only(left: 3),
                    // color: Colors.lightGreen,
                    alignment: Alignment.topLeft,
                    width: devSize.width*0.3,
                    height: devSize.height*0.05,
                    child:
                    Stack(
                      children: [

                        Container(
                          // color: Colors.yellowAccent,
                          width: devSize.width*0.05,
                          height: devSize.height*0.03,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(0),
                            child: Image.asset('assets/booknumber_icon.png',
                              fit: BoxFit.scaleDown,
                              width: devSize.width*0.05,
                              height: devSize.height*0.025,
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          width: devSize.width*0.05,
                          height: devSize.height*0.025,
                           padding: EdgeInsets.only(top: 0,right: 0),
                          child: Text(widget.index.toString(),style: TextStyle(fontSize: 10,fontWeight: FontWeight.w500, color: Colors.white),textAlign: TextAlign.center,),
                        ),
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
    );
  }
}

