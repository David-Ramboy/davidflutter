import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ProjectCardWithCarousel extends StatelessWidget {
  final List<String> imageUrls;

  const ProjectCardWithCarousel({super.key, required this.imageUrls});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFF1A1A2E), // dark background similar to your design
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 320,
            child: CarouselSlider(
              options: CarouselOptions(
                height: 150.0,
                autoPlay: true,
                enableInfiniteScroll: false,
                enlargeCenterPage: true,
                viewportFraction: 1.0,
              ),
              items: imageUrls.map((url) {
                return ClipRRect(
                  borderRadius:
                      const BorderRadius.vertical(top: Radius.circular(12)),
                  child: Image.network(
                    url,
                    fit: BoxFit.cover,
                  ),
                );
              }).toList(),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'UTOL WEBSITE',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  'Collaboration',
                  style: TextStyle(
                    color: Colors.white60,
                    fontSize: 14,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Developed using Flutter and\nLaunched to the web',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
