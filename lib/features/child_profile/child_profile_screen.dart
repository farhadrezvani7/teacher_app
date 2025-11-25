import 'package:flutter/material.dart';
import 'package:teacher_app/features/child_profile/widgets/tabs_widget.dart';
import 'package:teacher_app/features/home/widgets/background_widget.dart';
import 'package:teacher_app/features/personal_information/personal_information_screen.dart';
import 'package:teacher_app/features/personal_information/widgets/day_strip_widget.dart';
import 'package:teacher_app/gen/assets.gen.dart';

class ChildProfileScreen extends StatelessWidget {
  const ChildProfileScreen({super.key});

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
                  BackTitleWidget(title: 'Child Profile'),
                  ProfileSectionWidget(),
                  SizedBox(height: 20),
                  SmoothTabs(
                    onChange: (index) {
                      print("Selected Tab: $index");
                    },
                  ),
                  SizedBox(height: 12),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xffFFFFFF).withValues(alpha: .4),
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(24),
                      ),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, -4),
                          blurRadius: 16,
                          color: Color(0xff000000).withValues(alpha: .1),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        DayStripWidget(),
                        const SizedBox(height: 16),
                        Container(
                          decoration: BoxDecoration(
                            color: Color(0xffFFFFFF).withValues(alpha: .8),
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(24),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xff000000).withValues(alpha: .1),
                                offset: Offset(0, -4),
                                blurRadius: 16,
                              ),
                            ],
                          ),
                          padding: EdgeInsets.fromLTRB(16, 16, 16, 36),
                          child: Column(
                            crossAxisAlignment: .start,
                            children: [
                              ActivitySectionWidget(),
                              SizedBox(height: 12),
                              ActivitySectionWidget(),
                              SizedBox(height: 12),
                              ActivitySectionWidget(),
                              SizedBox(height: 32),
                              Text(
                                'Today’s Meal',
                                style: TextStyle(
                                  color: Color(0xff444349),
                                  fontSize: 16,
                                  fontWeight: .w600,
                                ),
                              ),
                              SizedBox(height: 14),
                              Row(
                                mainAxisAlignment: .spaceBetween,
                                children: [
                                  TodaysMealCardWidget(),
                                  TodaysMealCardWidget(),
                                  TodaysMealCardWidget(),
                                ],
                              ),
                              SizedBox(height: 32),
                              Container(
                                decoration: BoxDecoration(
                                  color: Color(0xffF7F7F8),
                                  borderRadius: BorderRadius.circular(16),
                                  border: Border.all(
                                    color: Color(0xffFAFAFA),
                                    width: 2,
                                  ),
                                ),
                                padding: EdgeInsets.symmetric(
                                  vertical: 8,
                                  horizontal: 16,
                                ),
                                child: Row(
                                  children: [
                                    Assets.images.bottle.svg(),
                                    SizedBox(width: 8),
                                    Text(
                                      'Bottle',
                                      style: TextStyle(
                                        color: Color(0xff444349),
                                        fontSize: 16,
                                        fontWeight: .w600,
                                      ),
                                    ),
                                    Spacer(),
                                    Text(
                                      '4 OZ',
                                      style: TextStyle(
                                        color: Color(0xff444349),
                                        fontSize: 16,
                                        fontWeight: .w600,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TodaysMealCardWidget extends StatelessWidget {
  const TodaysMealCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xffF7F7F8),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Color(0xffFAFAFA), width: 2),
      ),
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: .start,
        children: [
          Assets.images.breakfast.svg(),
          SizedBox(height: 8),
          Text(
            'Apple',
            style: TextStyle(
              color: Color(0xff444349),
              fontSize: 16,
              fontWeight: .w600,
            ),
          ),
          Text(
            'Breakfast',
            style: TextStyle(
              color: Color(0xff71717A).withValues(alpha: .8),
              fontSize: 14,
              fontWeight: .w400,
            ),
          ),
        ],
      ),
    );
  }
}

class ActivitySectionWidget extends StatelessWidget {
  const ActivitySectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xffFFFFFF),
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Color(0xffBAB9C0).withValues(alpha: .32),
            blurRadius: 12,
          ),
        ],
      ),
      padding: EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        children: [
          Column(
            mainAxisAlignment: .center,
            children: [
              Text(
                '08:00',
                style: TextStyle(
                  color: Color(0xff444349),
                  fontSize: 16,
                  fontWeight: .w600,
                ),
              ),
              Text(
                'AM',
                style: TextStyle(
                  color: Color(0xff6D6B76),
                  fontSize: 14,
                  fontWeight: .w400,
                ),
              ),
            ],
          ),
          SizedBox(width: 22),
          Container(
            height: 112,
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: Color(0xffDBDADD)),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: .start,
                children: [
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xffEFFAFF),
                          shape: .circle,
                        ),
                        padding: EdgeInsets.all(6),
                        child: Assets.images.subtract.svg(),
                      ),
                      SizedBox(width: 8),
                      Text(
                        'Check_In',
                        style: TextStyle(
                          color: Color(0xff444349),
                          fontSize: 16,
                          fontWeight: .w600,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xffF7F7F8),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    child: Row(
                      mainAxisAlignment: .spaceBetween,
                      children: [
                        Text(
                          'Brought By',
                          style: TextStyle(
                            color: Color(0xff6D6B76),
                            fontSize: 14,
                            fontWeight: .w600,
                          ),
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 32,
                              height: 32,
                              child: Assets.images.image.image(),
                            ),
                            SizedBox(width: 8),
                            Text(
                              'Julie Brown',
                              style: TextStyle(
                                color: Color(0xff444349),
                                fontSize: 14,
                                fontWeight: .w600,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ProfileSectionWidget extends StatelessWidget {
  const ProfileSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 16),
        Container(
          height: 68,
          width: 68,
          decoration: BoxDecoration(
            border: Border.all(width: 2, color: Colors.white),
            shape: .circle,
          ),
          child: ClipOval(
            child: Assets.images.a6fadd07775295cc625abaf33feed2e172cf00a8c
                .image(),
          ),
        ),
        SizedBox(width: 12),
        Column(
          crossAxisAlignment: .start,
          children: [
            Text(
              'Sophia Johnson',
              style: TextStyle(
                color: Color(0xff444349),
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 8),
            Container(
              decoration: BoxDecoration(
                color: Color(0xffEFEEF0),
                borderRadius: BorderRadius.circular(16),
                border: Border.all(width: 2, color: Color(0xffFAFAFA)),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 8,
                    color: Color(0xffE4D3FF).withValues(alpha: .5),
                  ),
                ],
              ),
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
              child: Row(
                mainAxisAlignment: .spaceBetween,
                children: [
                  Assets.images.gift.svg(),
                  SizedBox(width: 8),
                  Text(
                    'Date of Birth',
                    style: TextStyle(
                      color: Color(0xff444349),
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(width: 4),
                  Container(
                    width: 1,
                    height: 24,
                    decoration: BoxDecoration(color: Color(0xffDBDADD)),
                  ),
                  SizedBox(width: 4),
                  Text(
                    'July 16 , 2025',
                    style: TextStyle(
                      color: Color(0xff7B2AF3),
                      fontSize: 14,
                      fontWeight: .w400,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
