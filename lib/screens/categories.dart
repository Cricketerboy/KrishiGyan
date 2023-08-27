import 'package:flutter/material.dart';

class Category extends StatefulWidget {
  const Category({super.key});

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 0),
      child: Column(
        children: [
          Expanded(
            child: Container(
              width: 100,
              height: 30,
              decoration: BoxDecoration(
                color: Colors.transparent,
                image: DecorationImage(
                  image: AssetImage("assets/images/drone.jpg"),
                ),
              ),
            ),
          ),
          SizedBox(height: 8),
          Text(
            'Drone Spray',
            style: TextStyle(
                color: Colors.black54,
                fontSize: 11,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
