import 'package:flutter/material.dart';
import 'presentation/connoisseur_icons.dart' as AppIcons;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Connoisseur',
      theme: new ThemeData(
        // Add the 3 lines from here...
        brightness: Brightness.dark,
        primaryColor: Color(0xFF673AB7),
        primaryColorDark: Color(0xFF512DA8),
        primaryColorLight: Color(0xFFD1C4E9),
        accentColor: Color(0xFF7C4DFF),
        fontFamily: 'Nunito',
        textTheme: TextTheme(
          headline: TextStyle(
              color: Color(0xFF212121),
              fontSize: 72.0,
              fontWeight: FontWeight.bold),
          title: TextStyle(
              color: Color(0xFF212121),
              fontSize: 36.0,
              fontWeight: FontWeight.w500),
          subtitle: TextStyle(
              color: Color(0xFF757575),
              fontSize: 36.0,
              fontWeight: FontWeight.w500),
          body1: TextStyle(
              color: Color(0xFFFFFFFF),
              fontSize: 14.0,
              fontWeight: FontWeight.normal),
          body2: TextStyle(
              color: Color(0xFFFFFFFF),
              fontSize: 14.0,
              fontWeight: FontWeight.w500),
        ),
      ),
      home: AppHomePage(),
    );
  }
}

class AppHomePage extends StatefulWidget {
  AppHomePage({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return AppHomePageState();
  }
}

class AppHomePageState extends State<AppHomePage> {
  int _selectedIndex = 0;
  final _screenOptions = [
    Text('Exhibitions at the Harvard Art Museum'),
    Text('Publications by the Harvard Art Museum'),
    Text('Galleries at the Harvard art Museum'),
  ];

  final _exhibitionIcon = Icon(AppIcons.Connoisseur.exhibition);
  final _publicationsIcon = Icon(AppIcons.Connoisseur.publications);
  final _galleryIcon = Icon(AppIcons.Connoisseur.gallery);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Connoisseur'),
      ),
      body: Center(
        child: _screenOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: _exhibitionIcon, title: Text('Exhibitions')),
          BottomNavigationBarItem(
              icon: _publicationsIcon, title: Text('Publications')),
          BottomNavigationBarItem(icon: _galleryIcon, title: Text('Gallery')),
        ],
        currentIndex: _selectedIndex,
        fixedColor: Color(0xFFFFFFFF),
        onTap: _onItemTapped,
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
