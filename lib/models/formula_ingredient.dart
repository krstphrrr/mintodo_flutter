import 'package:isar/isar.dart';

part 'formula_ingredient.g.dart';

@Collection()
class FormulaIngredient {
  Id id = Isar.autoIncrement;
  late String ingredientName;
  late double ingredientDilution;
  late double ingredientAbsoluteAmount;
  late double ingredientRelativeAmount;
}