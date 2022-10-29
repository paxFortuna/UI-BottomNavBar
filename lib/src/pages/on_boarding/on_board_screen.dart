import 'package:flutter/material.dart';
import 'package:ui_switch_between_page/src/bottom_tab_bar.dart';

import 'dot_indicators.dart';
import 'on_board.dart';
import 'on_board_content.dart';

final List<OnBoard> demo_data = [
  OnBoard(
    image: 'assets/tarot-1.png',
    title: 'Find tarot around\n your location',
    description:
    'Just turn on your location and you will find\nthe nearest pet care you wish.',
  ),
  OnBoard(
    image: 'assets/tarot-2.png',
    title: 'Let us give the best\n treatment',
    description:
    'What do you think? book our\n veterinarians now you wish.',
  ),
  OnBoard(
    image: 'assets/tarot-3.png',
    title: 'Book appointment\n with us!',
    description:
    'JWhat do you think? book our\n veterinarians now you wish.',
  ),
  OnBoard(
    image: 'assets/tarot-4.png',
    title: 'Find tarot around\n your location',
    description:
    'JWhat do you think? book our\n veterinarians now you wish.',
  ),
];
class OnBoardingScreen extends StatefulWidget {
  OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  late PageController _pageController;

  int _pageIndex = 0;

  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 19, 19, 19),
        body: Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 100, left: 16, right: 16),
              child: Column(children: [
                Expanded(
                    child: SafeArea(
                        child: PageView.builder(
                            itemCount: demo_data.length,
                            controller: _pageController,
                            onPageChanged: (index) {
                              setState(() {
                                _pageIndex = index;
                              });
                            },
                            itemBuilder: (context, index) => OnboardContent(
                              image: demo_data[index].image,
                              title: demo_data[index].title,
                              description: demo_data[index].description,
                            )))),
                Row(
                  children: [
                    ...List.generate(
                        demo_data.length,
                            (index) => Padding(
                          padding: EdgeInsets.only(right: 4),
                          child: DotIndicators(
                            isActive: index == _pageIndex,
                          ),
                        )),
                    Spacer(),
                    SizedBox(
                        height: 60,
                        width: 60,
                        child: ElevatedButton(
                          onPressed: () {
                            if (_pageIndex == 2) {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => BottomTabBar()));
                            } else
                              (_pageController.nextPage(
                                duration: Duration(milliseconds: 400),
                                curve: Curves.ease,
                              ));
                          },
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15))),
                          child: Icon(Icons.arrow_forward_ios),
                        )),
                  ],
                ),
              ]),
            )));
  }
}