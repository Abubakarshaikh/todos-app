import 'package:flutter/material.dart';
import 'package:todos_app/add_todos_bottom_sheet.dart';
import 'package:todos_app/todo_entity.dart';
import 'package:todos_app/todo_tile.dart';

final todos = <TodoEntity>[
  TodoEntity(
    id: 1,
    title: 'Go to gym',
    description: "I'll go to gym everyday",
    isCompleted: false,
    dateTime: DateTime.now(),
  ),
  TodoEntity(
    id: 1,
    title: 'Go to gym',
    description: "I'll go to gym everyday",
    isCompleted: false,
    dateTime: DateTime.now(),
  ),
  TodoEntity(
    id: 1,
    title: 'Go to gym',
    description: "I'll go to gym everyday",
    isCompleted: false,
    dateTime: DateTime.now(),
  ),
];

class TodoScreen extends StatelessWidget {
  const TodoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todos'),
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(height: 12),
        itemBuilder: (context, index) {
          final todo = todos.elementAt(index);
          return TodoTile(
            todoEntity: todo,
          );
        },
        itemCount: todos.length,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            backgroundColor: Colors.transparent,
            builder: (context) {
              return const AddTodosBottomSheet();
            },
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
