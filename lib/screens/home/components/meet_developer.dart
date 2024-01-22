import 'package:flutter/material.dart';
import 'package:flutter_profile/responsive.dart';

class MyProjects extends StatelessWidget {
  const MyProjects({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 600),
          child: RichText(
            text: TextSpan(
              style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                    color: Colors.white,
                  ),
              children: [
                TextSpan(
                  text: "Meet\n",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0),
                ),
                 WidgetSpan(
                          child: SizedBox(height: 26.0),
                        ),
                TextSpan(
                  text: "The",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24.0,
                    color: Colors.amber[800],
                  ),
                ),
                TextSpan(
                  text: " Developer",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 26.0),
        Responsive(
          mobile: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 16),
                child: Expanded(
                  child: RichText(
                    text: TextSpan(
                      style: TextStyle(color: Colors.white, fontSize: 18.0),
                      children: [
                        TextSpan(
                          text:
                              "I started my programming journey in early 2019 when I joined the Software Engineering department at AMU.\n",
                        ),
                        WidgetSpan(
                          child: SizedBox(height: 26.0),
                        ),
                        TextSpan(
                          text: "Starting with ",
                        ),
                        TextSpan(
                          text: "Flutter ",
                          style: TextStyle(color: Colors.amber[800]),
                        ),
                        TextSpan(
                          text: "I later delved into web development.\n",
                        ),
                        WidgetSpan(
                          child: SizedBox(height: 26.0),
                        ),
                        TextSpan(
                          text: "Cultivating proficiency in ",
                        ),
                        TextSpan(
                          text: "Javascript ",
                          style: TextStyle(color: Colors.amber[800]),
                        ),
                        TextSpan(
                          text: "along with a strong command of ",
                        ),
                        TextSpan(
                          text: "Python , ",
                          style: TextStyle(color: Colors.amber[800]),
                        ),
                        TextSpan(
                          text: "Java ,",
                          style: TextStyle(color: Colors.white),
                        ),
                        TextSpan(
                          text: "Vue.js ,",
                          style: TextStyle(color: Colors.amber[800]),
                        ),
                        TextSpan(
                          text: "Golang/Gin ,",
                          style: TextStyle(color: Colors.white),
                        ),
                        TextSpan(
                          text: "PostgreSQL ",
                          style: TextStyle(color: Colors.amber[800]),
                        ),
                        TextSpan(
                          text: "and Firebase\n",
                          style: TextStyle(color: Colors.white),
                        ),
                        WidgetSpan(
                          child: SizedBox(height: 26.0),
                        ),
                        TextSpan(
                          text: "My passion lies in ",
                        ),
                        TextSpan(
                          text: "Artificial Intelligence ",
                          style: TextStyle(color: Colors.amber[800]),
                        ),
                        TextSpan(
                          text:
                              "and my portfolio proudly showcases several projects where I seamlessly integrated AI.\n",
                        ),
                        WidgetSpan(
                          child: SizedBox(height: 26.0),
                        ),
                        TextSpan(
                          text:
                              "Join me as I share my experiences and showcase the skills I've honed in the dynamic world of software development.\n",
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          tablet: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 40),
                child: Expanded(
                  child: RichText(
                    text: TextSpan(
                      style: TextStyle(color: Colors.white, fontSize: 18.0),
                      children: [
                        TextSpan(
                          text:
                              "I started my programming journey in early 2019 when I joined the Software Engineering department at AMU.\n",
                        ),
                        WidgetSpan(
                          child: SizedBox(height: 26.0),
                        ),
                        TextSpan(
                          text: "Starting with ",
                        ),
                        TextSpan(
                          text: "Flutter ",
                          style: TextStyle(color: Colors.amber[800]),
                        ),
                        TextSpan(
                          text: "I later delved into web development.\n",
                        ),
                        WidgetSpan(
                          child: SizedBox(height: 26.0),
                        ),
                        TextSpan(
                          text: "Cultivating proficiency in ",
                        ),
                        TextSpan(
                          text: "Javascript ",
                          style: TextStyle(color: Colors.amber[800]),
                        ),
                        TextSpan(
                          text: "along with a strong command of ",
                        ),
                        TextSpan(
                          text: "Python , ",
                          style: TextStyle(color: Colors.amber[800]),
                        ),
                        TextSpan(
                          text: "Java ,",
                          style: TextStyle(color: Colors.white),
                        ),
                        TextSpan(
                          text: "Vue.js ,",
                          style: TextStyle(color: Colors.amber[800]),
                        ),
                        TextSpan(
                          text: "Golang/Gin ,",
                          style: TextStyle(color: Colors.white),
                        ),
                        TextSpan(
                          text: "PostgreSQL ",
                          style: TextStyle(color: Colors.amber[800]),
                        ),
                        TextSpan(
                          text: "and Firebase\n",
                          style: TextStyle(color: Colors.white),
                        ),
                        WidgetSpan(
                          child: SizedBox(height: 26.0),
                        ),
                        TextSpan(
                          text: "My passion lies in ",
                        ),
                        TextSpan(
                          text: "Artificial Intelligence ",
                          style: TextStyle(color: Colors.amber[800]),
                        ),
                        TextSpan(
                          text:
                              "and my portfolio proudly showcases several projects where I seamlessly integrated AI.\n",
                        ),
                        WidgetSpan(
                          child: SizedBox(height: 26.0),
                        ),
                        TextSpan(
                          text:
                              "Join me as I share my experiences and showcase the skills I've honed in the dynamic world of software development.\n",
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          desktop: Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 40),
                child: Expanded(
                  child: RichText(
                    text: TextSpan(
                      style: TextStyle(color: Colors.white, fontSize: 18.0),
                      children: [
                        TextSpan(
                          text:
                              "I started my programming journey in early 2019 when I joined the Software Engineering department at AMU.\n",
                        ),
                        WidgetSpan(
                          child: SizedBox(height: 26.0),
                        ),
                        TextSpan(
                          text: "Starting with ",
                        ),
                        TextSpan(
                          text: "Flutter ",
                          style: TextStyle(color: Colors.amber[800]),
                        ),
                        TextSpan(
                          text: "I later delved into web development.\n",
                        ),
                        WidgetSpan(
                          child: SizedBox(height: 26.0),
                        ),
                        TextSpan(
                          text: "Cultivating proficiency in ",
                        ),
                        TextSpan(
                          text: "Javascript ",
                          style: TextStyle(color: Colors.amber[800]),
                        ),
                        TextSpan(
                          text: "along with a strong command of ",
                        ),
                        TextSpan(
                          text: "Python , ",
                          style: TextStyle(color: Colors.amber[800]),
                        ),
                        TextSpan(
                          text: "Java ,",
                          style: TextStyle(color: Colors.white),
                        ),
                        TextSpan(
                          text: "Vue.js ,",
                          style: TextStyle(color: Colors.amber[800]),
                        ),
                        TextSpan(
                          text: "Golang/Gin ,",
                          style: TextStyle(color: Colors.white),
                        ),
                        TextSpan(
                          text: "PostgreSQL ",
                          style: TextStyle(color: Colors.amber[800]),
                        ),
                        TextSpan(
                          text: "and Firebase\n",
                          style: TextStyle(color: Colors.white),
                        ),
                        WidgetSpan(
                          child: SizedBox(height: 26.0),
                        ),
                        TextSpan(
                          text: "My passion lies in ",
                        ),
                        TextSpan(
                          text: "Artificial Intelligence ",
                          style: TextStyle(color: Colors.amber[800]),
                        ),
                        TextSpan(
                          text:
                              "and my portfolio proudly showcases several projects where I seamlessly integrated AI.\n",
                        ),
                        WidgetSpan(
                          child: SizedBox(height: 26.0),
                        ),
                        TextSpan(
                          text:
                              "Join me as I share my experiences and showcase the skills I've honed in the dynamic world of software development.\n",
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
