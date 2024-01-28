import 'package:flutter/material.dart';

class ProjectsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Projects'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 200, right: 200),
        child: ListView(
          children: [
            buildProjectCard(
              context,
              title: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Good  ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                    TextSpan(
                      text: "Grade\n",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.amber[800],
                        fontSize: 25,
                      ),
                    ),
                    TextSpan(
                      text: "Student",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.amber[800],
                        fontSize: 25,
                      ),
                    ),
                  ],
                ),
              ),
              description:
                  'E-Learning App by Flutter: Empowering students, instructors, and administrators with personalized dashboards, authentication, cart, wishlist, library, chat, and notifications. Join me in revolutionizing e-learning.',
              imageAsset: 'assets/ggs_images/creavers.jpg',
              cardWidth: 400,
              cardHeight: 450,
            ),
            SizedBox(height: 16.0),
            buildProjectCard(
              context,
              title: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Expense ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                    TextSpan(
                      text: "Tracker\n",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.amber[800],
                        fontSize: 25,
                      ),
                    ),
                    TextSpan(
                      text: "App",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.amber[800],
                        fontSize: 25,
                      ),
                    ),
                  ],
                ),
              ),
              description:
                  'Effortlessly manage your finances with our Expense Tracker app. Stay on top of your spending, set budgets, and gain insights into your financial habits.',
              imageAsset: 'assets/expense tracker/screen.png',
              cardWidth: 400,
              cardHeight: 450,
            ),
            SizedBox(height: 16.0),
            buildProjectCard(
              context,
              title: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Exit  ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                    TextSpan(
                      text: "Exam\n",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.amber[800],
                        fontSize: 25,
                      ),
                    ),
                    TextSpan(
                      text: "App",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.amber[800],
                        fontSize: 25,
                      ),
                    ),
                  ],
                ),
              ),
              description:
                  'Meet My Exit Exam App, designed for graduate students. It features a strategic Blueprint Section, in-depth Tutorials Hub, and an Exam Section with detailed answer explanations.',
              imageAsset: 'assets/sata_image/sata app.jpg',
              cardWidth: 400,
              cardHeight: 450,
            ),
            SizedBox(height: 16.0),
            buildProjectCard(
              context,
              title: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: " AI ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                    TextSpan(
                      text: "Music\n",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.amber[800],
                        fontSize: 25,
                      ),
                    ),
                    TextSpan(
                      text: "Player",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.amber[800],
                        fontSize: 25,
                      ),
                    ),
                  ],
                ),
              ),
              description:
                  '🎶 DaDa-AI_Player: Elevate your music experience with AI integration. Play, discover, and groove to the beats of innovation! 🤖🎵 #MusicTech #AI',
              imageAsset: 'assets/music_player.jpg',
              cardWidth: 400,
              cardHeight: 450,
            ),
            SizedBox(height: 16.0),
            buildProjectCard(
              context,
              title: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Spotify ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                    TextSpan(
                      text: "UI\n",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.amber[800],
                        fontSize: 25,
                      ),
                    ),
                    TextSpan(
                      text: "Clone",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.amber[800],
                        fontSize: 25,
                      ),
                    ),
                  ],
                ),
              ),
              description:
                  '🚀 Dive into this sleek, Flutter-powered replica of Spotify UI. Perfect for learning Dart, Flutter, and crafting stunning cross-platform apps. Explore, customize, and elevate your development game effortlessly. 🎵✨ #Flutter #UIReplica',
              imageAsset: 'assets/spotify.jpg',
              cardWidth: 400,
              cardHeight: 450,
            ),
            SizedBox(height: 16.0),
            buildProjectCard(
              context,
              title: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Jimila",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                    TextSpan(
                      text: "Chat\n",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.amber[800],
                        fontSize: 25,
                      ),
                    ),
                    TextSpan(
                      text: "App",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.amber[800],
                        fontSize: 25,
                      ),
                    ),
                  ],
                ),
              ),
              description:
                  'Jimila: A Java-based chat app for seamless and secure communication. Join the conversation!',
              imageAsset: 'assets/ggs.jpg',
              cardWidth: 400,
              cardHeight: 450,
            ),
            SizedBox(height: 16.0),
          ],
        ),
      ),
    );
  }

  Widget buildProjectCard(BuildContext context,
      {required RichText title,
      required String description,
      required String imageAsset,
      double cardWidth = 400,
      double cardHeight = 400}) {
    return GestureDetector(
      onTap: () {
        // Handle item press
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
                padding: const EdgeInsets.only(left: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    title,
                    SizedBox(height: 8.0),
                    Text(
                      description,
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white, // Set text color to white
                      ),
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
  final RichText title;
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
        padding: const EdgeInsets.only(left: 16),
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
            title,
            SizedBox(height: 8.0),
            Text(
              description,
              style: TextStyle(
                fontSize: 18,
                color: Colors.white, // Set text color to white
              ),
            ),
          ],
        ),
      ),
    );
  }
}
