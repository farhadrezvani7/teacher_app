import 'package:flutter/material.dart';
import 'package:teacher_app/features/home/widgets/item_widget.dart';
import 'package:teacher_app/features/home/widgets/total_notification_widget.dart';
import 'package:teacher_app/gen/assets.gen.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

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
                Assets.images.aIconN.image(),
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
              Assets.images.next.image(),
            ],
          ),
          SizedBox(height: 14),
          SizedBox(
            width: double.infinity,
            child: Assets.images.eventCards.image(fit: .fitWidth),
          ),
          SizedBox(height: 32),
          ItemWidget(
            colorIcon: Color(0xffF9F5FF),
            title: 'Birthday',
            dec: 'John’s, Sofia & Lia Birthday',
            icon: Assets.images.birthday.image(),
          ),
          SizedBox(height: 12),
          ItemWidget(
            colorIcon: Color(0xffFEF1F8),
            title: 'Dietary Restriction',
            dec: 'Sara allergy to',
            icon: Assets.images.dietaryRestrictions.image(),
          ),
          SizedBox(height: 12),
          ItemWidget(
            colorIcon: Color(0xffEFFEF5),
            title: 'Medicine',
            dec: 'Joe Aspirin tablet at',
            icon: Assets.images.medication.image(),
          ),
        ],
      ),
    );
  }
}
