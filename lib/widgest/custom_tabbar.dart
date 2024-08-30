import 'package:flutter/material.dart';

class CustomTabbar extends StatelessWidget {
  final List<IconData> icons;
  final int selectedIdex;
  final Function(int) onTap;
  final bool isBottomIndicator;

  const CustomTabbar(
      {super.key,
      required this.icons,
      required this.selectedIdex,
      required this.onTap,
      required this.isBottomIndicator});

  @override
  Widget build(BuildContext context) {
    return TabBar(
      indicatorPadding: EdgeInsets.zero,
      indicator: BoxDecoration(
        border: isBottomIndicator
            ? const Border(
                bottom: BorderSide(
                  // color: Colors.blue,
                  width: 3.0,
                ),
              )
            : const Border(
                top: BorderSide(
                  // color: Colors.blue,
                  width: 3.0,
                ),
              ),
      ),
      tabs: icons
          .asMap()
          .map((i, e) => MapEntry(
                i,
                Tab(
                  icon: Icon(
                    e,
                    // color: i == selectedIdex ? Colors.black : Colors.black45,
                    size: 30.0,
                  ),
                ),
              ))
          .values
          .toList(),
      onTap: onTap,
    );
  }
}
