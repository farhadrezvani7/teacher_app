import 'package:flutter/material.dart';
import 'package:teacher_app/gen/assets.gen.dart';

class AppbarWidget extends StatelessWidget {
  const AppbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Row(
        mainAxisAlignment: .spaceBetween,
        children: [
          Text(
            'Home',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Color(0xff444349),
            ),
          ),

          Container(
            height: 36,
            decoration: BoxDecoration(
              color: Color(0xffF0E7FF),
              borderRadius: BorderRadius.circular(16),
              border: Border.all(width: 2, color: Color(0xffFAFAFA)),
            ),
            padding: EdgeInsets.symmetric(horizontal: 14),
            child: Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                Assets.images.leftSlotItems.image(),
                SizedBox(width: 8),
                Text(
                  'Toddler 2',
                  style: TextStyle(
                    color: Color(0xff681AD6),
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
