import 'package:flutter/material.dart';

class ProfileWidgets extends StatelessWidget {
  const ProfileWidgets({super.key, required this.status});
  final Color status;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            color: Colors.brown[200],
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Text(
              "Fe",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Positioned(
          top: 30,
          left: 28,
          child: Container(
            height: 12,
            width: 12,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white),
              color: status,
              shape: BoxShape.circle,
            ),
          ),
        ),
      ],
    );
  }
}
