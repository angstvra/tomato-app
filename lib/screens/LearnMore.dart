import 'dart:io';
import 'package:flutter/material.dart';

class LearnMore extends StatelessWidget {
  final File? image;
  final String resultVal;
  final String confidenceVal;
  String info = "";

  LearnMore(
      {Key? key,
      this.image,
      required this.resultVal,
      required this.confidenceVal})
      : super(key: key);

  Widget _buildDescriptionText() {
    if (resultVal == "Bacterial Spot") {
      info =
          'Bacterial spot first appear as small, water-soaked areas that rapidly enlarge to form purple-brown, oily-appearing blotches. On the lower side of leaves, rings of grayish white mycelium and spore-forming structures may appear around the blotches.Leaf symptoms of late blight first appear as small, water-soaked areas that rapidly enlarge to form purple-brown, oily-appearing blotches. On the lower side of leaves, rings of grayish white mycelium and spore-forming structures may appear around the blotches.Leaf symptoms of late blight first appear as small, water-soaked areas that rapidly enlarge to form purple-brown, oily-appearing blotches. On the lower side of leaves, rings of grayish white mycelium and spore-forming structures may appear around the blotches.';
    } else if (resultVal == "Early Blight") {
      info =
          'Early blight first appear as small, water-soaked areas that rapidly enlarge to form purple-brown, oily-appearing blotches. On the lower side of leaves, rings of grayish white mycelium and spore-forming structures may appear around the blotches.Leaf symptoms of late blight first appear as small, water-soaked areas that rapidly enlarge to form purple-brown, oily-appearing blotches. On the lower side of leaves, rings of grayish white mycelium and spore-forming structures may appear around the blotches.Leaf symptoms of late blight first appear as small, water-soaked areas that rapidly enlarge to form purple-brown, oily-appearing blotches. On the lower side of leaves, rings of grayish white mycelium and spore-forming structures may appear around the blotches.';
    } else if (resultVal == "Healthy") {
      info =
          'Healthy as small, water-soaked areas that rapidly enlarge to form purple-brown, oily-appearing blotches. On the lower side of leaves, rings of grayish white mycelium and spore-forming structures may appear around the blotches.Leaf symptoms of late blight first appear as small, water-soaked areas that rapidly enlarge to form purple-brown, oily-appearing blotches. On the lower side of leaves, rings of grayish white mycelium and spore-forming structures may appear around the blotches.Leaf symptoms of late blight first appear as small, water-soaked areas that rapidly enlarge to form purple-brown, oily-appearing blotches. On the lower side of leaves, rings of grayish white mycelium and spore-forming structures may appear around the blotches.';
    } else if (resultVal == "Mosaic Virus") {
      info =
          'Mosaic virus first appear as small, water-soaked areas that rapidly enlarge to form purple-brown, oily-appearing blotches. On the lower side of leaves, rings of grayish white mycelium and spore-forming structures may appear around the blotches.Leaf symptoms of late blight first appear as small, water-soaked areas that rapidly enlarge to form purple-brown, oily-appearing blotches. On the lower side of leaves, rings of grayish white mycelium and spore-forming structures may appear around the blotches.Leaf symptoms of late blight first appear as small, water-soaked areas that rapidly enlarge to form purple-brown, oily-appearing blotches. On the lower side of leaves, rings of grayish white mycelium and spore-forming structures may appear around the blotches.';
    } else if (resultVal == "Septoria Leaf Spot") {
      info =
          'Septoria Leaf spot appear as small, water-soaked areas that rapidly enlarge to form purple-brown, oily-appearing blotches. On the lower side of leaves, rings of grayish white mycelium and spore-forming structures may appear around the blotches.Leaf symptoms of late blight first appear as small, water-soaked areas that rapidly enlarge to form purple-brown, oily-appearing blotches. On the lower side of leaves, rings of grayish white mycelium and spore-forming structures may appear around the blotches.Leaf symptoms of late blight first appear as small, water-soaked areas that rapidly enlarge to form purple-brown, oily-appearing blotches. On the lower side of leaves, rings of grayish white mycelium and spore-forming structures may appear around the blotches.';
    } else {
      info =
          'Yellow Leaf curl first appear as small, water-soaked areas that rapidly enlarge to form purple-brown, oily-appearing blotches. On the lower side of leaves, rings of grayish white mycelium and spore-forming structures may appear around the blotches.Leaf symptoms of late blight first appear as small, water-soaked areas that rapidly enlarge to form purple-brown, oily-appearing blotches. On the lower side of leaves, rings of grayish white mycelium and spore-forming structures may appear around the blotches.Leaf symptoms of late blight first appear as small, water-soaked areas that rapidly enlarge to form purple-brown, oily-appearing blotches. On the lower side of leaves, rings of grayish white mycelium and spore-forming structures may appear around the blotches.';
    }

    return Text(
      info,
      style: const TextStyle(
        fontSize: 13,
        fontWeight: FontWeight.w400,
        color: Colors.white,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF38384E),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(
                  0, 25, 0, MediaQuery.of(context).size.height * 0.05),
              width: 32,
              height: 32,
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back, color: Colors.white),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  bottom: MediaQuery.of(context).size.height * 0.03),
              width: MediaQuery.of(context).size.width *
                  0.9, // 80% of the screen width
              height: MediaQuery.of(context).size.height *
                  0.4, // 50% of the screen height
              child: Image.file(image!),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.05),
              child: Container(
                margin: const EdgeInsets.fromLTRB(12, 0, 78, 6),
                width: double.infinity,
                child: Text(
                  'Predicted Disease: $resultVal',
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.05),
              child: Container(
                margin: const EdgeInsets.fromLTRB(12, 0, 98, 6),
                width: double.infinity,
                child: Text(
                  'Confidence Level: $confidenceVal',
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.05),
              child: Container(
                margin: EdgeInsets.fromLTRB(
                    9, 0, 0, MediaQuery.of(context).size.height * 0.05),
                constraints: const BoxConstraints(maxWidth: 284),
                child: _buildDescriptionText(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
