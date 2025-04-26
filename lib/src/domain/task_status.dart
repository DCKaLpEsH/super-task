import 'package:dailoz_app/gen/colors.gen.dart';
import 'package:flutter/material.dart';

enum TaskStatus {
  completed('Completed', AppColors.hummingbird, AppColors.screaminGreen),
  ongoing('Ongoing', AppColors.lilyWhite, AppColors.dodgerBlue4),
  cancelled('Cancelled', AppColors.chablis, AppColors.tonysPink),
  pending('Pending', AppColors.titanWhite, AppColors.portage8);

  const TaskStatus(this.title, this.color, this.dividerColor);

  final String title;
  final Color color;
  final Color dividerColor;
}
