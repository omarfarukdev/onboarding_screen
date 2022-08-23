import 'package:flutter/material.dart';
import 'package:onboarding_screen/widgets/board_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      home: const OnBoarding(),
    );
  }
}
//let's start by creating an assets folder and create on images folder to store the images
//now we will add the path to the pubspec.yaml file
//okey now that everything is set up let's run the app

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  //les't create a pageController foe our page view

  PageController _controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,

        children: [
          board_page("assets/images/image1.jpg","Browse Event in your area",
              "check our app and browse thousands of event nears you.",_controller,false,context),
          board_page("assets/images/image2.jpg","Browse Event in your area",
              "check our app and browse thousands of event nears you.",_controller,false,context),
          board_page("assets/images/image3.jpg","Browse Event in your area",
              "check our app and browse thousands of event nears you.",_controller,true,context),
        ],
      ),
    );
  }
}


