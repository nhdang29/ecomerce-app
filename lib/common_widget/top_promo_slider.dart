
import 'package:flutter/material.dart';

class TopPromoSlider extends StatelessWidget {
  const TopPromoSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Container(
          height: 130.0,
          width: double.infinity,
          child: const Center(
            child: Text("carousel"),
          )
      ),
    );
  }
}