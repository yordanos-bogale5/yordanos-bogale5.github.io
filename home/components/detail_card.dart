import 'package:flutter/material.dart';

class CoursePage extends StatelessWidget {
  const CoursePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Project Screen'),
      ),
      body: ListView(
        padding: EdgeInsets.all(116.0),
        children: [
          _buildSection(
            title: 'Home Screen',
            description: 'Description of the home screen.',
            imagePath: 'assets/ggs_images/home.jpg',
          ),
          _buildSection(
            title: 'Admin Dashboard',
            description: 'Description of the admin dashboard.',
            imagePath: 'assets/ggs_images/admin.jpg',
          ),
          _buildSection(
            title: 'Instructor Dashboard',
            description: 'Description of the instructor dashboard.',
            imagePath: 'assets/ggs_images/instructor mgt.jpg',
          ),
          _buildSection(
            title: 'Login Screen',
            description: 'Description of the login screen.',
            imagePath: 'assets/ggs_images/auth.jpg',
          ),
          // Add more sections/screens as needed
        ],
      ),
    );
  }

  Widget _buildSection({
    required String title,
    required String description,
    required String imagePath,
  }) {
    return Card(
      margin: EdgeInsets.only(bottom: 16.0),
      color: Colors.transparent,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
        side: BorderSide(color: Colors.amber[800]!),
      ),
      child: Container(
        height: 200.0,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 2,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16.0),
                  bottomLeft: Radius.circular(16.0),
                ),
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      description,
                      style: TextStyle(fontSize: 16.0),
                    ),
                    SizedBox(height: 16.0),
                    ElevatedButton(
                      onPressed: () {
                        // Navigate to the specific screen when the button is pressed
                        // Replace with your navigation logic
                      },
                      child: Text('View Details'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: CoursePage(),
  ));
}
