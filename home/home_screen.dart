import 'package:flutter/material.dart';

import 'package:my_portfolio/screens/home/components/about.dart';
import 'package:my_portfolio/screens/home/components/cv.dart';
import 'package:my_portfolio/screens/home/components/project_card.dart';
import 'components/contact_me.dart';
import 'components/home_banner.dart';
import 'components/meet_developer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isDrawerOpen = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 60.0),
                  child: HomeBanner(),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50.0),
                  child: MyProjects(),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50.0),
                  child: Recommendations(),
                ),
              ],
            ),
          ),
          if (isDrawerOpen)
            Positioned(
              top: 0,
              right: 0,
              bottom: 0,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.7,
                color: Colors.black.withOpacity(0.5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    ListTile(
                      leading: Icon(Icons.home, color: Colors.white),
                      title: Text(
                        'Home',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      onTap: () {
                        // Handle item 1 press
                        setState(() {
                          isDrawerOpen = false;
                        });
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.person, color: Colors.white),
                      title: Text(
                       
                        'About',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      onTap: () {
                        // Handle item 3 press
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>  AboutScreen()),
                        );
                        setState(() {
                          isDrawerOpen = false;
                        });
                      },
                    ),
                     ListTile(
                      leading: Icon(Icons.work, color: Colors.white),
                      title: Text(
                        'Projects',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      onTap: () {
                        // Handle item 3 press
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ProjectsScreen()),
                        );
                        setState(() {
                          isDrawerOpen = false;
                        });
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.description, color: Colors.white),
                      title: Text(
                        
                        'Resume',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      onTap: () {
                        // Handle item 3 press
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ResumeScreen ()),
                        );
                        setState(() {
                          isDrawerOpen = false;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(120.0), // Adjust the height as needed
        child: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [
            Padding(
              padding: const EdgeInsets.only(top: 16.0, right: 300.0),
              child: IconButton(
                onPressed: () {
                  setState(() {
                    isDrawerOpen = !isDrawerOpen;
                  });
                },
                icon: Icon(
                  isDrawerOpen ? Icons.close : Icons.menu,
                  size: 42,
                  color: Colors.amber[800],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
