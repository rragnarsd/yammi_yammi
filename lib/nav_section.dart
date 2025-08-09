import 'package:flutter/material.dart';

class YammiNavSection extends StatelessWidget {
  const YammiNavSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        decoration: BoxDecoration(
          color: Color(0xffFCD36B),
          borderRadius: BorderRadius.circular(12),
          border: BoxBorder.all(color: Colors.black, width: 3),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(Icons.abc, size: 54),
                Text(
                  'Yammi Yammi',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Spacer(),
            Expanded(
              child: Row(
                children: [
                  Text('Home'),
                  const SizedBox(width: 24),
                  Text('Menu'),
                  const SizedBox(width: 24),
                  Text('Reviews'),
                  const SizedBox(width: 24),
                  Text('About us'),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 2.0,
              ),
              decoration: BoxDecoration(
                color: Colors.orange[200],
                borderRadius: BorderRadius.circular(24),
                border: BoxBorder.all(color: Colors.black, width: 2),
              ),
              child: Row(
                children: [Icon(Icons.abc, size: 32), Text('Swipe to call')],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
