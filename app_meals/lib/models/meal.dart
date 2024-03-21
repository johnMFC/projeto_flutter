//Aqui a onde vai ficar os dados das refeições 
import 'package:flutter/foundation.dart';

enum Complexity{//enum enumeração
  Siple,
  Medium,
  Difficult,
}

enum Cost {
  Cheap,
  Fair,
  Expensive,
}

class Meal{
   final String id;
    final List <String> categories;
    final List <String> title;
    final List <String> imageUrl;
    final List <String> ingredientes ;
    final List <String> steps;
    final int duration;
    final bool isGlutemFree;
    final bool isLactoseFree;
    final bool isVegan;
    final bool isVegetarian;
    final Complexity complexity;
    final Cost cost;

   const Meal({
   required this.id,
   required this.categories,
   required this.title,
   required this.imageUrl,
   required this.ingredientes,
   required this.steps,
   required this.duration,
   required this.isGlutemFree,
   required this.isLactoseFree,
   required this.isVegan,
   required this.isVegetarian,
   required this.cost,
   required this.complexity,
   });
}