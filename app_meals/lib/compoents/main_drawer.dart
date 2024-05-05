import 'package:flutter/material.dart';
import '../utils/app_routes.dart';

class MainDrawer extends StatelessWidget {
  Widget _createItem (IconData icon , String label, Function() onTap){
    return ListTile(
      leading: Icon(
        icon,
        size:26,
      ),
      title: Text(
        label,
        style: TextStyle(
          fontFamily: 'RobotoCondensed',
          fontSize: 23,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: onTap,
    );
  }
  const MainDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 120,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            color: Theme.of(context).colorScheme.secondary,
            alignment: Alignment.bottomCenter,
            child: Text(
              'Vamos Cozinhar?',
              style:TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 30,
                color: Theme.of(context).primaryColor,


              ) 
              ),

          ),
           SizedBox(height: 20),
          _createItem(
            Icons.restaurant,
            'Refeições',
            () => Navigator.of(context).pushReplacementNamed(AppRoutes.Home)
          ),
          _createItem(
            Icons.settings, 
            'Configurações',
            () => Navigator.of(context).pushReplacementNamed(AppRoutes.SETTINGS)
          ),
        ],
      ),
    );
  }
}