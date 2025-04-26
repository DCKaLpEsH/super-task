import 'package:dailoz_app/gen/assets.gen.dart';
import 'package:dailoz_app/gen/colors.gen.dart';
import 'package:dailoz_app/src/presentation/journeys/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppBottomNavBar extends StatelessWidget {
  const AppBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 40,
        left: 16,
        right: 16,
      ),
      height: 80,
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 4,
      ),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [
          BoxShadow(color: Color(0xFFF1F7FF), blurRadius: 10, spreadRadius: 10),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(5, (index) {
          if (index != 2) {
            return AppBottomNavBarItem(
              index: index,
            );
          }
          return FloatingActionButton(
            onPressed: () {},
            shape: const CircleBorder(),
            backgroundColor: AppColors.indigo,
            child: Assets.icons.add.svg(),
          );
        }),
      ),
    );
  }
}

class AppBottomNavBarItem extends StatelessWidget {
  AppBottomNavBarItem({
    required this.index,
    super.key,
  });
  final int index;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomAppBarCubit, int>(
      builder: (context, state) {
        return InkWell(
          onTap: () => context.read<BottomAppBarCubit>().changeIndex(index),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (index == state) ...[
                selectedIcons[index],
                const SizedBox(
                  height: 4,
                ),
                const SizedBox(
                  height: 5,
                  width: 5,
                  child: DecoratedBox(
                    decoration: ShapeDecoration(
                      shape: CircleBorder(),
                      color: AppColors.indigo,
                    ),
                  ),
                ),
              ] else ...[
                unselectedIcons[index],
                const SizedBox(
                  height: 5,
                  width: 5,
                ),
              ],
            ],
          ),
        );
      },
    );
  }

  final unselectedIcons = [
    Assets.icons.homeOutlined.svg(
      height: 24,
      width: 24,
    ),
    Assets.icons.tasksOutlined.svg(
      height: 24,
      width: 24,
    ),
    Assets.icons.tasksOutlined.svg(
      height: 24,
      width: 24,
    ),
    Assets.icons.activityOutlined.svg(
      height: 24,
      width: 24,
    ),
    Assets.icons.profileOutlined.svg(
      height: 24,
      width: 24,
    ),
  ];

  final selectedIcons = [
    Assets.icons.homeFilled.svg(
      height: 24,
      width: 24,
    ),
    Assets.icons.tasksFilled.svg(
      height: 24,
      width: 24,
    ),
    Assets.icons.tasksFilled.svg(
      height: 24,
      width: 24,
    ),
    Assets.icons.activityFilled.svg(
      height: 24,
      width: 24,
    ),
    Assets.icons.profileFilled.svg(
      height: 24,
      width: 24,
    ),
  ];
}
