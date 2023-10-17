import 'package:flutter/material.dart';
import 'package:unicaps/constants/pallete.dart';

class TabsContainer extends StatelessWidget {
  final String text;

  final bool isSelected; // New property to track if it's selected

  const TabsContainer({
    Key? key,
    required this.text,
    this.isSelected = false, // Default to not selected
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const Color containerBackgroundColor = Pallete.backgroundColor;

    final Color containerTextColor =
        isSelected ? Pallete.primaryColor : Pallete.blackColor;

    final Color borderColor = isSelected ? Pallete.primaryColor : Colors.grey;

    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 34,
          width: 70,
          decoration: BoxDecoration(
            border: Border.all(color: borderColor, width: 1),
            borderRadius: BorderRadius.circular(5),
            color: containerBackgroundColor,
          ),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                fontSize: 12,
                color: containerTextColor,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
