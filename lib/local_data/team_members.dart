import 'dart:ui';

class TeamMembers {
  final String name;
  final String imgUrl;
  final Color bgColor;

  TeamMembers({
    required this.name,
    required this.imgUrl,
    required this.bgColor,
  });
}

List<TeamMembers> teamMembers = [
  TeamMembers(
    name: 'Kate',
    imgUrl: 'assets/images/1.png',
    bgColor: const Color(0xff96C4E3),
  ),

  TeamMembers(
    name: 'James',
    imgUrl: 'assets/images/3.png',
    bgColor: const Color(0xffCAFE89),
  ),
  TeamMembers(
    name: 'Sophia',
    imgUrl: 'assets/images/2.png',
    bgColor: const Color(0xffFFD074),
  ),
  TeamMembers(
    name: 'Ryan',
    imgUrl: 'assets/images/4.png',
    bgColor: const Color(0xff66FFC9),
  ),
];
