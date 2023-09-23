import 'package:flutter/material.dart';

class Post {
  final String title;
  final String content;
  final String author;
  final List<String> comments;

  Post({
    required this.title,
    required this.content,
    required this.author,
    required this.comments,
  });
}

class Posts extends StatelessWidget {
  const Posts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: <Widget>[
          RedditCard(
            title: 'I think my esp32 board is dead, HELP!',
            content: 'Earlier today I was trying to desolder the header pins on the esp32cam board when I noticed the 10k resistor..',
            onPressedUpvote: () {  },
            onPressedDownvote: () {  },
            onPressedComment: () {  },
            onPressedShare: () {  },
            imageUrl: 'assets/esp32.png',
            authorName: '@sharma_vinod',
            topicName: 'Electronics',
            commentCount: 10,
            upvoteCount: 15,
          ),
          RedditCard(
            title: 'Java hack no one tells you about :)',
            content: 'Let me show you the quickest way to run Java on any Windows machine. I am sure a lot of people must...',
            onPressedUpvote: () {  },
            onPressedDownvote: () {  },
            onPressedComment: () {  },
            onPressedShare: () {  },
            imageUrl: 'assets/javaide.png',
            authorName: '@kasyap2023',
            topicName: 'Java',
            commentCount: 26,
            upvoteCount: 134,
          ),
          RedditCard(
            title: 'Interesting algorithm results',
            content: 'So I was learning the pigeonhole principle earlier today, and I wanted to test it in C++ and I noticed that..',
            onPressedUpvote: () {  },
            onPressedDownvote: () {  },
            onPressedComment: () {  },
            onPressedShare: () {  },
            authorName: '@intelligibleCoder',
            topicName: 'C++',
            commentCount: 64,
            upvoteCount: 198,
          ),
          RedditCard(
            title: 'Confused by Hawking Radiation',
            content: 'The article “Disappearing Act”, Scientific American, September 2023, discusses virtual particle pairs near...',
            onPressedUpvote: (){},
            onPressedDownvote: (){},
            onPressedComment: () {},
            onPressedShare: () {},
            authorName: '@ReakBowtie',
            topicName: 'Physics',
            commentCount: 11,
            upvoteCount: 20
          ),
          RedditCard(
            title: 'Need guidance on using DynaMedEx search',
            content: 'Institution got rid of UpToDate and now we have DynaMedEx. Usual complaints aside, my biggest issue is that...',
            onPressedUpvote: (){},
            onPressedDownvote: (){},
            onPressedShare: (){},
            onPressedComment: (){},
            authorName: '@Sanjana_choudary',
            topicName: 'Medicine',
            commentCount: 3,
            upvoteCount: 1,
          ),
          RedditCard(
            title: 'Is this Friedel-Crafts alkylation viable?',
            content: '',
            imageUrl: 'assets/chem.png',
            onPressedComment: (){},
            onPressedShare: (){},
            onPressedDownvote: () {},
            onPressedUpvote: () {},
            authorName: '@nobertorodrigo',
            topicName: 'Chemistry',
            commentCount: 0,
            upvoteCount: 1,
          )// Add more RedditCards as needed
        ],
      ),
    );
  }
}

class RedditCard extends StatelessWidget {
  final String title;
  final String content;
  final String? imageUrl;
  final VoidCallback? onPressedUpvote;
  final VoidCallback? onPressedDownvote;
  final VoidCallback? onPressedComment;
  final VoidCallback? onPressedShare;
  final String authorName;
  final String topicName;
  final int upvoteCount;
  final int commentCount;// Callback for share button

  const RedditCard({
    required this.title,
    required this.content,
    this.imageUrl,
    required this.onPressedUpvote,
    required this.onPressedDownvote,
    required this.onPressedComment,
    required this.onPressedShare,
    required this.authorName,
    required this.topicName,
    required this.commentCount,
    required this.upvoteCount,
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final minimalPost = Post(title: title, content: content, author: '@bhupinderjogi1995', comments: []);
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => FullPostPage(post: minimalPost,),
          ),
        );
      },
      child: Card(
        elevation: 2.0,
        margin: const EdgeInsets.symmetric(vertical: 10.0),
        child: Column(
          children: <Widget>[
            ListTile(
              title: Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
              ),
              subtitle: Text(
                'Posted in $topicName by $authorName',
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(content),
            ),
            if (imageUrl != null)
              Image.asset(
                imageUrl!,
                fit: BoxFit.cover,
              ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    IconButton(
                      icon: const Icon(Icons.thumb_up),
                      onPressed: onPressedUpvote,
                    ),
                    Text('$upvoteCount'),
                    IconButton(
                      icon: const Icon(Icons.thumb_down),
                      onPressed: onPressedDownvote,
                    ),
                  ],
                ),
                IconButton(
                  icon: const Icon(Icons.comment),
                  onPressed: onPressedComment,
                ),
                Padding
                  (
                  padding: const EdgeInsets.only(left: 2.0),
                  child: Text('$commentCount'),
                ),
                IconButton(
                  icon: const Icon(Icons.share),
                  onPressed: onPressedShare,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


class FullPostPage extends StatelessWidget {
  final Post post;

  const FullPostPage({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown.shade200,
        title: const Text(
            'Full Post',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(post.title, style: const TextStyle(fontSize: 24.0)),
            Text('Author: ${post.author}'),
            const SizedBox(height: 16.0),
            Text(post.content),
            const SizedBox(height: 16.0),
            const Text('Comments:', style: TextStyle(fontWeight: FontWeight.bold)),
            Column(
              children: post.comments
                  .map((comment) => ListTile(title: Text(comment)))
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
