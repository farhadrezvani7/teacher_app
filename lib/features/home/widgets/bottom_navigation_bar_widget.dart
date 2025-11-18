import 'package:flutter/material.dart';
import 'package:teacher_app/features/home/widgets/tab_bottom_navigation_bar.dart';
import 'package:teacher_app/gen/assets.gen.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  const BottomNavigationBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 84,
      decoration: BoxDecoration(
        color: Color(0xffFFFFFF),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(36),
          topRight: Radius.circular(36),
        ),
        boxShadow: [
          BoxShadow(
            blurRadius: 32,
            color: Color(0xff4B3425).withValues(alpha: .12),
          ),
        ],
      ),
      padding: EdgeInsets.fromLTRB(16, 12, 16, 24),
      child: Row(
        mainAxisAlignment: .spaceBetween,
        children: [
          TabBottomNavigationBar(
            icon: Assets.images.aIconN5.image(),
            isActive: true,
          ),
          TabBottomNavigationBar(
            icon: Assets.images.timeOut.image(),
            isActive: false,
          ),
          TabBottomNavigationBar(
            icon: Assets.images.group.image(),
            isActive: false,
          ),
          TabBottomNavigationBar(
            icon: Assets.images.aIconN4.image(),
            isActive: false,
          ),
          TabBottomNavigationBar(
            icon: Assets.images.aIconN3.image(),
            isActive: false,
          ),
        ],
      ),
    );
  }
}
