import 'package:flutter/cupertino.dart';
import 'package:flutter_ui/model/bands_model.dart';
import 'package:flutter_ui/reprository/featured_repo.dart';

class FeaturedDataProvider with ChangeNotifier{
   FeaturedDataRepo? featuredDataRepo = FeaturedDataRepo();

   List<Featured_BandsData>? _featuredDataList=[];
   List<Featured_BandsData>? get featuredDataList => _featuredDataList;


   getFeaturedData()async {
    _featuredDataList= await featuredDataRepo!.getFeaturedDataList();
    notifyListeners();

   }

}