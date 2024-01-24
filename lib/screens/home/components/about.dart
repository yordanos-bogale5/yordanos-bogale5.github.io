import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  final String aboutMeDescription =
      "I am a passionate developer with experience in various technologies. I love building applications that make a positive impact on people's lives.";

  final List<String> skills = [
    'Flutter', 'Dart', 'Firebase', 'Django', 'Java', 'Python', 'JavaScript',
    'Swift', 'Node.js', 'Vue.js', 'Go', 'MongoDB',
  ];

  final List<String> tools = [
    'VSCode', 'Android Studio', 'Linux',
    // Add more tools as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Me'),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'About Me',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 16.0),
                Text(
                  aboutMeDescription,
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Professional Skills',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 16.0),
                buildSkillGrid(skills),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Tools I Use',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 16.0),
                buildToolGrid(tools),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildSkillGrid(List<String> skills) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 16.0,
        mainAxisSpacing: 16.0,
      ),
      itemCount: skills.length,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return buildSkillIcon(skills[index]);
      },
    );
  }

  Widget buildToolGrid(List<String> tools) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 16.0,
        mainAxisSpacing: 16.0,
      ),
      itemCount: tools.length,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return buildToolIcon(tools[index]);
      },
    );
  }

  Widget buildSkillIcon(String skill) {
    return Column(
      children: [
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.amber[800]!, width: 2.0),
          ),
          child: Center(
            child: Image.asset(
              getSkillImage(skill),
              width: 80.0,
              height: 80.0,
              fit: BoxFit.cover, // Set the fit property to cover
            ),
          ),
        ),
        SizedBox(height: 3.0),
        Text(
          skill,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  Widget buildToolIcon(String tool) {
    return Column(
      children: [
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.amber[800]!, width: 2.0),
          ),
          child: Center(
            child: Image.asset(
              getToolImage(tool),
              width: 80.0,
              height: 80.0,
              fit: BoxFit.cover, // Set the fit property to cover
            ),
          ),
        ),
        SizedBox(height: 3.0),
        Text(
          tool,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  String getSkillImage(String skill) {
    // Map each skill to its corresponding image path
    Map<String, String> skillImages = {
      'Flutter': 'assets/images/flutter.jpg',
      'Dart': 'assets/images/dart.jpg',
      'Firebase': 'assets/images/firebase.jpg',
      'Django': 'assets/images/django.jpg',
      'Java': 'assets/images/java.jpg',
      'Python': 'assets/images/python.jpg',
      'JavaScript': 'assets/images/javascript.jpg',
      'Swift': 'assets/images/swift.jpg',
      'Node.js': 'assets/images/nodejs.jpg',
      'Vue.js': 'assets/images/vue.jpg',
      'Go': 'assets/images/go.jpg',
      'MongoDB': 'assets/images/mongodb.jpg',
    };

    return skillImages[skill] ?? 'assets/default_logo.png';
  }

  String getToolImage(String tool) {
    // Map each tool to its corresponding image path
    Map<String, String> toolImages = {
      'VSCode': 'assets/vscode_logo.png',
      'Android Studio': 'assets/android_studio_logo.png',
      'Linux': 'assets/linux_logo.png',
      // Add more paths as needed
    };

    return toolImages[tool] ?? 'assets/default_logo.png'; // Default image path if not found
  }
}
