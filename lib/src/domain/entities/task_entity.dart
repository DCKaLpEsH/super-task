import 'package:dailoz_app/src/domain/task_status.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TaskEntity {
  TaskEntity({
    required this.title,
    required this.date,
    required this.status,
    required this.tags,
    this.description,
  });

  final String title;
  final String? description;
  final DateTimeRange date;
  final TaskStatus status;
  final List<String> tags;

  String get formattedTime {
    final formatter = DateFormat('jm');
    return '${formatter.format(date.start)} - ${formatter.format(date.end)}';
  }

  Color get statusColor {
    return status.color;
  }
}
