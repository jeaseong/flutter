import 'package:flutter/material.dart';
import 'package:my_app/webtoon/models/webtoon_model.dart';
import 'package:my_app/webtoon/screen/webtoon_detail_screen.dart';

class Webtoon extends StatelessWidget {
  const Webtoon({
    super.key,
    required this.webtoon,
  });

  final WebtoonModel webtoon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            fullscreenDialog: true,
            builder: (context) => DetailScreen(
              title: webtoon.title,
              thumb: webtoon.thumb,
              id: webtoon.id,
            ),
          ),
        );
      },
      child: Column(
        children: [
          Hero(
            tag: webtoon.id,
            child: Container(
              width: 250,
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 8,
                    offset: const Offset(10, 10),
                    color: Colors.black.withOpacity(0.2),
                  ),
                ],
              ),
              child: Image.network(
                webtoon.thumb,
                headers: const {
                  "User-Agent":
                      "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36"
                },
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(webtoon.title),
        ],
      ),
    );
  }
}
