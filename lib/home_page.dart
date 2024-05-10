import 'package:flutter/material.dart';
import 'package:sutra/test 2.dart';
import 'package:sutra/Emergency_Contacts_Page.dart';
import 'package:sutra/testing.dart';
import 'package:sutra/search_page.dart';
import 'package:sutra/posts.dart';
import 'package:sutra/profile_page.dart';
import 'package:sutra/DMPage.dart';
import 'package:sutra/Trending_page.dart';
import 'package:sutra/LivePage.dart';
import 'package:sutra/topic_page.dart';


/*class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController _pageController = PageController();
  int _currentPageIndex = 0;

  void _onTabTapped(int index) {
    setState(() {
      _currentPageIndex = index;
    });
    _pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.ease,
    );
  }

  PreferredSizeWidget _buildAppBar() {
    // Only show the AppBar on the home page (index 0)
    if (_currentPageIndex == 0) {
      return AppBar(
        backgroundColor: Colors.deepOrange,
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Image.asset(
              'assets/sutra_appbar_black.png',
          ),
          onPressed: () {

          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SearchPage()),
              );
            }
          ),
        ],
        // Add your AppBar content here
      );
    }
    // Return an empty AppBar for other pages
    return PreferredSize(
      preferredSize: const Size.fromHeight(0), // Make it invisible
      child: AppBar(
        backgroundColor: Colors.transparent, // Make it transparent
        elevation: 0, // Remove the shadow
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      appBar: _buildAppBar(), // Use the custom AppBar method
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          // Define your pages here
          const Posts(),
          TrendingPage(),
          LivePage(),
          //SearchPage(),
          //TopicHomePage(),
          const DMPage(),
          UserProfilePage(),

        ],
        onPageChanged: (index) {
          setState(() {
            _currentPageIndex = index;
          });
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentPageIndex,
        onTap: _onTabTapped,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.deepOrange,
        backgroundColor: Colors.brown[200],
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.trending_up),
            label: 'Trending',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.live_tv),
            label: 'Live',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble),
            label: 'DM',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}*/

void main() {
  runApp(const MaterialApp(
    title: 'Smart Helmet',
    home: HomePage(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
  bool isConnected = false;

  void toggleConnection() {
    setState(() {
      isConnected = !isConnected;
    });
  }
  void navigateToHomePage() {
    // Navigate to the home page
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => HomePage()),
    );
  }
  void navigateToEmergencyContactsPage() {
    // Navigate to the Emergency Contacts page
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ContactsPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(height: 75.0),
          // Row 1 - Connection Status
          GestureDetector(
            onTap: toggleConnection,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Image(
                  image: AssetImage('assets/helmet.png'),
                  height: 250,
                  width: 250,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    isConnected
                        ? Icon(
                      Icons.lock,
                      color: Colors.green,
                    )
                        : Icon(
                      Icons.lock_open,
                      color: Colors.red,
                    ),
                    Text(isConnected ? 'Connected' : 'Disconnected'),
                  ],
                ),
              ],
            ),
          ),



          // Row 2 - Current Status & Metrics
          SizedBox(height: 50.0), // Add spacing between rows
          const Expanded(

            child: Row(

              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 20.0),
                Column(

                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    Text(
                      'Current Status',
                      style: TextStyle(fontSize: 30),
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.green,
                          radius: 5,
                        ),
                        SizedBox(width: 10),
                        Text('Safe',
                            style: TextStyle(fontSize:20)),
                      ],
                    ),
                    SizedBox(height: 10),
                    Text('Metrics:',
                        style: TextStyle(fontSize:20)),
                    Text('- Speed: 0.01kmph',
                        style: TextStyle(fontSize:20)),
                    Text('- Gyro Stability: Yes',
                        style: TextStyle(fontSize:20)),
                    Text('- Possible Danger: No',
                        style: TextStyle(fontSize:20)),
                  ],
                ),
              ],
            ),
          ),

          // Row 3 - Navigation Bar
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                icon: Icon(Icons.home),
                onPressed: navigateToHomePage, // Implement home button functionality
              ),
              IconButton(
                icon: Icon(Icons.sos),
                onPressed: navigateToEmergencyContactsPage, // Implement SOS button functionality
              ),
            ],
          ),
        ],
      ),
    );
  }
}