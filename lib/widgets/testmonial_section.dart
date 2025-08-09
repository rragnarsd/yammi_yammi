import 'package:flutter/material.dart';
import 'package:yammi_yammi/utils/app_styles.dart';

class YammiTestimonialSection extends StatelessWidget {
  const YammiTestimonialSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: raisedBorderDecoration(
          backgroundColor: Colors.white,
          borderRadius: 0,
        ),
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Customers love Yammi Yammi',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 32),
              SizedBox(
                height: 300,
                child: GridView.count(
                  crossAxisCount: 3,
                  crossAxisSpacing: 16.0,
                  physics: NeverScrollableScrollPhysics(),
                  childAspectRatio: 1.2,
                  children: [
                    Container(
                      decoration: raisedBorderDecoration(
                        backgroundColor: Colors.blue,
                      ),
                    ),
                    Container(
                      decoration: raisedBorderDecoration(
                        backgroundColor: Colors.blue,
                      ),
                    ),
                    Container(
                      decoration: raisedBorderDecoration(
                        backgroundColor: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
