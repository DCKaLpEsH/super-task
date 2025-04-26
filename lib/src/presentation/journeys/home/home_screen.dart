import 'package:dailoz_app/gen/assets.gen.dart';
import 'package:dailoz_app/gen/colors.gen.dart';
import 'package:dailoz_app/src/presentation/journeys/home/widgets/home_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BottomAppBarCubit(),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                const _HeaderSection(),
                const SizedBox(height: 30),
                const Text(
                  'My Task',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF23235B),
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.4,
                  child: const TaskSummaryGrid(),
                ),
                const SizedBox(height: 30),
                const TodayTaskSection(),
              ],
            ),
          ),
        ),
        bottomNavigationBar: const AppBottomNavBar(),
      ),
    );
  }
}

class _HeaderSection extends StatelessWidget {
  const _HeaderSection();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hi, Steven',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Color(0xFF23235B),
              ),
            ),
            SizedBox(height: 6),
            Text(
              "Let's make this day productive",
              style: TextStyle(fontSize: 16, color: Color(0xFF8B8B8B)),
            ),
          ],
        ),
        DecoratedBox(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: const [
              BoxShadow(
                color: Color(0xFFF1F7FF),
                blurRadius: 10,
                offset: Offset(0, 4),
              ),
            ],
            borderRadius: BorderRadius.circular(16),
          ),
          child: CircleAvatar(
            radius: 24,
            backgroundColor: Colors.white,
            backgroundImage: Assets.images.profile.image().image,
          ),
        ),
      ],
    );
  }
}

class BottomAppBarCubit extends Cubit<int> {
  BottomAppBarCubit() : super(0);

  void changeIndex(int index) {
    emit(index);
  }
}
