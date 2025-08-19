class PageViewItems {
  final String description;
  final String image;
  final String title;

  PageViewItems({
    required this.description,
    required this.image,
    required this.title,
  });
}

List<PageViewItems> pageViewItems = [
  PageViewItems(
    description:
        'Welcome to our diner in the heart of the city. Enjoy freshly made meals crafted with love - from hearty breakfasts to flavorful dinners. Open daily from 10:00 AM to 10:00 PM.',
    image: 'assets/images/burgerman.png',
    title: 'About Us',
  ),
  PageViewItems(
    description:
        'Satisfy your cravings with our delicious range of dishes. Whether it’s a quick lunch, a family dinner, or a sweet dessert, we’ve got something special waiting for you.',
    image: 'assets/images/pizzaman.png',
    title: 'Our Menu',
  ),
  PageViewItems(
    description:
        'Discover the taste of comfort and quality. Our chefs prepare every meal with fresh ingredients to bring you flavors you’ll want to come back for again and again.',
    image: 'assets/images/hotdogman.png',
    title: 'Fresh & Delicious',
  ),
];
