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
                Positioned(
                  right: 10,
                  bottom: 20,
                  child: Container(
                    width: 300,
                    color: Colors.black54,
                    padding: EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 20,
                    ),
                    child: Text(
                      meal.title,
                      style: TextStyle(
                        fontSize:26,
                        color:Colors.white,
                      ),
                      softWrap:true,
                      overflow: TextOverflow.fade,
                    ),
                  ),
                )
              ],

            ),
            Padding(
              padding:EdgeInsets.all(20),
              child: Row(
                children: [
                  Icon(Icons.schedule),
                  SizedBox(width:6,),
                  Text('${meal.duration} min'),
                ]
                ),
            )
          ]
          ),
      ),
    );
  }
}