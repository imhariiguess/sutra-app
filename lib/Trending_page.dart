import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(MaterialApp(
    home: TrendingPage(),
  ));
}

class TrendingPage extends StatelessWidget {
  final List<Article> articles = [
    Article(
      imageUrl: 'assets/foxconn.jpg', // Use the asset image path
      title: 'Foxconn boss sees potential to invest billions in India',
      description: "Foxconn -- also known by its official name Hon Hai Precision Industry -- is the world's biggestcontract electronics manufacturer and assembles devices for many companies, most notably Apple's iPhones.",
      articleUrl: 'https://telecom.economictimes.indiatimes.com/news/devices/foxconn-boss-sees-potential-to-invest-billions-in-india/102730451',
    ),
    Article(
      imageUrl: 'assets/workshop-desk.webp', // Use the asset image path
      title: 'THE LOVELIEST ELECTRONICS DESK YOU’LL SEE TODAY',
      description: 'Does your electronics desk have a lap drawer? And is it filled with random, disorganized detritus? Well, [Handy Bear] is here to show you that you can put so much more in every drawer you’ve got if you do it right. And boy, it sure looks like [Handy Bear] did it right.',
      articleUrl: 'https://hackaday.com/2023/09/21/the-loveliest-electronics-desk-youll-see-today/',
    ),
    Article(
      imageUrl: 'assets/usedgadgets.avif', // Use the asset image path
      title: '6 Reasons You Should Always Research Before Buying Used Electronics',
      description: "Don't wait until the product arrives. Conduct as much research as possible before hitting the buy button!",
      articleUrl: 'https://www.makeuseof.com/reasons-you-always-research-before-buying-used-electronics/',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Trending'),
        backgroundColor: Colors.deepOrange,
      ),
      body: Container(
        color: Colors.grey.shade200,
        child: ListView.builder(
          itemCount: articles.length,
          itemBuilder: (context, index) {
            final article = articles[index];
            return Card(
              elevation: 2,
              margin: const EdgeInsets.all(8),
              child: InkWell(
                onTap: () {
                  // Navigate to the WebView to display the article
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ArticleWebViewPage(article.articleUrl),
                  ));
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      article.imageUrl, // Load the asset image
                      height: 200, // Adjust the height of the banner image
                      width: double.infinity, // Make the image fill the width
                      fit: BoxFit.cover, // Cover the whole area
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        article.title,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        article.description,
                        style: const TextStyle(fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class Article {
  final String imageUrl;
  final String title;
  final String description;
  final String articleUrl;

  Article({
    required this.imageUrl,
    required this.title,
    required this.description,
    required this.articleUrl,
  });
}

class ArticleWebViewPage extends StatelessWidget {
  final String articleUrl;

  const ArticleWebViewPage(this.articleUrl, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Article'),
        backgroundColor: Colors.deepOrange,
      ),
      //body: WebView(
       // initialUrl: articleUrl,
      //),
    );
  }
}


