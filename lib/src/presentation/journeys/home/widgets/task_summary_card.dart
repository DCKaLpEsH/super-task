import 'package:dailoz_app/gen/assets.gen.dart';
import 'package:dailoz_app/gen/colors.gen.dart';
import 'package:flutter/material.dart';

class TaskSummaryCard extends StatelessWidget {
  const TaskSummaryCard({
    required this.data,
    super.key,
  });

  final TaskCardData data;

  @override
  Widget build(BuildContext context) {
    final fadedColor = data.color.withValues(alpha: 0.5);
    return Expanded(
      flex: data.flex,
      child: GestureDetector(
        onTap: data.onTap,
        child: DecoratedBox(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: fadedColor,
                spreadRadius: 0.1,
                blurRadius: 10,
                offset: const Offset(1, 5),
              ),
            ],
          ),
          child: DecoratedBox(
            decoration: ShapeDecoration(
              shape: data.iosStyleBorder
                  ? ContinuousRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    )
                  : RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
              // borderRadius: BorderRadius.circular(20),

              gradient: LinearGradient(
                colors: [
                  data.color,
                  data.color.withValues(alpha: 0.5),
                ],
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
              ),
              image: DecorationImage(
                scale: 0.7,
                image: AssetImage(data.bgImagePath),
                alignment: Alignment.topCenter,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: data.image,
                        ),
                        Assets.icons.arrowRight.svg(
                          height: 12,
                          width: 12,
                          colorFilter: ColorFilter.mode(
                            data.showWhiteText
                                ? Colors.white
                                : AppColors.luckyPoint,
                            BlendMode.srcIn,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    data.title,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: data.showWhiteText
                          ? Colors.white
                          : AppColors.luckyPoint,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    '${data.taskCount} Task',
                    style: TextStyle(
                      fontSize: 16,
                      color: data.showWhiteText
                          ? Colors.white.withValues(alpha: 0.7)
                          : AppColors.luckyPoint.withValues(alpha: 0.7),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class TaskCardData {
  TaskCardData({
    required this.title,
    required this.bgImagePath,
    required this.taskCount,
    required this.color,
    required this.image,
    required this.onTap,
    this.showWhiteText = false,
    this.flex = 1,
    this.iosStyleBorder = true,
  });

  final String title;
  final String bgImagePath;
  final bool showWhiteText;
  final bool iosStyleBorder;
  final int taskCount;
  final int flex;

  final Color color;
  final Widget image;
  final VoidCallback onTap;
}
