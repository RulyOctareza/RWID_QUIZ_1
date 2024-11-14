import 'package:flutter/material.dart';
import 'package:flutter_rwid/main.dart';
import 'package:flutter_rwid/widgets/news_form.dart';

import 'package:flutter_rwid/widgets/news_model.dart';
import 'package:objectbox/objectbox.dart';
import 'news_card.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({super.key});

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  late Box<NewsModel> newsBox;

  @override
  void initState() {
    super.initState();
    newsBox = objectbox.store.box<NewsModel>();
  }

  void _refresh() {
    setState(() {});
  }

  void _onLongPress(BuildContext context, NewsModel news) async {
    await showDialog(
      context: context,
      builder: (context) => SimpleDialog(
        children: [
          SimpleDialogOption(
            child: const Text('Edit'),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => NewsForm(news: news),
                ),
              ).then((_) => _refresh());
            },
          ),
          SimpleDialogOption(
            child: const Text('Delete'),
            onPressed: () {
              newsBox.remove(news.id);
              Navigator.pop(context);
              _refresh();
            },
          ),
          SimpleDialogOption(
            child: const Text('Cancel'),
            onPressed: () => Navigator.pop(context),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final newsList = newsBox.getAll();
    return RefreshIndicator(
      onRefresh: () async {
        _refresh();
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Saved News'),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {
                // Navigate to dashboard
              },
              icon: const Icon(Icons.dashboard),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const NewsForm(),
              ),
            ).then((_) => _refresh());
          },
          backgroundColor: Colors.blue,
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
        body: newsList.isEmpty
            ? const Center(child: Text('No Saved News'))
            : Padding(
                padding: const EdgeInsets.all(16),
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    final news = newsList[index];
                    return NewsCard(
                      news: news,
                      onLongPress: () => _onLongPress(context, news),
                    );
                  },
                  itemCount: newsList.length,
                ),
              ),
      ),
    );
  }
}
