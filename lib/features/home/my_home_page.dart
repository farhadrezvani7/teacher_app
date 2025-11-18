import 'package:flutter/material.dart';
import 'package:teacher_app/features/home/widgets/appbar_widget.dart';
import 'package:teacher_app/features/home/widgets/bottom_navigation_bar_widget.dart';
import 'package:teacher_app/features/home/widgets/card_widget.dart';
import 'package:teacher_app/features/home/widgets/profile_section_widget.dart';
import 'package:teacher_app/gen/assets.gen.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: double.infinity,
            child: Assets.images.a031e3e91d4e9e9792cce85939482907d0c5dd37c
                .image(fit: BoxFit.fitHeight),
          ),
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
