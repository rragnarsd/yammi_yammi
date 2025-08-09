import 'package:flutter/material.dart';
import 'package:yammi_yammi/yammi_menu.dart';

class YammiTeamSection extends StatelessWidget {
  const YammiTeamSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 2),
          color: Color(0xffFF72B4),
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
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Colors.black, width: 2),
                        color: Colors.blue,
                      ),
                      child: const Center(child: Text('Grid Item 1')),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Colors.black, width: 2),
                        color: Colors.blue,
                      ),
                      child: const Center(child: Text('Grid Item 2')),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Colors.black, width: 2),
                        color: Colors.blue,
                      ),
                      child: const Center(child: Text('Grid Item 3')),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Colors.black, width: 2),
                        color: Colors.blue,
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
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.black, width: 2),
                    color: Color(0xffCAFE89),
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
