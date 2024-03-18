import 'package:flutter/material.dart';
import 'Screns/categores_screns.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vamos cozinhar?',
      theme: ThemeData(
        primarySwatch : Colors.red,
        accentColor:Colors.amber,
        fontFamily: 'Raleway',
        textTheme:ThemeData.light().textTheme.copyWith(
          headline6: TextStyle(
            fontSize: 20,
            fontFamily:'RobotoCondensed',
          )
        )
        

      ),   
      home: CategoriesScrens(),
    );
  }
}
 

 
