import 'package:flutter/material.dart';

@immutable
final class TodoEntity {
  final int id;
  final String title;
  final String description;
  final bool isCompleted;
  final DateTime dateTime;
  const TodoEntity({
    required this.id,
    required this.title,
    required this.description,
    required this.isCompleted,
    required this.dateTime,
  });
}
