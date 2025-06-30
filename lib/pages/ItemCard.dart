import 'package:flutter/material.dart';
import 'package:sunset/pages/Colors.dart';

class ItemCard extends StatelessWidget {
  final Color color;

  const ItemCard({
    super.key,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(

          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    color.name,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,

                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    color.description,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  color.caption,
                  style: const TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 16,
                    color: Colors.pinkAccent
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
