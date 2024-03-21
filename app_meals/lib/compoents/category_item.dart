import 'package:flutter/material.dart';
import '../models/category.dart';
import '../Screns/categories_meals_screen.dart';
class CategoryItem extends StatelessWidget {


 final Category category;

  CategoryItem(this.category);

void _selectCategory(BuildContext context){
  Navigator.of(context).push(
    MaterialPageRoute(
      builder: (_){
        return  CategoriesMealsScrens();
      },
    ),
  );
}
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius:BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(15),
        child:Text(category.title) ,
        decoration: BoxDecoration(
          borderRadius:BorderRadius.circular(15),
          gradient: LinearGradient( 
            colors: [
              category.color.withOpacity(0.5),
              category.color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          )
        ),
      ),
    );
  }
}