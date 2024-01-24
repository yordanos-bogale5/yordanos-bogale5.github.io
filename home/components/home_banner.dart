import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'dart:math';

class HomeBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AnimatedGreetingText(), // Updated AnimatedGreetingText widget
              SizedBox(height: 16.0),
              MyBuildAnimatedText(),
              SizedBox(height: 16.0),
              Card(
                elevation: 0, // No shadow
                color: Colors.black.withOpacity(0.5), // Transparent dark background
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Container(
                  width: 120, // Adjust width as needed
                  height: 120, // Adjust height as needed
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.asset(
                      "assets/portpolio_photo.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AnimatedGreetingText extends StatefulWidget {
  @override
  _AnimatedGreetingTextState createState() => _AnimatedGreetingTextState();
}

class _AnimatedGreetingTextState extends State<AnimatedGreetingText>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    )..repeat(reverse: true);

    _animation = Tween<double>(begin: 0.0, end: 10.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return Opacity(
          opacity: 1.0,
          child: Column(
            children: [
              RichText(
                text: TextSpan(
                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                    color: Colors.amber[800],
                  ),
                  children: [
                    // TextSpan for "Hi there!" and animated hand icon
                    TextSpan(
                      text: "Hi there! ",
                      style: TextStyle(color: Colors.white),
                    ),
                    WidgetSpan(
                      child: Transform.translate(
                        offset: Offset(0.0, sin(_animation.value) * 5), // Shaking effect
                        child: Icon(
                          Icons.pan_tool, // Change to the appropriate hand icon
                          color: Color(0xFFE0C69E), // Human hand color
                          size: 24.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
                SizedBox(height: 18.0),
                      
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                  text: "I'm ",
                   style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 25,),
                ),
                TextSpan(
                  text: "Yordanos\n",
                  style: TextStyle(fontWeight: FontWeight.bold,color: Colors.amber[800],fontSize: 25,),
                ),
                TextSpan(
                  text: "Bogale",
                  style: TextStyle(fontWeight: FontWeight.bold,color: Colors.amber[800],fontSize: 25),
                ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class MyBuildAnimatedText extends StatelessWidget {
  const MyBuildAnimatedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: Theme.of(context).textTheme.headline5!.copyWith(
            color: Colors.amber[800],
          ),
      maxLines: 1,
      child: AnimatedTextKit(
        animatedTexts: [
          TyperAnimatedText(
            "Software Engineer",
            speed: Duration(milliseconds: 60),
          ),
          TyperAnimatedText(
            "Flutter Developer",
            speed: Duration(milliseconds: 60),
          ),
          TyperAnimatedText(
            "Web Developer",
            speed: Duration(milliseconds: 60),
          ),
          TyperAnimatedText(
            "Open Source Contributor",
            speed: Duration(milliseconds: 60),
          ),
          TyperAnimatedText(
            "Machine Learning Engineer",
            speed: Duration(milliseconds: 60),
          ),
        ],
      ),
    );
  }
}
