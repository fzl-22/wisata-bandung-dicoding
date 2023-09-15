import 'package:flutter/material.dart';
import 'package:wisata_bandung_dicoding/models/tourism_place.dart';
import 'package:wisata_bandung_dicoding/screens/widgets/detail_mobile_page.dart';
import 'package:wisata_bandung_dicoding/screens/widgets/detail_web_page.dart';

class DetailScreen extends StatelessWidget {
  final TourismPlace place;
  const DetailScreen({
    super.key,
    required this.place,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth <= 800) {
          return DetailMobilePage(place: place);
        } else {
          return DetailWebPage(place: place);
        }
      },
    );
  }
}
