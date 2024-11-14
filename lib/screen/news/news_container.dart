import 'package:flutter/material.dart';

class NewsContainer extends StatelessWidget {
  final String categorynews;
  final String news;
  final String date;

  const NewsContainer(
      {required this.categorynews,
      required this.date,
      required this.news,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      padding: const EdgeInsets.all(16),
      width: MediaQuery.of(context).size.width,
      height: 150,
      decoration: BoxDecoration(
          color: Colors.grey[300], borderRadius: BorderRadius.circular(12)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue),
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(Radius.circular(22))),
                child: Text(
                  categorynews,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.blue,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(
                width: 200,
                child: Text(news,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w500)),
              ),
              Container(
                child: Text(date),
              )
            ],
          ),
          Container(
            width: 100,
            decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/person.png'))),
          ),
        ],
      ),
    );
  }
}
