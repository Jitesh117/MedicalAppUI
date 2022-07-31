import 'package:flutter/material.dart';

class DocType extends StatelessWidget {
  const DocType({
    Key? key,
    required this.imagePath,
    required this.docName,
  }) : super(key: key);
  final String imagePath;
  final String docName;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        right: 25,
      ),
      child: Center(
        child: Container(
          width: 120,
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 15,
          ),
          decoration: BoxDecoration(
              color: Colors.deepPurple.shade200,
              borderRadius: BorderRadius.circular(10)),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            Image.asset(
              imagePath,
              width: 30,
            ),
            Text(
              docName,
            )
          ]),
        ),
      ),
    );
  }
}
