import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:yammi_yammi/local_data/team_items.dart';
import 'package:yammi_yammi/utils/app_colors.dart';
import 'package:yammi_yammi/utils/app_styles.dart';
import 'package:yammi_yammi/widgets/yammi_menu.dart';

class YammiTeamSection extends StatelessWidget {
  const YammiTeamSection({super.key});

  @override
  Widget build(BuildContext context) {
    final breakpoints = ResponsiveBreakpoints.of(context);
    final crossAxisCount = breakpoints.isMobile
        ? 1
        : breakpoints.isTablet
        ? 2
        : 4;

    return SliverToBoxAdapter(
      child: Container(
        width: double.infinity,
        decoration: raisedBorderDecoration(
          backgroundColor: YammiColors.hotPinkColor,
          borderRadius: 0,
        ),
        child: MaxWidthBox(
          maxWidth: 1200,
          child: Padding(
            padding: getResponsivePadding(context),
            child: Column(
              children: [
                YammiMenu(title: 'Our Team', btnText: 'About Us'),
                Container(
                  padding: const EdgeInsets.all(16.0),
                  child: GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: crossAxisCount,
                      crossAxisSpacing: 16.0,
                      mainAxisSpacing: 16.0,
                      childAspectRatio: 1,
                    ),
                    itemCount: teamMembers.length,
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: raisedBorderDecoration(
                          backgroundColor: teamMembers[index].bgColor,
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            color: teamMembers[index].bgColor,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                bottom: 40,
                                left: 0,
                                right: 0,
                                child: Image.asset(
                                  teamMembers[index].imgUrl,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                left: 0,
                                right: 0,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(12),
                                      bottomRight: Radius.circular(12),
                                    ),
                                    border: Border(
                                      top: BorderSide(
                                        color: YammiColors.blackColor,
                                        width: 2,
                                      ),
                                    ),
                                    color: YammiColors.whiteColor,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(teamMembers[index].name),
                                        Row(
                                          children: [
                                            Icon(Icons.facebook),
                                            SizedBox(width: 4),
                                            Icon(Icons.facebook),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    height: 280,
                    width: double.infinity,
                    decoration: raisedBorderDecoration(
                      backgroundColor: YammiColors.limeYellowColor,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: ResponsiveRowColumn(
                        layout: breakpoints.isMobile || breakpoints.isTablet
                            ? ResponsiveRowColumnType.COLUMN
                            : ResponsiveRowColumnType.ROW,
                        children: [
                          ResponsiveRowColumnItem(
                            child: Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'We are a team of passionate people who love to cook and serve delicious food.',
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    maxLines: 4,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  SizedBox(height: 16),
                                  HoverButton(
                                    btnText: 'Get in Touch',
                                    onPressed: () {},
                                    hasIcon: true,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          if (!breakpoints.isMobile && !breakpoints.isTablet)
                            ResponsiveRowColumnItem(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 16),
                                child: Image.asset(
                                  'assets/images/other/food1.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
