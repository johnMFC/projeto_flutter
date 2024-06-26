import 'package:flutter/material.dart';
import 'package:meals/models/settings.dart';
import '../compoents/main_drawer.dart';

class SettingsScreen extends StatefulWidget {
    final Function (Settings) onSettingsChanged;
    const SettingsScreen (this.onSettingsChanged);



  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {

   var settings = Settings();

  Widget _createSwitch(

    String title, 
    String subtitle, 
    bool value, 
    Function (bool) onChanged,
    ){
      return SwitchListTile.adaptive(
        title: Text(title),
        subtitle: Text(title), 
        value: value,
        onChanged:(value){
        onChanged;
         onChanged(value);
         widget.onSettingsChanged(settings);
        } 

        );
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text('Configurações'),
      ),
      drawer: MainDrawer(),
      body : Column(
        children: [
          Container(
            padding: EdgeInsets.all(20) ,
            child: Text(
              'Configurações',
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                _createSwitch(
                  'Sem glutén',
                  'Só exibe refeições sem glúten!',
                   settings.isGlutenFree,
                  (value) => setState(() => settings.isGlutenFree = value),
                ),
                  _createSwitch(
                  'Sem Lactose',
                  'Só exibe refeições sem lactose!',
                  settings.isLactoseFree,
                  (value) => setState(() => settings.isLactoseFree = value),
                ),
                  _createSwitch(
                  'Vegana',
                  'Só exibe refeições veganas!',
                  settings.isVegan,
                  (value) => setState(() => settings.isVegan = value),
                ),
                  _createSwitch(
                  'Vegetariana',
                  'Só exibe refeições vegetarianas!',
                  settings.isVegetarian,
                  (value) => setState(() => settings.isVegetarian = value),
                ),
              ],
            ),
            ),
        ],
        ) 
    );
  }
}