import 'package:flutter/material.dart';

class ProjectsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Projects'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            buildProjectCard(
              context,
              title: 'Good Grade Student',
              description: 'E-Learning App by Flutter: Empowering students, instructors, and administrators with personalized dashboards, authentication, cart, wishlist, library, chat, and notifications. Join me in revolutionizing e-learning.',
              imageAsset: 'assets/ggs.jpg',
            ),
            SizedBox(height: 16.0),
            buildProjectCard(
              context,
              title: 'Project 2',
              description: 'Description for Project 2.',
              imageAsset: 'assets/project2_image.jpg',
            ),
            // Add more buildProjectCard calls for each project
          ],
        ),
      ),
    );
  }

  Widget buildProjectCard(BuildContext context,
      {required String title, required String description, required String imageAsset}) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProjectDetailsScreen(
              title: title,
              description: description,
              imageAsset: imageAsset,
            ),
          ),
        );
      },
      child: Hero(
        tag: title, // Unique tag for Hero animation
        child: Card(
          elevation: 5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8.0),
                  topRight: Radius.circular(8.0),
                ),
                child: Image.asset(
                  imageAsset,
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: 150, // Adjust the height as needed
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      description,
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProjectDetailsScreen extends StatelessWidget {
  final String title;
  final String description;
  final String imageAsset;

  ProjectDetailsScreen({
    required this.title,
    required this.description,
    required this.imageAsset,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Project Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
              tag: title, // Same tag as in the previous screen for Hero animation
              child: Image.asset(
                imageAsset,
                fit: BoxFit.cover,
                width: double.infinity,
                height: 200, // Adjust the height as needed
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              title,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              description,
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
