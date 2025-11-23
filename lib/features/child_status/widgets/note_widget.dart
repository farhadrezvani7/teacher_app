import 'package:flutter/material.dart';

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
              onEditingComplete: () {},
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
