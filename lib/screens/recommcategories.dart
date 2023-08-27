import 'package:flutter/material.dart';

class Recommendations extends StatefulWidget {
  const Recommendations({super.key});

  @override
  State<Recommendations> createState() => _RecommendationsState();
}

class _RecommendationsState extends State<Recommendations> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 0),
      padding: EdgeInsets.symmetric(horizontal: 5.0),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              width: 100,
              height: 50,
              fit: BoxFit.cover,
              "assets/images/drone.jpg",
            ),
          ),
          SizedBox(height: 8),
          Expanded(
            child: Row(
              children: [
                Text(
                  'Drones Spray',
                  style: TextStyle(
                      color: Colors.black54,
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
