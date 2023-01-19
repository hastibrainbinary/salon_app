import 'package:flutter/material.dart';
import 'package:salon_app/utils/asset_res.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(AssetRes.selectImage),
                  fit: BoxFit.fill),
            ),
          ),
        ],
      ),
    );
  }
}
