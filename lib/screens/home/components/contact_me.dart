// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../constants.dart';

class Recommendations extends StatelessWidget {
  const Recommendations({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 32.0),
          Padding(
            padding: EdgeInsets.only(left: 600.0),
            child: Image.asset(
              "assets/portpolio_photo.jpg",
              fit: BoxFit.cover,
              height: 150,
              width: 150,
            ),
          ),
          SizedBox(height: 36.0),
          Padding(
            padding: EdgeInsets.only(left: 600.0),
            child:  RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Find",
                    style: TextStyle(color: Colors.white, fontSize: 20,),
                  ),
                  TextSpan(
                    text: " Me ",
                    style: TextStyle(color: Colors.amber[800], fontSize: 20,),
                  ),
                  TextSpan(
                    text: " On ",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 8.0),
          Padding(
            padding: EdgeInsets.only(left: 650.0),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Feel free to",
                    style: TextStyle(color: Colors.white, fontSize: 15,),
                  ),
                  TextSpan(
                    text: " reach ",
                    style: TextStyle(color: Colors.amber[800], fontSize: 15,),
                  ),
                  TextSpan(
                    text: "me",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 36.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildImageLink('assets/photo_github.jpg', 'https://github.com/yordanos-bogale5'),
              _buildImageLink('assets/photo_linkedn.jpg', 'https://www.linkedin.com/in/yordanos-bogale'),
              _buildImageLink('assets/twiter.jpg', 'https://twitter.com/your-twitter-account'),
              _buildImageLink('assets/photo_2024-01-22_20-36-39.jpg', 'https://t.me/Jordan_Bogale05'),
            ],
          ),
          SizedBox(height: 32.0),
          // Add copyright section
          Padding(
            padding: EdgeInsets.only(left: 550.0),
            child: Text(
              '© 2022 Yordanos Bogale. All rights reserved.',
              style: TextStyle(
                color: Colors.white,
                fontSize: 12.0,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _coloredText(String text, Color color) {
    return Text(
      text,
      style: TextStyle(color: color),
    );
  }

  Widget _buildImageLink(String imagePath, String url) {
    return InkWell(
      onTap: () async {
        if (await canLaunch(url)) {
          await launch(url);
        }
      },
      child: Column(
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 8.0),
        ],
      ),
    );
  }
}
