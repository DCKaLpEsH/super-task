import 'package:dailoz_app/gen/assets.gen.dart';
import 'package:dailoz_app/gen/colors.gen.dart';
import 'package:dailoz_app/src/presentation/journeys/home/widgets/task_summary_card.dart';
import 'package:flutter/material.dart';

class TaskSummaryGrid extends StatelessWidget {
  const TaskSummaryGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Column(
            children: [
              TaskSummaryCard(
                data: TaskCardData(
                  iosStyleBorder: false,
                  title: 'Completed',
                  flex: 3,
                  bgImagePath: Assets.images.darkBlueBgArrows.path,
                  color: AppColors.seagull,
                  onTap: () {},
                  image: Assets.images.iMac1.image(),
                  taskCount: 86,
                ),
              ),
              const SizedBox(height: 16),
              TaskSummaryCard(
                data: TaskCardData(
                  title: 'Cancelled',
                  flex: 2,
                  bgImagePath: Assets.images.orangeBgArrows.path,
                  color: AppColors.deepBlus,
                  onTap: () {},
                  image: Assets.icons.closeSquare.svg(),
                  taskCount: 15,
                  showWhiteText: true,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            children: [
              TaskSummaryCard(
                data: TaskCardData(
                  title: 'Pending',
                  flex: 2,
                  bgImagePath: Assets.images.purpleBgArrows.path,
                  color: AppColors.portage,
                  onTap: () {},
                  image: Assets.icons.clock.svg(),
                  taskCount: 15,
                  showWhiteText: true,
                ),
              ),
              const SizedBox(height: 16),
              TaskSummaryCard(
                data: TaskCardData(
                  flex: 3,
                  iosStyleBorder: false,
                  title: 'On Going',
                  bgImagePath: Assets.images.greenBgArrows.path,
                  color: AppColors.pastelGreen8,
                  onTap: () {},
                  image: Assets.images.folder1.image(),
                  taskCount: 67,
                ),
              ),
            ],
          ),
        ),
      ],
    );

    // GridView.count(
    //   crossAxisCount: 2,
    //   shrinkWrap: true,
    //   crossAxisSpacing: 16,
    //   mainAxisSpacing: 16,
    //   physics: const NeverScrollableScrollPhysics(),
    //   children: const [
    //     TaskSummaryCard(
    //       gradientColor: Color(0xFFB2E3FF),
    //       icon: Icons.dashboard_customize,
    //       title: 'Completed',
    //       count: 86,
    //       subtitle: 'Task',
    //       textColor: Color(0xFF23235B),
    //     ),
    //     _TaskSummaryCard(
    //       gradientColor: Color(0xFFB6B6F5),
    //       icon: Icons.access_time,
    //       title: 'Pending',
    //       count: 15,
    //       subtitle: 'Task',
    //       textColor: Color(0xFF23235B),
    //     ),
    //     _TaskSummaryCard(
    //       gradientColor: Color(0xFFFFB2B2),
    //       icon: Icons.cancel,
    //       title: 'Canceled',
    //       count: 15,
    //       subtitle: 'Task',
    //       textColor: Color(0xFF23235B),
    //     ),
    //     _TaskSummaryCard(
    //       gradientColor: Color(0xFFB2FFD6),
    //       icon: Icons.sticky_note_2,
    //       title: 'On Going',
    //       count: 67,
    //       subtitle: 'Task',
    //       textColor: Color(0xFF23235B),
    //     ),
    //   ],
    // );
  }
}
