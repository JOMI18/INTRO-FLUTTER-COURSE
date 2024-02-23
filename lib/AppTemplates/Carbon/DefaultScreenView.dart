import 'package:flutter/material.dart';

import 'package:classapp/AppTemplates/Carbon/APPBAR/CarbonProfile.dart';
import 'package:classapp/AppTemplates/Carbon/BOTTOMBAR/CarbonLoans.dart';
import 'package:classapp/AppTemplates/Carbon/BOTTOMBAR/CarbonPayments.dart';
import 'package:classapp/AppTemplates/Carbon/BOTTOMBAR/CarbonSavings.dart';
import 'package:classapp/AppTemplates/Carbon/BOTTOMBAR/CarbonAppHome.dart';

class DefaultScreen extends StatefulWidget {
  const DefaultScreen({super.key});

  @override
  State<DefaultScreen> createState() => _DefaultScreenState();
}

class _DefaultScreenState extends State<DefaultScreen> {
  int selectedIndex = 0;

  static List<Widget> widgetOptions = <Widget>[
    const CarbonAppHome(),
    const CarbonSavings(),
    CarbonPayments(),
    const CarbonLoans(),
    CarbonProfile(),
  ];

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: widgetOptions.elementAt(selectedIndex),
        bottomNavigationBar: BottomNavigationBar(
          showUnselectedLabels: true,
          currentIndex: selectedIndex,
          onTap: onItemTapped,
          selectedItemColor:
              Colors.blue, // Color of the selected item's icon and label
          unselectedItemColor: Colors
              .grey.shade800, // Color of the unselected items' icons and labels
          selectedLabelStyle: const TextStyle(
              fontWeight:
                  FontWeight.bold), // Style for the selected item's label

          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.savings_outlined),
              label: 'Savings',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.credit_card_rounded),
              label: 'Payments',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.attach_money_rounded),
              label: 'Loans',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              label: 'Accounts',
            ),
          ],
        ));
  }
}
