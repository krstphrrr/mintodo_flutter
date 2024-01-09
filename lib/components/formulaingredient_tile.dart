import 'package:flutter/material.dart';
import 'package:mintodo_flutter/components/formulaingredient_setting.dart';
// import 'package:mintodo_flutter/components/note_setting.dart';
import 'package:popover/popover.dart';

class FormulaIngredientTile extends StatelessWidget {
  final String ingName;
  final num? ingDilution;
  final num? ingRelAmount;
  final num? ingAbsAmount;

  final void Function()? onEditPressed;
  final void Function()? onDeletePressed;

  const FormulaIngredientTile({
    super.key,
    this.ingDilution,
    this.ingAbsAmount,
    this.ingRelAmount,
    required this.ingName,
    required this.onEditPressed,
    required this.onDeletePressed,
    });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.circular(8),
      ),
      margin: const EdgeInsets.only(top: 10,left: 25, right: 25),
      child: ListTile(
        title: Text("$ingName (${ingDilution}%)                      ${ingAbsAmount}g"),
        trailing: Builder(
          builder: (context) {
            return IconButton(
              icon: const Icon(Icons.more_vert),
              onPressed: () => showPopover(
                width: 100,
                height: 100,
                backgroundColor: Theme.of(context).colorScheme.background,
                context: context, 
                bodyBuilder: ((context) => FormulaIngredientSettings(
                  onEditTap: onEditPressed,
                  onDeleteTap: onDeletePressed,
                )
                ),
            )
            
            // Row(
            //   mainAxisSize: MainAxisSize.min,
            //   children: [
            //     IconButton(
            //       onPressed: onEditPressed, 
            //       icon: const Icon(Icons.edit),
            //       ),
            //     IconButton(
            //       onPressed: onDeletePressed, 
            //       icon: const Icon(Icons.delete),
            //       )
            //   ],
            // )
            );
          }
        )
      )
    );
  }
}