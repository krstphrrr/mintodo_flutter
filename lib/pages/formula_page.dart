import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mintodo_flutter/components/formulaingredient_tile.dart';
import 'package:mintodo_flutter/models/formula_ingredient.dart';
import 'package:mintodo_flutter/models/note_database.dart';
import 'package:mintodo_flutter/theme/neu_box.dart';
// import 'package:mintodo_flutter/models/formula_ingredient_database.dart';
import 'package:provider/provider.dart';

class FormulaPage extends StatefulWidget {
  const FormulaPage({super.key});

  @override
  State<FormulaPage> createState() => _FormulaPageState();
}

class _FormulaPageState extends State<FormulaPage> {
  final nameController = TextEditingController();
  final dilutionController = TextEditingController();
  final absValController = TextEditingController();
  final relValController = TextEditingController();
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
        content: SizedBox(
          height:200,
          child: Column(
            children: [
              // input ingredient name
              TextFormField(
                controller: nameController,
                decoration: const InputDecoration(
                  labelText: 'ingredient name',
                ),
              ),
              // input ingredient amount

              TextFormField(
                controller: absValController,
                keyboardType: TextInputType.number,
                // inputFormatters: <TextInputFormatter>[
                //   FilteringTextInputFormatter.digitsOnly
                // ],
                decoration: const InputDecoration(
                  labelText: 'amount',
                ),
              ),
              TextFormField(
                controller: dilutionController,
                keyboardType: TextInputType.number,
                // inputFormatters: <TextInputFormatter>[
                //   // FilteringTextInputFormatter.
                // ],
                decoration: const InputDecoration(
                  labelText: 'dilution percentage',
                ),
              ),

              // input dilution factor
              
            ],
          ),
        ),
        actions: [
          MaterialButton(
            onPressed: (){
              context.read<MultiDatabase>().addFormulaIngredient(
                nameController.text,
                double.tryParse(absValController.text) ?? 0.0,
                0.0,
                double.tryParse(dilutionController.text) ?? 0.0, 
                );
                
                nameController.clear();
                dilutionController.clear();
                absValController.clear();

                Navigator.pop(context);
            },
            child: const Text("Submit")),
            
        ],
      ));
  }
  // readEntries
  void readFormulaIngredients(){
    context.read<MultiDatabase>().fetchFormulaIngredients();
  }
  // update entry 
  void updateFormulaIngredient(FormulaIngredient formIng){
    // nameController.text = formIng.ingredientName;
    // dilutionController.text = formIng.ingredientDilution as String;
    // absValController.text = formIng.ingredientAbsoluteAmount as String;
    


    showDialog(
      context: context, 
      builder: (context) => AlertDialog(
      title: const Text("Update Note"),
      // content: TextField(controller: nameController),
      actions: [
        MaterialButton(
          onPressed: (){
          // update note in db
          context
            .read<MultiDatabase>()
            .updateFormulaIngredients(
              formIng.id, 
              nameController.text,
              // double.tryParse(absValController.text),
              // double.tryParse(dilutionController.text),
            );

          // clear controller 
          // nameController.clear();
          // dilutionController.clear();
          // absValController.clear();

          // pop dialog box
          Navigator.pop(context);
        },
        child: const Text("Update"),
        )
      ],
    )
  );
  }
  // delete entry
  void deleteFormulaIngredient(int id){
    context.read<MultiDatabase>().deleteFormulaIngredient(id);
  }
  @override
  Widget build(BuildContext context) {
    // formula ingredient database (table?)
    final formulaIngredientsDatabase = context.watch<MultiDatabase>();
    List<FormulaIngredient> currentFormulaIngredients = formulaIngredientsDatabase.currentFormulaIngredients;
    return Scaffold(
      appBar: AppBar(
        elevation:0,
        backgroundColor: Colors.transparent,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        
       ),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: currentFormulaIngredients.length,
                  itemBuilder: (context, index){
                    //  get individual note 
                    final formIng = currentFormulaIngredients[index];
                    // list tile UI
                    return FormulaIngredientTile(
                      ingName: formIng.ingredientName,
                      ingDilution: formIng.ingredientDilution,
                      ingAbsAmount: formIng.ingredientAbsoluteAmount,
                      ingRelAmount: formIng.ingredientRelativeAmount,

                      onEditPressed: ()=>updateFormulaIngredient(formIng),
                      onDeletePressed: () => deleteFormulaIngredient(formIng.id),
                          );
                      }),
                  ),
              InkWell(
                onTap: createFormulaIngredientEntry,
                child: SizedBox(
                  
                  height: 50,
                  // width: 100,
                  child: NeuBox(
                    // onPressed:,
                    child:Icon(
                      Icons.add,
                      size: 30,
                      color:Theme.of(context).colorScheme.inversePrimary
                      )
                  )
                ),
              )
            ],
          ),
        ),
      )

       );
  }
}