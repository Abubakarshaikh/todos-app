import 'package:flutter/material.dart';

import 'package:todos_app/todo_entity.dart';

class TodoTile extends StatelessWidget {
  final TodoEntity todoEntity;
  const TodoTile({
    Key? key,
    required this.todoEntity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(todoEntity.title),
      subtitle: Text(todoEntity.description),
      trailing: Row(
        children: [
          Text(todoEntity.dateTime.toString()),
          Checkbox(
            value: todoEntity.isCompleted,
            onChanged: (value) {},
          ),
        ],
      ),
    );
  }
}
