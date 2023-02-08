
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_ui/screen/navigationbar.dart';
import 'package:flutter_ui/provider/featured_data_provider.dart';
import 'package:flutter_ui/provider/popular_data_provider.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

void main() {
  //.............Portrait off korar Funcation............
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown
  ]);

  runApp(MultiProvider(
      providers: providersList,
      child: MyApp()));

}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 50,),
              Container(
                height: 50,
                width: 250,
                color: Colors.blueGrey,
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> NavigationBarDemo()));
                  },
                  child: Center(child: Text("Bangladeshi Music Band",style: TextStyle(fontSize: 20,color: Colors.black87),)),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
List<SingleChildWidget> providersList = [
   ChangeNotifierProvider<FeaturedDataProvider>(create: (_)=>FeaturedDataProvider()),
  ChangeNotifierProvider<PopularDataProvider>(create: (_)=>PopularDataProvider()),
];