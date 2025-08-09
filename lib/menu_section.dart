import 'package:flutter/material.dart';

class YammiMenuSection extends StatelessWidget {
  const YammiMenuSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: GridView.count(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        crossAxisCount: 2,
        mainAxisSpacing: 32.0,
        crossAxisSpacing: 16.0,
        childAspectRatio: 2,
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
    );
  }
}
