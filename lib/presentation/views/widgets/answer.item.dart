import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AnswerItemWidget extends StatelessWidget {
  final String option;
  final String title;
  final bool? isSelected;

  const AnswerItemWidget({
    required this.option,
    required this.title,
    this.isSelected,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFF232A2E),
        borderRadius: BorderRadius.circular(
          12.0,
        ),
        border: isSelected == true
            ? Border.all(width: 2.0, color: Color(0xFF8B88EF))
            : null,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 10.0,
        vertical: 12.0,
      ),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              border: isSelected == false
                  ? Border.all(width: .7, color: Colors.white)
                  : null,
              borderRadius: BorderRadius.circular(100.0),
              color: isSelected == true ? Color(0xFF8B88EF) : null,
            ),
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
            child: Text(
              option,
              style: TextStyle(color: Color(0xFFC4C4C4)),
            ),
          ),
          const Gap(10.0),
          Flexible(
            child: Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 14.0,
                color: Color(0xFFC4C4C4),
              ),
            ),
          )
        ],
      ),
    );
  }
}
