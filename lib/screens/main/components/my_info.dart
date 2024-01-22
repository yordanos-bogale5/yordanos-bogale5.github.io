import 'package:flutter/material.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: Color(0xFF242430),
        child: Column(
          children: [
            Spacer(flex: 2),
            ClipOval(
              clipBehavior: Clip.antiAlias,
              child: FittedBox(
                fit: BoxFit.cover,
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage("assets/portpolio_photo.jpg"),
                ),
              ),
            ),
            Spacer(),
            Text(
              "Yordanos Bogale",
              style: Theme.of(context).textTheme.titleSmall,
            ),
            Text(
              "Flutter Developer & Web Developer",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w200,
                height: 1.5,
              ),
            ),
            Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
