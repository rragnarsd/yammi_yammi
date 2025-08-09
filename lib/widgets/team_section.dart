import 'package:flutter/material.dart';
import 'package:yammi_yammi/utils/app_styles.dart';
import 'package:yammi_yammi/widgets/yammi_menu.dart';

class YammiTeamSection extends StatelessWidget {
  const YammiTeamSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 2),
          color: Color(0xffFF72B4),
          boxShadow: [
            const BoxShadow(
              color: Colors.black,
              offset: Offset(2, 2),
              blurRadius: 0,
              spreadRadius: 0,
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            children: [
              YammiMenu(title: 'Our Team', btnText: 'About Us'),
              Container(
                padding: const EdgeInsets.all(16.0),
                child: GridView.count(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  crossAxisCount: 4,
                  crossAxisSpacing: 16.0,
                  childAspectRatio: 1,
                  children: [
                    Container(
                      decoration: raisedBorderDecoration(
                        backgroundColor: Colors.blue,
                      ),
                      child: const Center(child: Text('Grid Item 1')),
                    ),
                    Container(
                      decoration: raisedBorderDecoration(
                        backgroundColor: Colors.blue,
                      ),
                      child: const Center(child: Text('Grid Item 2')),
                    ),
                    Container(
                      decoration: raisedBorderDecoration(
                        backgroundColor: Colors.blue,
                      ),
                      child: const Center(child: Text('Grid Item 3')),
                    ),
                    Container(
                      decoration: raisedBorderDecoration(
                        backgroundColor: Colors.blue,
                      ),
                      child: const Center(child: Text('Grid Item 4')),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  height: 200,
                  decoration: raisedBorderDecoration(
                    backgroundColor: Colors.blue,
                  ),
                  child: const Center(child: Text('Grid Item 1')),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
