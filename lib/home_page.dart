import 'package:flutter/material.dart';
import 'package:sutra/alt_login.dart';
import 'package:sutra/search_page.dart';
import 'package:sutra/choice.dart';

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
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SearchPage()),
              );
            }
          )
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
        children: const [
          // Define your pages here
          AltLoginPage(),
          SearchPage(),
          Choice(),
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
            icon: Icon(Icons.search),
            label: 'Search',
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
