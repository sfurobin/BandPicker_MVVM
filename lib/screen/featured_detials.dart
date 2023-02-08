import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui/model/bands_model.dart';
import 'package:flutter_ui/provider/featured_data_provider.dart';
import 'package:flutter_ui/screen/navigationbar.dart';
import 'package:flutter_ui/utils/color_resources.dart';
import 'package:provider/provider.dart';

class Artcell_Detials extends StatefulWidget {
  Featured_BandsData featured_bandsData;
   Artcell_Detials({Key? key, required this.featured_bandsData}) : super(key: key);

  @override
  _Artcell_DetialsState createState() => _Artcell_DetialsState();
}

class _Artcell_DetialsState extends State<Artcell_Detials> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    final Featured_detials = Provider.of<FeaturedDataProvider>(context,listen: false);
    Featured_detials.getFeaturedData();
  }
  @override
  Widget build(BuildContext context) {
    return Consumer<FeaturedDataProvider>(builder: (context, featured,child){
      return featured.featuredDataList != null ?
      Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> NavigationBarDemo()));
              },
              icon: Icon(
                Icons.arrow_back_ios,
                color: ColorResources.BLACK,
              )),
          title: Text(
              "${widget.featured_bandsData.title}",
              style: TextStyle(color: ColorResources.BLACK, fontSize: 18),
            ),
          backgroundColor: ColorResources.WHITE,
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.share_sharp, color: ColorResources.BLACK),
            )
          ],
        ),
        body: Stack(
          children: [
            Container(
              color: ColorResources.GREEN,
            ),
              Image.asset(
                "${widget.featured_bandsData.image}",
                width: MediaQuery.of(context).size.width,height: 300,fit: BoxFit.cover,
              ) ,
            Positioned(
              top: 230,
              left: 0,
              right: 0,
              child: Container(
                height: 600,
                width: double.infinity,
                // color: ColorResources.WHITE,
                decoration: BoxDecoration(
                    color: ColorResources.WHITE,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20))),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                        Text(
                          "${widget.featured_bandsData.title} Music BD",
                          style: TextStyle(color: ColorResources.BLACK, fontSize: 25,fontWeight: FontWeight.bold),
                        ) ,
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Dhaka , Bangladesh",
                        style:
                        TextStyle(fontSize: 18, color: ColorResources.BLACK),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Icon(
                                  Icons.person,
                                  color: ColorResources.RED,
                                  size: 25,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text("5 Muscian",
                                    style: TextStyle(color: ColorResources.BLACK)),
                              ],
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              children: [
                                Icon(Icons.play_circle_outline_outlined,
                                    color: ColorResources.RED, size: 25),
                                SizedBox(
                                  height: 10,
                                ),
                                Text("15 Concent",
                                    style: TextStyle(color: ColorResources.BLACK)),
                              ],
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              children: [
                                Icon(Icons.music_note_sharp,
                                    color: ColorResources.RED, size: 25),
                                SizedBox(
                                  height: 10,
                                ),
                                Text("Metal band",
                                    style: TextStyle(color: ColorResources.BLACK)),
                              ],
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              children: [
                                Icon(Icons.flight_takeoff_outlined,
                                    color: ColorResources.RED, size: 25),
                                SizedBox(
                                  height: 10,
                                ),
                                Text("Way of Journey",
                                    style: TextStyle(color: ColorResources.BLACK)),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 170,
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                              Text(
                                "About ${widget.featured_bandsData.title}",
                                style: TextStyle(color: ColorResources.BLACK, fontSize: 25,fontWeight: FontWeight.bold),
                              ),
                            SizedBox(
                              height: 15,
                            ),
                              Text(
                                "${widget.featured_bandsData.description}",
                                style: TextStyle(color: ColorResources.BLACK, fontSize: 16),
                              )
                          ],
                        ),
                      ),
                      SizedBox(height: 50,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Price Details",style: TextStyle(fontSize: 25,
                              color: ColorResources.BLACK,
                              fontWeight: FontWeight.bold),),
                          Row(
                            children: [
                              Icon(Icons.attach_money_outlined,color: ColorResources.RED,size: 18,),
                              SizedBox(height: 50,),
                                Text(
                                  "Start from ${widget.featured_bandsData.price}",
                                  style: TextStyle(color: ColorResources.BLACK, fontSize: 20),)
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 30,),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> NavigationBarDemo()));
                        },
                        child: Container(
                          alignment: Alignment.center,
                          height: 50,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: ColorResources.COLOR_PRIMARY,
                              borderRadius: BorderRadius.all(Radius.circular(10))
                          ),
                          child: Text("Request for Book",style: TextStyle(fontSize: 25,
                              color: ColorResources.WHITE)),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ) : Center(child: CircularProgressIndicator(),);
    },);
  }
}
