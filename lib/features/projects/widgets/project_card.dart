import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../../../core/config/color_constants.dart' as colors;

class ProjectCardWithCarousel extends StatelessWidget {
  final List<String> imageUrls;
  final String? title;
  final String? secondTitle;

  final String? subTitle;
  final String? description;
  const ProjectCardWithCarousel(
      {super.key,
      required this.imageUrls,
      this.title,
      this.subTitle,
      this.description,
      this.secondTitle});

  @override
  Widget build(BuildContext context) {
    return Card(
      color:
          colors.backgroundScreenV3, // dark background similar to your design
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius:
                    const BorderRadius.vertical(top: Radius.circular(12)),
                border: Border.all(color: colors.backgroundScreen)),
            child: CarouselSlider(
              options: CarouselOptions(
                height: 130.0,
                autoPlay: false,
                enableInfiniteScroll: false,
                enlargeCenterPage: true,
                viewportFraction: 1.0,
              ),
              items: imageUrls.map((url) {
                return ClipRRect(
                  borderRadius:
                      const BorderRadius.vertical(top: Radius.circular(12)),
                  child: Container(
                    foregroundDecoration: BoxDecoration(
                      color: colors.backgroundScreenV3.withValues(alpha: 0.5),
                    ),
                    child: Expanded(
                      child: Image.network(
                        url,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
          Container(
            height: 180,
            decoration: BoxDecoration(
              border: Border.all(color: colors.backgroundScreen),
              borderRadius:
                  const BorderRadius.vertical(bottom: Radius.circular(12)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Visibility(
                    visible: secondTitle != null,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Text(
                        secondTitle ?? '',
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: 'Inter'),
                      ),
                    ),
                  ),
                  Visibility(
                    visible: title != null,
                    child: Text(
                      title ?? '',
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontFamily: 'Inter'),
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    subTitle ?? '',
                    style: const TextStyle(
                        color: Colors.white60,
                        fontSize: 10,
                        fontFamily: 'Inter'),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    description ?? '',
                    style: const TextStyle(
                        color: Colors.white70,
                        fontSize: 16,
                        fontFamily: 'Inter'),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
