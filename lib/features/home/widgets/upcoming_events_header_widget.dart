import 'package:flutter/material.dart';
import 'package:swipable_stack/swipable_stack.dart';
import 'package:teacher_app/features/home/widgets/event_card.dart';
import 'package:teacher_app/gen/assets.gen.dart';

class UpcomingEventsHeaderWidget extends StatelessWidget {
  const UpcomingEventsHeaderWidget({super.key, required this.controller});

  final SwipableStackController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: .center,
          children: [
            Text(
              'Upcoming Events',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Color(0xff444349),
              ),
            ),
            Spacer(),
            Text(
              'More',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Color(0xff444349),
              ),
            ),
            SizedBox(width: 4),
            Assets.images.next.svg(),
          ],
        ),
        SizedBox(height: 14),
        SizedBox(
          height: 110,
          child: SwipableStack(
            controller: controller,
            stackClipBehaviour: Clip.none,
            allowVerticalSwipe: false,
            itemCount: 3,
            builder: (context, properties) {
              return eventCard(
                properties.index,
                properties.stackIndex,
                context,
              );
            },
            onSwipeCompleted: (index, direction) {},
            onWillMoveNext: (index, direction) {
              return false;
            },
          ),
        ),
      ],
    );
  }
}
