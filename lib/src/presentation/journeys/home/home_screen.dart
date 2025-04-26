import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: const SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              SizedBox(height: 20),
              _HeaderSection(),
              SizedBox(height: 30),
              Text('My Task',
                  style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF23235B))),
              SizedBox(height: 20),
              _TaskSummaryGrid(),
              SizedBox(height: 30),
              _TodayTaskSection(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const _CustomBottomNavBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color(0xFF5F60B9),
        elevation: 4,
        child: const Icon(Icons.add, size: 32),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class _HeaderSection extends StatelessWidget {
  const _HeaderSection();

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('Hi, Steven',
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF23235B))),
            SizedBox(height: 6),
            Text("Let's make this day productive",
                style: TextStyle(fontSize: 16, color: Color(0xFF8B8B8B))),
          ],
        ),
        CircleAvatar(
          radius: 24,
          backgroundColor: Colors.white,
          backgroundImage:
              AssetImage('assets/avatar.png'), // Replace with your asset
        ),
      ],
    );
  }
}

class _TaskSummaryGrid extends StatelessWidget {
  const _TaskSummaryGrid();

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      shrinkWrap: true,
      crossAxisSpacing: 16,
      mainAxisSpacing: 16,
      physics: const NeverScrollableScrollPhysics(),
      children: const [
        _TaskSummaryCard(
          color: Color(0xFFB2E3FF),
          icon: Icons.dashboard_customize,
          title: 'Completed',
          count: 86,
          subtitle: 'Task',
          textColor: Color(0xFF23235B),
        ),
        _TaskSummaryCard(
          color: Color(0xFFB6B6F5),
          icon: Icons.access_time,
          title: 'Pending',
          count: 15,
          subtitle: 'Task',
          textColor: Color(0xFF23235B),
        ),
        _TaskSummaryCard(
          color: Color(0xFFFFB2B2),
          icon: Icons.cancel,
          title: 'Canceled',
          count: 15,
          subtitle: 'Task',
          textColor: Color(0xFF23235B),
        ),
        _TaskSummaryCard(
          color: Color(0xFFB2FFD6),
          icon: Icons.sticky_note_2,
          title: 'On Going',
          count: 67,
          subtitle: 'Task',
          textColor: Color(0xFF23235B),
        ),
      ],
    );
  }
}

class _TaskSummaryCard extends StatelessWidget {
  final Color color;
  final IconData icon;
  final String title;
  final int count;
  final String subtitle;
  final Color textColor;

  const _TaskSummaryCard({
    required this.color,
    required this.icon,
    required this.title,
    required this.count,
    required this.subtitle,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: color.withOpacity(0.3),
            blurRadius: 12,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      padding: const EdgeInsets.all(18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Icon(icon, size: 32, color: textColor.withOpacity(0.7)),
          ),
          const SizedBox(height: 16),
          Text(title,
              style: TextStyle(
                  fontSize: 18, fontWeight: FontWeight.bold, color: textColor)),
          const SizedBox(height: 8),
          Text('$count $subtitle',
              style:
                  TextStyle(fontSize: 16, color: textColor.withOpacity(0.7))),
        ],
      ),
    );
  }
}

class _TodayTaskSection extends StatelessWidget {
  const _TodayTaskSection();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text('Today Task',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF23235B))),
            Text('View all',
                style: TextStyle(fontSize: 14, color: Color(0xFF8B8B8B))),
          ],
        ),
        const SizedBox(height: 16),
        _TodayTaskCard(
          title: 'Cleaning Clothes',
          time: '07:00 - 07:15',
          tags: ['Urgent', 'Home'],
          color: Color(0xFFF7F8FA),
        ),
        const SizedBox(height: 12),
        _TodayTaskCard(
          title: 'Cleaning Clothes',
          time: '07:00 - 07:15',
          tags: ['Urgent', 'Home'],
          color: Color(0xFFF7F8FA),
        ),
      ],
    );
  }
}

class _TodayTaskCard extends StatelessWidget {
  final String title;
  final String time;
  final List<String> tags;
  final Color color;

  const _TodayTaskCard({
    required this.title,
    required this.time,
    required this.tags,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,
              style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF23235B))),
          const SizedBox(height: 8),
          Text(time,
              style: const TextStyle(fontSize: 14, color: Color(0xFF8B8B8B))),
          const SizedBox(height: 12),
          Row(
            children: tags
                .map((tag) => Container(
                      margin: const EdgeInsets.only(right: 8),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 4),
                      decoration: BoxDecoration(
                        color: const Color(0xFFEDEDED),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(tag,
                          style: const TextStyle(
                              fontSize: 12, color: Color(0xFF8B8B8B))),
                    ))
                .toList(),
          ),
        ],
      ),
    );
  }
}

class _CustomBottomNavBar extends StatelessWidget {
  const _CustomBottomNavBar();

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      notchMargin: 8,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Icon(Icons.home, size: 32, color: Color(0xFF5F60B9)),
            Icon(Icons.calendar_today, size: 28, color: Color(0xFFB2B2B2)),
            SizedBox(width: 48), // space for FAB
            Icon(Icons.bar_chart, size: 28, color: Color(0xFFB2B2B2)),
            Icon(Icons.person, size: 28, color: Color(0xFFB2B2B2)),
          ],
        ),
      ),
    );
  }
}
