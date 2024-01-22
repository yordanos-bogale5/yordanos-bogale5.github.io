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
            child: Text(
              'Find Me On',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
          ),
          SizedBox(height: 8.0),
          Padding(
            padding: EdgeInsets.only(left: 600.0),
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
              _buildImageLink( 'github','assets/photo_github.jpg', 'https://github.com/yordanos-bogale5'),
              _buildImageLink('LinkedIn', 'assets/portpolio_photo.jpg', 'https://www.linkedin.com/in/yordanos-bogale'),
              _buildImageLink('Twitter', 'assets/portpolio_photo.jpg', 'https://twitter.com/your-twitter-account'),
              _buildImageLink('Telegram', 'assets/portpolio_photo.jpg', 'https://t.me/Jordan_Bogale05'),
            ],
          ),
          SizedBox(height: 32.0),
          // Add copyright section
          Padding(
            padding: EdgeInsets.only(left: 500.0),
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

  Widget _buildImageLink(String title, String imagePath, String url) {
    return InkWell(
      onTap: () async {
        if (await canLaunch(url)) {
          await launch(url);
        }
      },
      child: Column(
        children: [
          Image.asset(
            imagePath,
            height: 50,
            width: 50,
          ),
          SizedBox(height: 8.0),
          Text(
            title,
            style: TextStyle(
              color: Colors.blue,
              decoration: TextDecoration.underline,
            ),
          ),
        ],
      ),
    );
  }
}
