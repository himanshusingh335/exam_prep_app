import 'package:flutter/material.dart';

class GridTiles extends StatelessWidget {
  final String image;
  final String title;
  const GridTiles({
    Key? key,
    required this.image,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.blue.shade900,
                Colors.blue.shade800,
                Colors.blue.shade700,
                Colors.blue.shade100
              ])),
      padding: const EdgeInsets.all(8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image(
            image: AssetImage(image),
            height: 70.0,
          ),
          const SizedBox(
            height: 10,
          ), // icon
          Text(
            title,
            style: const TextStyle(fontSize: 20),
          ), // text
        ],
      ),
    );
  }
}
