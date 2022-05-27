import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'content_screen.dart';
import 'urls.dart';

class HomePage extends StatelessWidget {
  VideoUrl url = VideoUrl();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Stack(
            children: [
              //We need swiper for every content
              PageView.builder(
                itemBuilder: (BuildContext context, int index) {
                  return ContentScreen(
                    src: url.videos[index],
                  );
                },
                itemCount: url.videos.length,
                scrollDirection: Axis.vertical,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Goodnews Shorts',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Icon(Icons.camera_alt),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
