import 'package:flutter/material.dart';
import '../models/meal.dart';

class MealItem extends StatelessWidget {


  final Meal meal;

  const MealItem(this.meal);
  
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
        shape:RoundedRectangleBorder(
          borderRadius:BorderRadius.circular(15), 
          ), 
        elevation:4,
        margin: const EdgeInsets.all(10),
        child:Column(
          children: [
            Stack(
              children: [
                ClipRRect(//ClipRRect é um widget no Flutter que é usado para recortar os filhos com cantos arredondados. O nome ClipRRect significa "Clip Rounded Rectangle" (Recorte de Retângulo Arredondado).
                  borderRadius: BorderRadius.only(
                    topLeft:Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  child: Image.network(
                    meal.imageUrl,
                    height:250,
                    width:double.infinity ,
                    fit: BoxFit.cover,
                  ),
                ),
                
              ],
            )
          ]
          ),
      ),
    );
  }
}