import "package:digicard/layouts/navigation/destination.dart";
import "package:digicard/pages/contacts_page.dart";
import "package:digicard/pages/home_page.dart";
import "package:digicard/pages/qr_page.dart";
import "package:digicard/providers/navigation_provider.dart";
import "package:digicard/providers/qr_data_provider.dart";
import "package:digicard/styles/styles.dart";
import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:provider/provider.dart";

class DefaultLayout extends StatefulWidget {
  const DefaultLayout({Key? key}) : super(key: key);

  @override
  State<DefaultLayout> createState() => _DefaultLayoutState();
}

class _DefaultLayoutState extends State<DefaultLayout> with TickerProviderStateMixin<DefaultLayout> {
  static const List<Destination> allDestinations = <Destination>[
    Destination(0, '/qr', DestinationInfo('QR', CupertinoIcons.qrcode)),
    Destination(1, '/', DestinationInfo('Home', CupertinoIcons.at)),
    Destination(2, '/contacts', DestinationInfo('Contacts', CupertinoIcons.person_2_square_stack)),
  ];

  late final List<Widget> destinationViews;
  int _currentIndex = 1;

  @override
  void initState() {
    super.initState();
    destinationViews = allDestinations.map((Destination destination) {
      switch (destination.route) {
        case '/':
          return const HomePage();
        case '/qr':
          return const QRPage();
        case '/contacts':
          return const ContactsPage();
        default:
          return const HomePage();
      }
    }).toList();
  }

  @override 
  void dispose() {
    //TODO dispose of the providers
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    NavigationProvider nav = Provider.of<NavigationProvider>(context);
    QRCodeData qrData = Provider.of<QRCodeData>(context);

    return Scaffold(
      body: PageView.builder(
        controller: nav.pageController,
        itemCount: allDestinations.length,
        onPageChanged: (index) {
          setState(() => _currentIndex = index);
        },
        itemBuilder: (context, index) {
          return destinationViews[index];
        },
      ),
      bottomNavigationBar: NavigationBar(
        labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
        indicatorColor: Colors.transparent,
        backgroundColor: DigicardStyles.primaryColor,
        selectedIndex: _currentIndex,
        onDestinationSelected: (int index) {
          if(index == _currentIndex) return;
          setState(() => _currentIndex = index);
          nav.navigateToPage(
            index,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
          );
          qrData.reset();
        },
        destinations: allDestinations.map((Destination destination) {
          return NavigationDestination(
            icon: Icon(destination.info.icon,
                color: _currentIndex == destination.index
                    ? destination.info.activeColor
                    : Colors.grey[200]),
            label: destination.info.title,
          );
        }).toList(),
      ),
    );
  }
}
