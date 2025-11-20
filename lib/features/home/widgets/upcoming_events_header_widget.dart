import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:teacher_app/features/home/widgets/event_card.dart';
import 'package:teacher_app/gen/assets.gen.dart';

class UpcomingEventsHeaderWidget extends StatelessWidget {
  const UpcomingEventsHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final CardSwiperController controller = CardSwiperController();

    // تعداد کارت‌ها
    final int cardsCount = 3;
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
          height: 130,
          child: CardSwiper(
            controller: controller,
            cardsCount: cardsCount,
            cardBuilder:
                (context, index, percentThresholdX, percentThresholdY) {
                  int stackIndex = index;
                  return eventCard(index, stackIndex, context);
                },
            numberOfCardsDisplayed: 2,
            padding: const EdgeInsets.symmetric(vertical: 10),
            maxAngle: 1,
            isLoop: true,
          ),
        ),
      ],
    );
  }
}
