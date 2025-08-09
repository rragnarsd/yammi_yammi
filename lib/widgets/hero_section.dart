import 'package:flutter/material.dart';
import 'package:yammi_yammi/utils/app_styles.dart';

class YammiHeroSection extends StatelessWidget {
  const YammiHeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        children: [
          SizedBox(
            height: 400,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    width: MediaQuery.sizeOf(context).width / 2,
                    decoration: raisedBorderDecoration(
                      backgroundColor: Color(0xffFF72B4),
                    ),
                    child: Center(child: const Text('Menu Item 1')),
                  ),
                ),
                SizedBox(height: 8),
                Flexible(
                  flex: 2,
                  child: SizedBox(
                    width: MediaQuery.sizeOf(context).width / 2,
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 200,
                            decoration: raisedBorderDecoration(
                              backgroundColor: Color(0xffFFD074),
                            ),
                            child: Center(child: const Text('Menu Item 2')),
                          ),
                        ),
                        SizedBox(width: 8),
                        Expanded(
                          child: Container(
                            height: 200,
                            decoration: raisedBorderDecoration(
                              backgroundColor: Color(0xff96C4E3),
                            ),
                            child: Center(child: const Text('Menu Item 3')),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 16),
          Expanded(
            child: Container(
              height: 400,
              decoration: raisedBorderDecoration(
                backgroundColor: Color(0xffCAFE89),
              ),
              child: Center(child: const Text('Banner')),
            ),
          ),
        ],
      ),
    );
  }
}
