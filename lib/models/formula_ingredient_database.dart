import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:mintodo_flutter/models/formula_ingredient.dart';
import 'package:path_provider/path_provider.dart';

class FormulaIngredientDatabase extends ChangeNotifier {
  static late Isar isar;
  //  initialize 
  static Future<void> initialize() async{
    final dir = await getApplicationDocumentsDirectory();
    isar = await Isar.open(
      [FormulaIngredientSchema], 
      directory: dir.path,
      );
  }
  // list of notes
  final List<FormulaIngredient> currentFormulaIngredients = [];
  // create entry with formula ingredient

  Future<void> addFormulaIngredient(
    String textFromUser, 
    num amountAbsFromUser,
    num amountRelFromUser,
    [num? dilutionFactor]
     ) async{
    final nullDilution = dilutionFactor??1; // if dilutionFactor is not null, dilutionFactor else 1
    // create a new note object
    final newFormulaIngredient = FormulaIngredient()
    ..ingredientName = textFromUser
    ..ingredientDilution = nullDilution as double
    ..ingredientAbsoluteAmount = amountAbsFromUser as double
    ..ingredientRelativeAmount = amountRelFromUser as double;

    // save to db
    await isar.writeTxn(() => isar.formulaIngredients.put(newFormulaIngredient));

    // re-read formula ingredients
    fetchFormulaIngredients();
  }

  // read all formula ingredients
  Future<void> fetchFormulaIngredients() async{
    List<FormulaIngredient> fetchedFormulaIngredients = await isar.formulaIngredients.where().findAll();
    currentFormulaIngredients.clear();
    currentFormulaIngredients.addAll(fetchedFormulaIngredients);
    notifyListeners();
  }
  // update a formula ingredient
  Future<void> updateFormulaIngredients(
    int id, 
    [String? newName, num? newAbsAmount, num? newRelAmount, num? newDilution]    ) async{
    final existingFormulaIngredient = await isar.formulaIngredients.get(id);
    if(existingFormulaIngredient!=null){
      existingFormulaIngredient.ingredientName = newName!;
      existingFormulaIngredient.ingredientDilution = newDilution! as double;
      existingFormulaIngredient.ingredientAbsoluteAmount = newAbsAmount! as double;
      existingFormulaIngredient.ingredientRelativeAmount = newRelAmount! as double;

      await isar.writeTxn(() => isar.formulaIngredients.put(existingFormulaIngredient));
      await fetchFormulaIngredients();
    }
  }
  // delete formula ingredient
  Future<void> deleteFormulaIngredient(int id) async {
    await isar.writeTxn(() => isar.formulaIngredients.delete(id));
    await fetchFormulaIngredients();
  }
}