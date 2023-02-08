
import 'package:flutter_ui/model/bands_model.dart';

class FeaturedDataRepo {
  List<Featured_BandsData> featuredDataList = [
    Featured_BandsData(1, "Artcell", "assets/images/Artcell(p).png",
        "Artcell is a Bangladeshi Progessive metal band formed in October 1999 by vocalist and riff guitarist Grorge Lincoin"
        "D'Costa, lead guitarist Ershad Zaman,bassist Saef Al Nazi Cezanne and drummer Kazi Sazzadul Asheqeen Shaju."
        "The fist song the band composed was 'অন্য সময়'",
        "40,000"),
    Featured_BandsData(2, "Aftermath", "assets/images/aftermath.png",
        "Aftermath is a Bangladeshi Progessive metal band formed in October 2001 by vocalist and riff guitarist Grorge Lincoin"
        "D'Costa, lead guitarist Ershad Zaman,bassist Saef Al Nazi Cezanne and drummer Kazi Sazzadul",
        "20,000"),
    Featured_BandsData(3, "Arbovirus", "assets/images/arbovirus.png",
        "Arbovirus is a Bangladeshi Progessive metal band formed in October 2003 by vocalist and riff guitarist Grorge Lincoin"
        "D'Costa, lead guitarist Ershad Zaman,bassist Saef Al Nazi Cezanne and drummer Kazi Sazzadul Asheqeen Shaju.",
        "30,000"),
    Featured_BandsData(4, "Minerva", "assets/images/minerva(p).png",
        "Minerva is a Bangladeshi Progessive metal band formed in October 2000 by vocalist and riff guitarist Grorge Lincoin"
        "D'Costa, lead guitarist Ershad Zaman,bassist Saef Al Nazi Cezanne and drummer Kazi Sazzadul Asheqeen Shaju.",
        "15,000"),
  ];
  Future<List<Featured_BandsData>> getFeaturedDataList() async{
    return featuredDataList;
  }
}