import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../compoents/category_item.dart';

class CategoriesMealsScrens extends StatelessWidget {
  Widget build (BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Receitas'),
      ),
      body: Center(
        child: Text('Receitas por Categorias'),
      ),

    );
  }
}