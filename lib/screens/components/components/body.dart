import 'package:flutter/material.dart';
import 'package:kcal/constants.dart';
import 'package:kcal/size_config.dart';
// import '../splash_screen.dart';
import '../components/splash_screen.dart';
import '../../../components/default_button.dart';

class Body extends StatefulWidget {
  // const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "text":
          "Maintaining good health should be the primary focus of everyone.",
      "image": "assets/Eating-healthy-food-cuate.png"
    },
    {
      "text": "Browse thousands of health recipes from all over the world.",
      "image": "assets/Mobile-cuate.png"
    },
    {
      "text": "With amazing inbuilt tools you can track your progress.",
      "image": "assets/Cooking-cuate.png"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SizedBox(
      width: double.infinity,
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 3,
            child: PageView.builder(
              onPageChanged: (value) {
                setState(() {
                  currentPage = value;
                });
              },
              itemCount: splashData.length,
              itemBuilder: (context, index) => SplashContent(
                image: splashData[index]["image"],
                text: splashData[index]['text'].toString(),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(20)),
              child: Column(
                children: <Widget>[
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      splashData.length,
                      (index) => buildDot(index: index),
                    ),
                  ),
                  Spacer(flex: 2),
                  DefaultButton(
                    text: "Get Started",
                    press: () {},
                  ),
                  Spacer(),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }

  AnimatedContainer buildDot({int? index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? kSecondaryColor : Color(0xFFFF9385),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
