import 'package:flutter_ui/model/bands_model.dart';

class PopularDataRepo {
  List<Popular_BandsData> popularDataList = [
    Popular_BandsData(5, "Shohortoli", "assets/images/shohortoli.png", "Shohortoli is a Bangladeshi Progessive metal band formed in October 2001 by vocalist and riff guitarist Grorge Lincoin"
        "D'Costa, lead guitarist Ershad Zaman,bassist Saef Al Nazi Cezanne and drummer Kazi Sazzadul","25,000"),
    Popular_BandsData(6, "Warfaze", "assets/images/warfaze.png", "Warfaze is a Bangladeshi Progessive metal band formed in October 2001 by vocalist and riff guitarist Grorge Lincoin"
        "D'Costa, lead guitarist Ershad Zaman,bassist Saef Al Nazi Cezanne and drummer Kazi Sazzadul", "35,000"),
    Popular_BandsData(6, "Shunno", "assets/images/Shunno.png", "Shunno is a Bangladeshi Progessive metal band formed in October 2001 by vocalist and riff guitarist Grorge Lincoin"
        "D'Costa, lead guitarist Ershad Zaman,bassist Saef Al Nazi Cezanne and drummer Kazi Sazzadul", "30,000"),
    Popular_BandsData(6, "kureghor", "assets/images/kureghor.png", "Kureghor is a Bangladeshi Progessive metal band formed in October 2001 by vocalist and riff guitarist Grorge Lincoin"
        "D'Costa, lead guitarist Ershad Zaman,bassist Saef Al Nazi Cezanne and drummer Kazi Sazzadul", "25,000"),
  ];
  Future<List<Popular_BandsData>> getPopularDataList() async{
    return popularDataList;
  }
}