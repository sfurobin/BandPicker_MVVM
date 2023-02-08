
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_ui/provider/featured_data_provider.dart';
import 'package:flutter_ui/provider/popular_data_provider.dart';
import 'package:flutter_ui/screen/featured_detials.dart';
import 'package:flutter_ui/screen/popular_detials.dart';
import 'package:flutter_ui/utils/color_resources.dart';
import 'package:provider/provider.dart';

import '../utils/images.dart';

class BandsPicker extends StatefulWidget {

  @override
  _BandsPickerState createState() => _BandsPickerState();
}
final searchTextcontroller = TextEditingController();

class _BandsPickerState extends State<BandsPicker> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    var featuredData = Provider.of<FeaturedDataProvider>(context,listen: false);
    featuredData.getFeaturedData();
    var popularData = Provider.of<PopularDataProvider>(context,listen: false);
    popularData.getPopularData();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[400],
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 50,),
              Image.asset(Images.musiclogo,height: 30,width: 30,),
              Text("  Bands",style: TextStyle(fontSize: 18,color:ColorResources.COLOR_PRIMARY),),
              Text("picker",style: TextStyle(fontSize: 18,color:ColorResources.CERISE),),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              height: 40,
              width: double.infinity,
              child: TextField(
                controller: searchTextcontroller,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: ("Search"),
                  hintStyle: TextStyle(color: ColorResources.HINT_TEXT_COLOR,fontSize:16),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.grey,size: 30,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: ColorResources.HINT_TEXT_COLOR
                    ),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: ColorResources.HINT_TEXT_COLOR
                    ),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  fillColor: Colors.white,
                  filled: true,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 25,),
              child: Text("Featured",style: TextStyle(fontSize: 20,color: ColorResources.BLACK,fontWeight: FontWeight.bold),)),

          Consumer<FeaturedDataProvider>(builder: (context, brand, child){
              return brand.featuredDataList!=null ? brand.featuredDataList!.length > 0 ? Container(
                 height: 350,
                  width: MediaQuery.of(context).size.width,
                  child: Container(
                    // color: Colors.pinkAccent,
                    padding: EdgeInsets.all(20),
                    child: GridView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: brand.featuredDataList!.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 10,
                        mainAxisExtent: 150,
                      ),
                      itemBuilder: (BuildContext context, int index){
                        return InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> Artcell_Detials(featured_bandsData: brand.featuredDataList![index],)));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: ColorResources.GREY,
                                spreadRadius: 2,
                                )
                              ],
                                color: ColorResources.WHITE,
                                borderRadius: BorderRadius.all(Radius.circular(10))
                            ),
                            margin: EdgeInsets.symmetric(vertical: 10,horizontal: 5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ClipRRect(
                              borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10)),
                                      child: Image.asset(brand.featuredDataList![index].image,
                                        height: 100,width: 200,fit: BoxFit.cover,)),
                                  SizedBox(height: 10,),
                                  Container(
                                      padding: EdgeInsets.only(left: 10),
                                      child: Text("${brand.featuredDataList![index].title}")),
                                ],
                              ),
                          ),
                        );
                      },
                    ),
                  ))
                  : CircularProgressIndicator() :CircularProgressIndicator();
            }),
          Container(
              margin: EdgeInsets.symmetric(horizontal: 25,),
              child: Text("Popular",style: TextStyle(fontSize: 20,color: ColorResources.BLACK,fontWeight: FontWeight.bold),)),

          Consumer<PopularDataProvider>(builder: (context, brand, child){
            return brand.popularDataList!=null ? brand.popularDataList!.length > 0 ? Container(
                height: 350,
                width: MediaQuery.of(context).size.width,
                child: Container(
                  padding: EdgeInsets.all(20),
                  child: GridView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: brand.popularDataList!.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisExtent: 150,
                    ),
                    itemBuilder: (BuildContext context, int index){
                      return InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> Popular_Detials(popular_bandsData: brand.popularDataList![index],)));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: ColorResources.GREY,
                                  spreadRadius: 2,
                                )
                              ],
                              color: ColorResources.WHITE,
                              borderRadius: BorderRadius.all(Radius.circular(10))
                          ),
                          margin: EdgeInsets.symmetric(vertical: 10,horizontal: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                  borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10)),
                                  child: Image.asset(brand.popularDataList![index].image,fit: BoxFit.cover,height: 100,width: 200,)),
                              SizedBox(height: 10,),
                              Container(
                                  padding: EdgeInsets.only(left: 10),
                                  child: Text("${brand.popularDataList![index].title}")),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ))
                : CircularProgressIndicator() :CircularProgressIndicator();
          }),
        ],
      ),

    );
  }
}
