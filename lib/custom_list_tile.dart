import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  /// Optional leading widget
  final Widget? leading;

  /// Required title text
  final Text? title;

  /// Optional subtitle text
  final Widget? subTitle;

  /// Optional tap event handler
  final Function? onTap;

  /// Optional long press event handler
  final Function? onLongPress;

  /// Optional double tap event handler
  final Function? onDoubleTap;

  /// Optional trailing widget
  final Widget? trailing;

  /// Optional tile background color
  final Color? tileColor;

  /// Required card background color
  final Color shadowColor;

  /// Required height for the custom list tile
  final double? height;

  // Constructor for the custom list tile
  const CustomListTile({
    super.key,
    required this.title,
    required this.shadowColor,
    required this.height,
    this.leading,
    this.subTitle,
    this.onTap,
    this.onLongPress,
    this.onDoubleTap,
    this.trailing,
    this.tileColor,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: tileColor, // Set background color if provided
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: InkWell(
          onTap: () => onTap, // Tap event handler
          onDoubleTap: () => onDoubleTap,
          onLongPress: () => onLongPress,
          child: Container(
            height: height,
            decoration: BoxDecoration(
              color: tileColor,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: shadowColor,
                  blurRadius: 5,
                  offset: const Offset(2, 2),
                ),
              ],
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 12.0, right: 12.0),
                  child: leading,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment:
                        CrossAxisAlignment.start, // Align text left
                    children: [
                      title ?? const SizedBox(),
                      subTitle ?? const SizedBox(),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10.0, 12, 10, 12),
                  child: trailing,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
