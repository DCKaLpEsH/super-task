import 'package:dailoz_app/gen/colors.gen.dart';
import 'package:dailoz_app/src/domain/entities/task_entity.dart';
import 'package:dailoz_app/src/domain/task_status.dart';
import 'package:dailoz_app/src/presentation/widgets/task_card.dart';
import 'package:flutter/material.dart';

class TodayTaskSection extends StatelessWidget {
  const TodayTaskSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Today's Task",
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: AppColors.luckyPoint,
                    fontWeight: FontWeight.w500,
                  ),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                'View all',
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        TaskCard(
          task: TaskEntity(
            tags: ['Urgent', 'Home'],
            title: 'Cleaning Clothes',
            date: DateTimeRange(start: DateTime.now(), end: DateTime.now()),
            status: TaskStatus.pending,
          ),
        ),
        const SizedBox(height: 12),
        TaskCard(
          task: TaskEntity(
            tags: ['Non Urgent', 'Cafe'],
            title: 'Meeting with John',
            date: DateTimeRange(start: DateTime.now(), end: DateTime.now()),
            status: TaskStatus.pending,
          ),
        ),
      ],
    );
  }
}
