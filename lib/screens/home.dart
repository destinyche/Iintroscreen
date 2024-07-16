import 'package:flow_2/screens/screen1.dart';
import 'package:flow_2/screens/screen2.dart';
import 'package:flow_2/screens/screen3.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  PageController controller = PageController();

  bool onLastPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            onPageChanged: (index) {
              setState(() {
                onLastPage = (index == 2);
              });
            },
            controller: controller,
            children: const [
              Screen1(),
              Screen2(),
              Screen3(),
            ],
          ),
          Container(
              alignment: const Alignment(0, 0.55),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SmoothPageIndicator(
                    controller: controller,
                    count: 3,
                    effect: const SlideEffect(
                      //dotColor: Colors.grey,
                      activeDotColor: Colors.black45,
                      dotHeight: 7,
                      dotWidth: 7,
                    ),
                  ),
                ],
              )),
        ],
      ),
      bottomSheet: Container(
        color: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 40),
        height: 150,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          TextButton(
            child: Text(
              "Back",
              style: TextStyle(
                color: Colors.black.withOpacity(0.3),
                fontSize: 20, /*fontWeight: FontWeight.bold*/
              ),
            ),
            onPressed: () {
              controller.previousPage(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeIn);
            },
          ),
          onLastPage
              ? TextButton(
                  child: Text(
                    "Start",
                    style: TextStyle(
                      color:
                          const Color.fromRGBO(255, 183, 130, 1).withOpacity(1),
                      fontSize: 20, /*fontWeight: FontWeight.bold*/
                    ),
                  ),
                  onPressed: () {
                    controller.nextPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeIn);
                  },
                )
              : TextButton(
                  child: Text(
                    "Next",
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.8),
                      fontSize: 20, /*fontWeight: FontWeight.bold*/
                    ),
                  ),
                  onPressed: () {
                    controller.nextPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeIn);
                  },
                )
        ]),
      ),
    );
  }
}
