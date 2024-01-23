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
              cardWidth: 400,
              cardHeight: 600,
            ),
            SizedBox(height: 16.0),
             buildProjectCard(
              context,
              title: 'Good Grade Student',
              description: 'E-Learning App by Flutter: Empowering students, instructors, and administrators with personalized dashboards, authentication, cart, wishlist, library, chat, and notifications. Join me in revolutionizing e-learning.',
              imageAsset: 'assets/ggs.jpg',
              cardWidth: 400,
              cardHeight: 600,
            ),
            SizedBox(height: 16.0),
             buildProjectCard(
              context,
              title: 'Good Grade Student',
              description: 'E-Learning App by Flutter: Empowering students, instructors, and administrators with personalized dashboards, authentication, cart, wishlist, library, chat, and notifications. Join me in revolutionizing e-learning.',
              imageAsset: 'assets/ggs.jpg',
              cardWidth: 400,
              cardHeight: 600,
            ),
            SizedBox(height: 16.0),
             buildProjectCard(
              context,
              title: 'Good Grade Student',
              description: 'E-Learning App by Flutter: Empowering students, instructors, and administrators with personalized dashboards, authentication, cart, wishlist, library, chat, and notifications. Join me in revolutionizing e-learning.',
              imageAsset: 'assets/ggs.jpg',
              cardWidth: 400,
              cardHeight: 600,
            ),
            SizedBox(height: 16.0),
             buildProjectCard(
              context,
              title: 'Good Grade Student',
              description: 'E-Learning App by Flutter: Empowering students, instructors, and administrators with personalized dashboards, authentication, cart, wishlist, library, chat, and notifications. Join me in revolutionizing e-learning.',
              imageAsset: 'assets/ggs.jpg',
              cardWidth: 400,
              cardHeight: 600,
            ),
            SizedBox(height: 16.0),
             buildProjectCard(
              context,
              title: 'Good Grade Student',
              description: 'E-Learning App by Flutter: Empowering students, instructors, and administrators with personalized dashboards, authentication, cart, wishlist, library, chat, and notifications. Join me in revolutionizing e-learning.',
              imageAsset: 'assets/ggs.jpg',
              cardWidth: 400,
              cardHeight: 600,
            ),
            SizedBox(height: 16.0),
           
            // Add more buildProjectCard calls for each project
          ],
        ),
      ),
    );
  }

  Widget buildProjectCard(BuildContext context,
      {required String title, required String description, required String imageAsset, double cardWidth = 400, double cardHeight = 600}) {
    
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
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
          side: BorderSide(color: Colors.amber[800]!, width: 1.0),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                bottomLeft: Radius.circular(20.0),
              ),
              child: Image.asset(
                imageAsset,
                fit: BoxFit.fill,
                width: cardWidth,
                height: cardHeight,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
            ),
          ],
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
            Image.asset(
              imageAsset,
              fit: BoxFit.fill,
              width: 300,
              height: 400,
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
