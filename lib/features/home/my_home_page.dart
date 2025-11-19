import 'package:flutter/material.dart';
import 'package:teacher_app/features/home/widgets/appbar_widget.dart';
import 'package:teacher_app/features/home/widgets/background_widget.dart';
import 'package:teacher_app/features/home/widgets/bottom_navigation_bar_widget.dart';
import 'package:teacher_app/features/home/widgets/card_widget.dart';
import 'package:teacher_app/features/home/widgets/profile_section_widget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BackgroundWidget(),
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  AppbarWidget(),
                  ProfileSectionWidget(),
                  CardWidget(),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBarWidget(),
    );
  }
}
