import 'package:flutter/material.dart';

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
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6),
              ),
              side: BorderSide(color: Colors.black, width: 2),
            ),
            onPressed: () {},
            child: Text(btnText),
          ),
        ],
      ),
    );
  }
}
