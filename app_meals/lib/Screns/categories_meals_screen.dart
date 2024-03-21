import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../compoents/category_item.dart';
import '../models/category.dart';
import '../Screns/categories_meals_screen.dart';

class CategoriesMealsScreen extends StatelessWidget {
  


  Widget build (BuildContext context){

    final category = ModalRoute.of(context)?.settings.arguments as Category;

    return Scaffold(
      appBar: AppBar(
        title: Text(category.title),
      ),
      body: Center(
        child: Text('Receitas por Categorias${category.id}'),
      ),

    );
  }
}