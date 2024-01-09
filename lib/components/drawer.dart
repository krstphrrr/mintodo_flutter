import 'package:flutter/material.dart';
import 'package:mintodo_flutter/components/drawer_tile.dart';
import 'package:mintodo_flutter/pages/formula_page.dart';
import 'package:mintodo_flutter/pages/settings_page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        children: [
          // header
          const DrawerHeader(
            child: Icon(Icons.sunny),
            ),

            const SizedBox(height: 25,),
            //  notes tile
            DrawerTile(
            title: "Notes", 
            leading: const Icon(Icons.home), 
            onTap: ()=> Navigator.pop(context),
            ),
              // settings
            DrawerTile(
            title: "Settings", 
            leading: const Icon(Icons.settings), 
            onTap: (){
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SettingsPage())
                );
              }
            ),
            DrawerTile(
            title: "Formulas", 
            leading: const Icon(Icons.list), 
            onTap: (){
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const FormulaPage())
                );
              }
            ),

            //  settings tile
        ],
      )
      );
  }
}