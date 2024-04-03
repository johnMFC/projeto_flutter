import 'package:flutter/material.dart';
import 'screen/categories_meals_screen.dart';
import 'package:meals/screen/categores_screen.dart';
import 'utils/app_routes.dart';


void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
Widget build(BuildContext context) {
  
    return MaterialApp(
      title: 'Vamos cozinhar?',
      theme: ThemeData(
       colorScheme: ColorScheme.fromSwatch().copyWith(
        primary: Colors.black,
        secondary: Colors.amber,
       ),
       canvasColor: const Color.fromARGB(255,254,229, 1),
       fontFamily: 'Raleway',
       textTheme: ThemeData.light().textTheme.copyWith(
        headline6: const TextStyle(
          fontSize: 20,
          fontFamily:'RobotoCondensed'
          ),
        ),
       ),
       // home: const CategoriesScreen(),
        routes: {
          AppRoutes.Home: (ctx) => CategoriesScreen(),
          AppRoutes.CATEGORIES_MEALS: (ctx) => CategoriesMealsScreen(),
        },
      );
      
     
    
  }
}
 

 

