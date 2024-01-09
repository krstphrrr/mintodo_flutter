import 'package:flutter/material.dart';

class NeuBox extends StatelessWidget {
  final child;
  const NeuBox({
    Key? key,
    required this.child,
    }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color:Theme.of(context).colorScheme.background,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).colorScheme.tertiary,
            blurRadius: 15,
            offset: const Offset(5,5)
          ),
           BoxShadow(
            color: Theme.of(context).colorScheme.primary,
            blurRadius: 15,
            offset: const Offset(-5,-5),
          )
        ]
      ),
      child: Center(child:child),
    );
  }
}