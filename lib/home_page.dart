import 'package:flutter/material.dart';
import 'package:sutra/alt_login.dart';
import 'package:sutra/search_page.dart';
import 'package:sutra/topic_page.dart';
import 'package:sutra/profile_page.dart';
import 'package:sutra/DMPage.dart';
import 'package:sutra/Trending_page.dart';
import 'package:sutra/LivePage.dart';


class HomePage extends StatefulWidget {
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
        backgroundColor: Colors.brown[100],
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Image.asset(
              'assets/sutra_appbar.png',
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
          AltLoginPage(),
          TrendingPage(),
          LivePage(),
          //SearchPage(),
          //TopicHomePage(),
          DMPage(),
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
}
