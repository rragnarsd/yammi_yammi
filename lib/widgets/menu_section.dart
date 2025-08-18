import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:yammi_yammi/utils/app_styles.dart';

class YammiMenuSection extends StatelessWidget {
  const YammiMenuSection({super.key});

  @override
  Widget build(BuildContext context) {
    final crossAxisCount =
        ResponsiveBreakpoints.of(context).between(MOBILE, TABLET)
        ? 1
        : ResponsiveBreakpoints.of(context).isDesktop
        ? 2
        : 2;

    return Container(
      padding: const EdgeInsets.all(16.0),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
          mainAxisSpacing: 16.0,
          crossAxisSpacing: 16.0,
          childAspectRatio: 2.0,
        ),
        itemCount: 4,
        itemBuilder: (context, index) {
          return Container(
            decoration: raisedBorderDecoration(backgroundColor: Colors.blue),
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text('Menu Item ${index + 1}'),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text('Menu Item ${index + 1}'),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class Menu {
  String title;
  List<MenuItem> items;

  Menu({required this.title, required this.items});
}

class MenuItem {
  String title;
  String description;
  double price;

  MenuItem({
    required this.title,
    required this.description,
    required this.price,
  });
}

List<Menu> menus = [
  Menu(
    title: 'Burgers',
    items: [
      MenuItem(
        title: 'Small daddy',
        description: 'Classic beef burger with crispy fries',
        price: 5.0,
      ),
      MenuItem(
        title: 'Big daddy',
        description: 'Double beef patty burger served with fries',
        price: 15.0,
      ),
    ],
  ),
  Menu(
    title: 'Hot dog',
    items: [
      MenuItem(
        title: 'Yammi',
        description: 'Traditional hot dog with ketchup and mustard',
        price: 5.0,
      ),
      MenuItem(
        title: 'Mexican',
        description: 'Spicy hot dog topped with jalapeños and salsa',
        price: 7.0,
      ),
    ],
  ),
  Menu(
    title: 'Pizza',
    items: [
      MenuItem(
        title: 'Margherita',
        description: 'Cheesy pizza with fresh tomato and basil',
        price: 15.0,
      ),
      MenuItem(
        title: 'Pepperoni',
        description: 'Classic pizza topped with pepperoni slices',
        price: 14.0,
      ),
    ],
  ),
  Menu(
    title: 'Breakfast',
    items: [
      MenuItem(
        title: 'Bacon and eggs',
        description: 'Crispy bacon served with sunny-side eggs',
        price: 7.0,
      ),
      MenuItem(
        title: 'Coffee and pancakes',
        description: 'Stack of pancakes with hot brewed coffee',
        price: 9.0,
      ),
    ],
  ),
];
