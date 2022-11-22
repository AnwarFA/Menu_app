import 'package:flutter/material.dart';

class FoodCard extends StatelessWidget {
  final String name;
  final String url;

  FoodCard({required this.name, required this.url});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
      child: Card(
        elevation: 3,
        child: Container(
          margin: EdgeInsets.all(6),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    this.name,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      this.url,
                      width: 150,
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
    ;
  }
}
