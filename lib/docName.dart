import 'package:flutter/material.dart';

class DocName extends StatelessWidget {
  const DocName({
    Key? key,
    required this.imagePath,
    required this.star,
    required this.name,
    required this.exp,
  }) : super(key: key);
  final String imagePath;
  final String star;
  final String name;
  final String exp;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 25.0),
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Colors.deepPurple.shade200,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(
                imagePath,
              ),
              radius: 35,
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 5,
                vertical: 2,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                children: [
                  Image.asset(
                    'assets/star.png',
                    height: 15,
                  ),
                  Text(
                    star,
                    style: const TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
            Text(
              name,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            Text('Therapist ' + exp)
          ],
        ),
      ),
    );
  }
}
