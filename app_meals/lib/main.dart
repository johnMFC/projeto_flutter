import 'package:flutter/material.dart';
import 'package:meals/models/settings.dart';
import './screen/tabs_screen.dart';
import './screen/categories_meals_screen.dart';
import './screen/meal_detail_screen.dart';
import './screen/settings_screen.dart';
import 'utils/app_routes.dart';
import 'models/meal.dart';
import 'data/dummy_data.dart';
import './models/settings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {



  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
    List<Meal> _availableMeals = dummyMeals;

  void _filterMeals(Settings settings) {
    setState(() {
      _availableMeals = dummyMeals.where((meal){
       final filterGluten = settings.isGlutenFree && !meal.isGlutenFree;
       final filterLactose = settings.isLactoseFree && !meal.isLactoseFree;
       final filterVegan = settings.isVegan && !meal.isVegan;
       final filterVegetarian = settings.isVegetarian && !meal.isVegetarian;
      return !filterGluten && !filterLactose && filterVegan && filterVegetarian;
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vamos Cozinhar?',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Colors.pink,
          secondary: Colors.amber,
        ),
        canvasColor: const Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
              headline6: const TextStyle(
                fontSize: 20,
                fontFamily: 'RobotoCondensed',
              ),
            ),
      ),
      routes: {
        AppRoutes.Home: (ctx) => const TabsScreen(),
        AppRoutes.CATEGORIES_MEALS: (ctx) =>
        CategoriesMealsScreen(_availableMeals),
        AppRoutes.MEAL_DETAIL: (ctx) => const MealDetailScreen(),
        AppRoutes.SETTINGS: (ctx) =>  SettingsScreen(_filterMeals),
      },
    );
  }
}
