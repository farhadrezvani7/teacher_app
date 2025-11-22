import 'package:flutter/material.dart';
import 'package:teacher_app/features/child_status/widgets/attach_photo_widget.dart';
import 'package:teacher_app/gen/assets.gen.dart';

class CheckOutWidget extends StatefulWidget {
  const CheckOutWidget({super.key});

  @override
  State<CheckOutWidget> createState() => _CheckOutWidgetState();
}

class _CheckOutWidgetState extends State<CheckOutWidget> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();

    // وقتی کیبورد باز/بسته شود، اسکرول اتوماتیک انجام بده
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // لیسنر تغییر اندازه صفحه (کیبورد)
      WidgetsBinding.instance.addObserver(
        LifecycleEventHandler(
          onMetricsChanged: () {
            Future.delayed(Duration(milliseconds: 150), () {
              if (_scrollController.hasClients) {
                _scrollController.animateTo(
                  _scrollController.position.maxScrollExtent,
                  duration: Duration(milliseconds: 250),
                  curve: Curves.easeOut,
                );
              }
            });
          },
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: _scrollController,
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xffFFFFFF),
          borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
          boxShadow: [
            BoxShadow(
              blurRadius: 16,
              offset: Offset(0, -4),
              color: Color(0xff95939D).withValues(alpha: .2),
            ),
          ],
        ),
        child: Column(
          children: [
            HeaderCheckOut(),
            Divider(color: Color(0xffDBDADD)),

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: .start,
                children: [
                  Text(
                    'Who is picking up Alice Johnson?',
                    style: TextStyle(
                      color: Color(0xff444349),
                      fontSize: 26,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 32),

                  ListView.builder(
                    itemCount: 3,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      if (index == 0) {
                        return Container(
                          decoration: BoxDecoration(
                            color: Color(0xffF0E7FF),
                            border: Border.all(
                              color: Color(0xffFAFAFA),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          padding: EdgeInsets.symmetric(
                            vertical: 8,
                            horizontal: 16,
                          ),
                          margin: EdgeInsets.only(bottom: 12),
                          child: Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Color(0xffFAFAFA),
                                    width: 1,
                                  ),
                                  shape: BoxShape.circle,
                                ),

                                child: Assets.images.image.image(),
                              ),
                              SizedBox(width: 8),
                              Column(
                                crossAxisAlignment: .start,
                                children: [
                                  Text(
                                    'Jane Doe',
                                    style: TextStyle(
                                      color: Color(0xff444349),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  SizedBox(height: 4),
                                  Text(
                                    'Mother',
                                    style: TextStyle(
                                      color: Color(
                                        0xff71717A,
                                      ).withValues(alpha: .8),
                                    ),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Assets.images.checkbox.svg(),
                            ],
                          ),
                        );
                      } else {
                        return Container(
                          decoration: BoxDecoration(
                            color: Color(0xffF4F4F5),
                            border: Border.all(
                              color: Color(0xffFAFAFA),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          padding: EdgeInsets.symmetric(
                            vertical: 8,
                            horizontal: 16,
                          ),
                          margin: EdgeInsets.only(bottom: 12),
                          child: Row(
                            children: [
                              Assets.images.image.image(),
                              SizedBox(width: 8),
                              Column(
                                crossAxisAlignment: .start,
                                children: [
                                  Text(
                                    'Jane Doe',
                                    style: TextStyle(
                                      color: Color(0xff444349),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  SizedBox(height: 4),
                                  Text(
                                    'Mother',
                                    style: TextStyle(
                                      color: Color(
                                        0xff71717A,
                                      ).withValues(alpha: .8),
                                    ),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Assets.images.checkbox2.svg(),
                            ],
                          ),
                        );
                      }
                    },
                  ),

                  SizedBox(height: 16),
                  NoteWidget(),
                  SizedBox(height: 20),
                  AttachPhotoWidget(),
                  SizedBox(height: 32),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 56,
                      decoration: BoxDecoration(
                        color: Color(0xff9C5CFF),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      alignment: .center,
                      child: Text(
                        'Submit',
                        style: TextStyle(
                          color: Color(0xffFAFAFA),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NoteWidget extends StatefulWidget {
  const NoteWidget({super.key});

  @override
  State<NoteWidget> createState() => _NoteWidgetState();
}

class _NoteWidgetState extends State<NoteWidget> {
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .start,
      children: [
        Text(
          'Note',
          style: TextStyle(
            color: Color(0xff444349),
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(height: 8),
        ClipRRect(
          borderRadius: BorderRadiusGeometry.circular(6),
          child: Container(
            height: 80,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  blurRadius: 2,
                  offset: Offset(0, 1),
                  color: Color(0xff000000).withValues(alpha: .05),
                ),
              ],
            ),
            child: TextFormField(
              controller: _controller,
              keyboardType: TextInputType.multiline,
              textInputAction: TextInputAction.newline,
              expands: true,
              maxLines: null,
              minLines: null,
              onEditingComplete: () {
                print("Editing completed");
              },
              decoration: InputDecoration(
                hintText: 'Placeholder',
                filled: true,
                fillColor: Color(0xffF7F7F8),
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(
                  vertical: 8,
                  horizontal: 12,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class HeaderCheckOut extends StatelessWidget {
  const HeaderCheckOut({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 22, horizontal: 16),
      child: Row(
        children: [
          Assets.images.subtract2.svg(),
          SizedBox(width: 8),
          Text(
            'Check Out',
            style: TextStyle(
              color: Color(0xff6D6B76),
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
          Spacer(),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Assets.images.iconButton.svg(),
          ),
        ],
      ),
    );
  }
}

// کلاس کمکی برای گوش دادن به تغییرات کیبورد
class LifecycleEventHandler extends WidgetsBindingObserver {
  final Function onMetricsChanged;

  LifecycleEventHandler({required this.onMetricsChanged});

  @override
  void didChangeMetrics() {
    onMetricsChanged();
  }
}
