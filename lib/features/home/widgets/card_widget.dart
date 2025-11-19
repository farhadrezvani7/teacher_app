import 'package:flutter/material.dart';
import 'package:swipable_stack/swipable_stack.dart';
import 'package:teacher_app/features/home/widgets/item_widget.dart';
import 'package:teacher_app/features/home/widgets/total_notification_widget.dart';
import 'package:teacher_app/gen/assets.gen.dart';

class CardWidget extends StatefulWidget {
  const CardWidget({super.key});

  @override
  State<CardWidget> createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  final controller = SwipableStackController();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xffFFFFFF).withValues(alpha: .7),
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20),
          topLeft: Radius.circular(20),
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -4),
            blurRadius: 16,
            color: Color(0xff95939D).withValues(alpha: .2),
          ),
        ],
      ),
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Color(0xffDBDADD).withValues(alpha: .6),
              border: Border.all(width: 2, color: Color(0xffFAFAFA)),
              boxShadow: [
                BoxShadow(
                  blurRadius: 8,
                  color: Color(0xffE4D3FF).withValues(alpha: .5),
                ),
              ],
              borderRadius: BorderRadius.circular(16),
            ),
            padding: EdgeInsets.fromLTRB(20, 12, 0, 12),
            child: Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: .start,
                  mainAxisAlignment: .spaceBetween,
                  children: [
                    Text(
                      'Your class hasn’t started',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff444349),
                      ),
                    ),
                    SizedBox(height: 12),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xffFFFFFF),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 8,
                      ),
                      child: Text(
                        'Class Check-In',
                        style: TextStyle(
                          color: Color(0xff444349),
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
                Assets.images.aIconNPng.image(),
              ],
            ),
          ),
          SizedBox(height: 12),
          TotalNotificationWidget(),
          SizedBox(height: 32),
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
          SizedBox(height: 32),
          ItemWidget(
            colorIcon: Color(0xffF9F5FF),
            title: 'Birthday',
            dec: 'John’s, Sofia & Lia Birthday',
            icon: Assets.images.birthday.svg(),
          ),
          SizedBox(height: 12),
          ItemWidget(
            colorIcon: Color(0xffFEF1F8),
            title: 'Dietary Restriction',
            dec: 'Sara allergy to',
            icon: Assets.images.dietaryRestrictions.svg(),
          ),
          SizedBox(height: 12),
          ItemWidget(
            colorIcon: Color(0xffEFFEF5),
            title: 'Medicine',
            dec: 'Joe Aspirin tablet at',
            icon: Assets.images.medication.svg(),
          ),
        ],
      ),
    );
  }
}

Widget eventCard(int index, int stackIndex, BuildContext context) {
  double width;
  double scale = 1.0;
  double rightOffset = 0;

  if (stackIndex == 0) {
    width = MediaQuery.of(context).size.width * 0.75;
    rightOffset = 0;
  } else if (stackIndex == 1) {
    width = MediaQuery.of(context).size.width * 0.85;
    scale = 0.95;
    rightOffset = 10;
  } else {
    width = MediaQuery.of(context).size.width;
    scale = 0.9;
    rightOffset = 20;
  }

  return Stack(
    children: [
      Positioned(
        right: rightOffset,
        child: Transform.scale(
          scale: scale,
          alignment: Alignment.topRight,
          child: Container(
            width: width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Color(0xffDEF4FF),
              border: Border.all(width: 2, color: Color(0xffFAFAFA)),
              boxShadow: [
                BoxShadow(
                  blurRadius: 8,
                  color: Color(0xffE4D3FF).withValues(alpha: 0.5),
                ),
              ],
            ),
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Field Trip To Zoo",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff444349),
                  ),
                ),
                SizedBox(height: 8),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xffFFFFFF).withValues(alpha: 0.7),
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 8,
                        color: Color(0xffE4D3FF).withValues(alpha: 0.5),
                      ),
                    ],
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 2),
                  child: Row(
                    children: [
                      Assets.images.calendarDate.svg(),
                      SizedBox(width: 10),
                      Text("Monday", style: TextStyle(fontSize: 14)),
                      SizedBox(width: 4),
                      Container(width: 1, height: 24, color: Color(0xffDBDADD)),
                      SizedBox(width: 4),
                      Text("July 16", style: TextStyle(fontSize: 14)),
                      SizedBox(width: 4),
                      Container(width: 1, height: 24, color: Color(0xffDBDADD)),
                      SizedBox(width: 4),
                      Text("12:00 AM", style: TextStyle(fontSize: 14)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ],
  );
}
