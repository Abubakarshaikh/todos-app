import 'package:flutter/material.dart';

class AddTodosBottomSheet extends StatelessWidget {
  const AddTodosBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          const Text("Todo"),
          const TextField(),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Add todos'),
          )
        ],
      ),
    );
  }
}
