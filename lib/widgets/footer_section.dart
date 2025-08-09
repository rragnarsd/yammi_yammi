import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class YammiFooterSection extends StatelessWidget {
  const YammiFooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 2),
          color: Color(0xff66FFC9),
        ),
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Expanded(
                    flex: 4,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(),
                        const SizedBox(height: 16),
                        Text(
                          "We make you feel good\nand tasty every day",
                          style: GoogleFonts.lato(),
                        ),
                        const SizedBox(height: 20),
                        Row(
                          children: [
                            _circleIcon(Icons.discord),
                            const SizedBox(width: 10),
                            _circleIcon(Icons.alternate_email),
                            const SizedBox(width: 10),
                            _circleIcon(Icons.play_circle),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(32.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("CLIENTS", style: GoogleFonts.lato()),
                          SizedBox(height: 10),
                          Text("Our Services", style: GoogleFonts.lato()),
                          Text("Products", style: GoogleFonts.lato()),
                          Text("Menu", style: GoogleFonts.lato()),
                          Text("Industries", style: GoogleFonts.lato()),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Padding(
                      padding: const EdgeInsets.all(32.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("COMPANY", style: GoogleFonts.lato()),
                          SizedBox(height: 10),
                          Text("About Us", style: GoogleFonts.lato()),
                          Text("Our Story", style: GoogleFonts.lato()),
                          Text("Mission", style: GoogleFonts.lato()),
                          Text("Leadership", style: GoogleFonts.lato()),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              const Divider(thickness: 1, color: Colors.black),
              const SizedBox(height: 16),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "© 2024 Yammi Yammi, Inc. All rights reserved.",
                    style: GoogleFonts.lato(),
                  ),
                  Row(
                    children: [
                      Text("Privacy Policy", style: GoogleFonts.lato()),
                      SizedBox(width: 20),
                      Text("License", style: GoogleFonts.lato()),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  static Widget _circleIcon(IconData icon) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 1),
        shape: BoxShape.circle,
      ),
      child: Icon(icon, size: 18, color: Colors.black),
    );
  }
}
