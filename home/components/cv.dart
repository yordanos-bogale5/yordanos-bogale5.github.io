import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ResumeScreen extends StatelessWidget {
  final String cvUrl = 'https://example.com/path/to/cv.pdf';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Resume'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Curriculum Vitae',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16.0),
            // Display your CV content here, you can use Text, RichText, or any other widget

            SizedBox(height: 24.0),
            ElevatedButton.icon(
              onPressed: () {
                launchCV();
              },
              icon: Icon(Icons.file_download),
              label: Text(
                'Download CV',
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.amber[800],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void launchCV() async {
    final url = Uri.encodeFull(cvUrl);
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
