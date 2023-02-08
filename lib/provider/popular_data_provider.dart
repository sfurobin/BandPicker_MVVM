import 'package:flutter/cupertino.dart';
import 'package:flutter_ui/model/bands_model.dart';
import 'package:flutter_ui/reprository/popular_repo.dart';

class PopularDataProvider with ChangeNotifier{
  PopularDataRepo? popularDataRepo = PopularDataRepo();

  List<Popular_BandsData>? _popularDataList=[];
  List<Popular_BandsData>? get popularDataList => _popularDataList; //dfdfdfdfdfdfdfdfdsf

  getPopularData()async {
    _popularDataList= await popularDataRepo!.getPopularDataList();
    notifyListeners();

  }

}