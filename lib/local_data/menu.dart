import 'package:flutter/material.dart';

class Menu {
  final String title;
  final List<MenuItem> items;
  final Color bgColor;
  final String imgUrl;

  Menu({
    required this.title,
    required this.items,
    required this.bgColor,
    required this.imgUrl,
  });
}

class MenuItem {
  final String title;
  final String description;
  final double price;

  MenuItem({
    required this.title,
    required this.description,
    required this.price,
  });
}

List<Menu> menus = [
  Menu(
    title: 'Burgers',
    bgColor: Colors.white,
    imgUrl: 'assets/images/burgerman.png',
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
    bgColor: Color(0xffCAFE89),
    imgUrl: 'assets/images/hotdogman.png',
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
    bgColor: Color(0xffCAFE89),
    imgUrl: 'assets/images/pizzaman.png',
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
    bgColor: Colors.white,
    imgUrl: 'assets/images/baconeggman.png',
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
