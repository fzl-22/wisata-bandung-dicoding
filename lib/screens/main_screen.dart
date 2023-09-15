import 'package:flutter/material.dart';
import 'package:wisata_bandung_dicoding/screens/widgets/tourism_place_grid.dart';
import 'package:wisata_bandung_dicoding/screens/widgets/tourism_place_list.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            const Text("Wisata Bandung"),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth <= 600) {
            return const TourismPlaceList();
          } else if (constraints.maxWidth <= 1200) {
            return const TourismPlaceGrid(crossAxisCount: 4);
          } else {
            return const TourismPlaceGrid(crossAxisCount: 6);
          }
        },
      ),
    );
  }
}
