import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';

class ResumeScreen extends StatelessWidget {
  final String cvUrl = 'https://www.canva.com/design/DAFaQqju9fg/m2AZbHopYqDD9S_wVjm4Wg/view?utm_content=DAFaQqju9fg&utm_campaign=designshare&utm_medium=link&utm_source=editor';

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
            PdfViewer(cvUrl),
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
                backgroundColor: Colors.amber[800],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void launchCV() async {
    if (await canLaunch(cvUrl)) {
      await launch(cvUrl);
    } else {
      throw 'Could not launch $cvUrl';
    }
  }
}

class PdfViewer extends StatelessWidget {
  final String pdfUrl;

  PdfViewer(this.pdfUrl);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PDFView(
        filePath: pdfUrl,
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: ResumeScreen(),
  ));
}
