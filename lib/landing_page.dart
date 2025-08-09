import 'package:flutter/material.dart';
import 'package:yammi_yammi/footer_section.dart';
import 'package:yammi_yammi/hero_section.dart';
import 'package:yammi_yammi/menu_section.dart';
import 'package:yammi_yammi/nav_section.dart';
import 'package:yammi_yammi/team_section.dart';
import 'package:yammi_yammi/testmonial_section.dart';
import 'package:yammi_yammi/yammi_menu.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 3),
                color: Color(0xff66FFC9),
              ),
              child: Padding(
                padding: const EdgeInsets.all(32.0),
                child: Column(
                  children: [
                    YammiNavSection(),
                    YammiHeroSection(),
                    SizedBox(height: 16),
                    YammiMenu(title: 'Our Menu', btnText: 'All menu'),
                    YammiMenuSection(),
                  ],
                ),
              ),
            ),
          ),
          YammiTeamSection(),
          YammiTestimonialSection(),
          YammiFooterSection(),
        ],
      ),
    );
  }
}
