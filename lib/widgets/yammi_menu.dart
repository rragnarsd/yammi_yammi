import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yammi_yammi/utils/app_colors.dart';
import 'package:yammi_yammi/utils/app_styles.dart';

class YammiMenu extends StatelessWidget {
  const YammiMenu({super.key, required this.title, required this.btnText});

  final String title;
  final String btnText;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Spacer(),
          HoverButton(btnText: btnText, onPressed: () {}),
        ],
      ),
    );
  }
}

class HoverButton extends StatefulWidget {
  const HoverButton({
    super.key,
    required this.btnText,
    this.onPressed,
    this.hasIcon = false,
    this.isFullWidth = false,
    this.isCentered = false,
    this.backgroundColor = YammiColors.whiteColor,
    this.textColor = YammiColors.blackColor,
    this.hoverBackgroundColor,
    this.hoverTextColor,
  });

  final String btnText;
  final VoidCallback? onPressed;
  final bool hasIcon;
  final bool isFullWidth;
  final bool isCentered;
  final Color backgroundColor;
  final Color textColor;
  final Color? hoverBackgroundColor;
  final Color? hoverTextColor;

  @override
  State<HoverButton> createState() => _HoverButtonState();
}

class _HoverButtonState extends State<HoverButton> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: GestureDetector(
        onTap: widget.onPressed,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          curve: Curves.easeOut,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          decoration: raisedBorderDecoration(
            backgroundColor: _isHovered
                ? Colors.grey[100]!
                : YammiColors.whiteColor,
            borderColor: YammiColors.blackColor,
            shadowOffset: _isHovered ? const Offset(4, 4) : const Offset(2, 2),
          ),
          child: widget.hasIcon
              ? Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      widget.btnText,
                      style: GoogleFonts.lato(
                        color: YammiColors.blackColor,
                        fontWeight: _isHovered
                            ? FontWeight.bold
                            : FontWeight.normal,
                      ),
                    ),
                    const SizedBox(width: 4),
                    Transform.rotate(
                      angle: 45 * 3.1415926535 / 180,
                      child: const Icon(Icons.arrow_upward),
                    ),
                  ],
                )
              : Text(
                  widget.btnText,
                  style: GoogleFonts.lato(
                    color: YammiColors.blackColor,
                    fontWeight: _isHovered
                        ? FontWeight.bold
                        : FontWeight.normal,
                  ),
                ),
        ),
      ),
    );
  }
}
