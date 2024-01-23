import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  final String aboutMeDescription =
      "I am a passionate developer with experience in various technologies. I love building applications that make a positive impact on people's lives.";

  final List<String> skills = [
    'Flutter',
    'Django',
    'Java',
    'Python',
    'JavaScript',
    'Node.js',
    'Vue.js',
    'Golang/Gin',
    'MongoDB',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Me'),
      ),
      body: Padding(
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
            SizedBox(height: 24.0),
            Text(
              'Professional Skills',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16.0),
            Wrap(
              alignment: WrapAlignment.center, // Align items to the center
              spacing: 16.0,
              runSpacing: 16.0,
              children: skills.map((skill) {
                return buildSkillIcon(skill);
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildSkillIcon(String skill) {
    return Column(
      children: [
        Container(
          width: 80,
          height: 80,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.amber[800]!, width: 2.0),
          ),
          child: Center(
            child: Icon(
              getSkillIcon(skill),
              color: Colors.amber[800],
              size: 40.0,
            ),
          ),
        ),
        SizedBox(height: 8.0),
        Text(
          skill,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  IconData getSkillIcon(String skill) {
    // Map each skill to its corresponding icon
    Map<String, IconData> skillIcons = {
      'Flutter': Icons.star,
      'Django': Icons.language,
      'Java': Icons.code,
      'Python': Icons.code,
      'JavaScript': Icons.language,
      'Node.js': Icons.language,
      'Vue.js': Icons.language,
      'Golang/Gin': Icons.code,
      'MongoDB': Icons.data_usage,
    };

    return skillIcons[skill] ?? Icons.help_outline; // Default icon if not found
  }
}
