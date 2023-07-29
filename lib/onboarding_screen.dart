import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  final PageController _pageController = PageController(initialPage: 0);
  final List<String> onboardingMessages = [
    "Welcome to My App!",
    "Discover Amazing Features",
    "Get Started Now!",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: _pageController,
        itemCount: onboardingMessages.length,
        itemBuilder: (BuildContext context, int index) {
          return buildOnboardingPage(onboardingMessages[index]);
        },
      ),
    );
  }

  Widget buildOnboardingPage(String message) {
    return Container(
      color: Colors.blue, // Customize the background color
      child: Center(
        child: Text(
          message,
          style: TextStyle(
            color: Colors.white, // Customize the text color
            fontSize: 24.0, // Customize the text size
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
