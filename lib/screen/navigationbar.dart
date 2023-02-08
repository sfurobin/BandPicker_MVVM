import 'package:flutter/material.dart';
import 'package:flutter_ui/screen/account.dart';
import 'package:flutter_ui/screen/design_page.dart';
import 'package:flutter_ui/screen/booking.dart';
import 'package:flutter_ui/screen/message.dart';
import 'package:flutter_ui/utils/color_resources.dart';

class NavigationBarDemo extends StatefulWidget {
  const NavigationBarDemo({Key? key}) : super(key: key);

  @override
  State<NavigationBarDemo> createState() => _NavigationBarDemoState();
}

class _NavigationBarDemoState extends State<NavigationBarDemo> {

  int index = 0;
  final screens = [
    BandsPicker(),
    BookingPage(),
    MessagsPage(),
    AccountPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index],
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
            indicatorColor: ColorResources.COLOR_PRIMARY,
            labelTextStyle: MaterialStateProperty.all(
              TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            )
        ),
        child: NavigationBar(
          backgroundColor: Color(0xFFf1f5fb),
          // animationDuration: Duration(seconds: 2),
          selectedIndex: index,
          onDestinationSelected: (index) => setState(() => this.index = index),
          destinations: [
            NavigationDestination(
              icon: Icon(Icons.home_outlined,size: 30) , label: 'Home',
            ),NavigationDestination(
              icon: Icon(Icons.sticky_note_2_outlined,size: 30,) , label: 'Bookings',
            ),NavigationDestination(
              icon: Icon(Icons.textsms_outlined,size: 30,) , label: 'Message',
            ),NavigationDestination(
              icon: Icon(Icons.perm_identity_outlined,size: 30,) , label: 'Account',
            ),
          ],
        ),
      ),
    );
  }
}
