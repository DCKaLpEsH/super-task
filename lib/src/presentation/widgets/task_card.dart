import 'package:dailoz_app/gen/assets.gen.dart';
import 'package:dailoz_app/gen/colors.gen.dart';
import 'package:dailoz_app/src/domain/entities/task_entity.dart';
import 'package:flutter/material.dart';

class TaskCard extends StatelessWidget {
  const TaskCard({
    required this.task,
    super.key,
  });

  final TaskEntity task;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: task.statusColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              VerticalDivider(
                color: task.status.dividerColor,
                width: 2,
                thickness: 2,
                indent: 1,
                endIndent: 1,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    task.title,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  Text(
                    task.formattedTime,
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          color: AppColors.rockBlue,
                        ),
                  ),
                ],
              ),
              const Spacer(),
              Assets.icons.moreVertical.svg(
                height: 16,
                width: 16,
              ),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            children: task.tags
                .map(
                  (tag) => Container(
                    margin: const EdgeInsets.only(right: 8),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.tonysPink.withValues(alpha: 0.2),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Text(
                      tag,
                      style: Theme.of(context).textTheme.labelSmall!.copyWith(
                            color: AppColors.tonysPink,
                          ),
                    ),
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}
