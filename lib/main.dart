import 'package:flutter/material.dart';
import 'data.dart';
import 'detail.dart';
import 'home.dart';
import 'about_me.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BUKALAPAK KW',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
        platform: TargetPlatform.iOS,
      ),
      home: Home(),
      routes: <String, WidgetBuilder>{
     '/Halsatu' : (BuildContext context) => new Home(),
      '/Haldua' : (BuildContext context) => new MyProfil(),

    },

     onGenerateRoute: (settings) => generateRoute(settings),
    );
  }

  generateRoute(RouteSettings settings) {
    final path = settings.name.split('/');
    final title = path[1];

    Book book = books.firstWhere((it) => it.title == title);
    return MaterialPageRoute(
      settings: settings,
      builder: (context) => Detail(book),
    );
  }
  
}