import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mintodo_flutter/models/formula_ingredient_database.dart';
import 'package:provider/provider.dart';

class FormulaPage extends StatefulWidget {
  const FormulaPage({super.key});

  @override
  State<FormulaPage> createState() => _FormulaPageState();
}

class _FormulaPageState extends State<FormulaPage> {
  final textController = TextEditingController();
  // final numberController = number_editing_controller();

  @override
  void initState(){
    super.initState();
    readFormulaIngredients();
  }
  // create entry 
  void createFormulaIngredientEntry(){

    showDialog(
      context: context, 
      builder: (context)=> AlertDialog(
        backgroundColor: Theme.of(context).colorScheme.background,
        content: Column(
          children: [
            // input ingredient name
            TextFormField(
              controller: textController,
              decoration: const InputDecoration(
                labelText: 'ingredient name',
              ),
            ),
            // input ingredient amount
            TextFormField(
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly
              ],
              decoration: const InputDecoration(
                labelText: 'amount',
              ),
            ),
            // input dilution factor
            TextFormField(
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly
              ],
              decoration: const InputDecoration(
                labelText: 'dilution percentage',
              ),
            ),
          ],
        ),
        actions: [
          MaterialButton(
            onPressed: (){
              context.read<FormulaIngredientDatabase>().addFormulaIngredient(
                textController.text, 
                textController.value as num, 
                textController.value as num, 
                textController.value as num
                );
            })
        ],
      ));
  }
  // readEntries
  void readFormulaIngredients(){
    context.read<FormulaIngredientDatabase>().fetchFormulaIngredients();
  }
  // update entry 
  // delete entry
  void deleteFormulaIngredient(int id){
    context.read<FormulaIngredientDatabase>().deleteFormulaIngredient(id);
  }
  @override
  Widget build(BuildContext context) {
    // formula ingredient database (table?)
    return Scaffold(
      appBar: AppBar(
        elevation:0,
        backgroundColor: Colors.transparent,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        
       ),
      backgroundColor: Theme.of(context).colorScheme.background,

       );
  }
}