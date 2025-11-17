import 'package:flutter/material.dart';

class StatisticCard extends StatelessWidget {
  const StatisticCard({super.key, required this.title, required this.count, required this.color, required this.icon, required this.description});

  final String title;
  final int count;
  final MaterialColor color;
  final IconData icon;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      width: double.infinity,
      height: 150,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey[300]!, width: 1),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[800],
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 6),
              Text(
                '$count',
                style: TextStyle(
                  fontSize: 28,
                  color: color[900],
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Row(
                children: [
                  CircleAvatar(backgroundColor: color[500], radius: 5),
                  SizedBox(width: 6),
                  Text(
                    description,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[600],
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ],
          ),
          CircleAvatar(
            backgroundColor: color[50],
            radius: 20,
            child: Icon(
              icon,
              size: 26,
              color: color[400],
            ),
          ),
        ],
      ),
    );
  }
}
