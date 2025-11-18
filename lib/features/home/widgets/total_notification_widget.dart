import 'package:flutter/material.dart';
import 'package:teacher_app/features/child_status/child_status.dart';
import 'package:teacher_app/features/home/widgets/info_card_widget.dart';
import 'package:teacher_app/gen/assets.gen.dart';

class TotalNotificationWidget extends StatelessWidget {
  const TotalNotificationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: .spaceBetween,
      children: [
        InfoCardWidget(
          color: Color(0XFFDEF4FF),
          icon: Assets.images.subtract.image(),
          title: '3/10',
          dec: 'Total Children',
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ChildStatus()),
            );
          },
        ),
        SizedBox(width: 8),
        InfoCardWidget(
          color: Color(0xffFEE5F2),
          icon: Assets.images.vector.image(),
          title: '5',
          dec: 'Notifications',
          onTap: () {},
        ),
      ],
    );
  }
}
