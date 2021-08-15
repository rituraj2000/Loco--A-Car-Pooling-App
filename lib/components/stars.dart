import 'package:flutter/material.dart';

class Stars extends StatefulWidget {
  @override
  _StarsState createState() => _StarsState();
}

class _StarsState extends State<Stars> {
  bool one = false;

  bool two = false;

  bool three = false;

  bool four = false;

  bool five = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
            icon: Icon(
              one ? Icons.star : Icons.star,
              color: one ? Colors.yellow : Colors.grey[200],
              size: 30,
            ),
            onPressed: () {
              setState(() {
                one = true;
                two = false;
                three = false;
                four = false;
                five = false;
              });
            }),
        IconButton(
            icon: Icon(
              two ? Icons.star : Icons.star,
              color: two ? Colors.yellow : Colors.grey[200],
              size: 30,
            ),
            onPressed: () {
              setState(() {
                one = true;
                two = true;
                three = false;
                four = false;
                five = false;
              });
            }),
        IconButton(
            icon: Icon(
              three ? Icons.star : Icons.star,
              color: three ? Colors.yellow : Colors.grey[200],
              size: 30,
            ),
            onPressed: () {
              setState(() {
                one = true;
                two = true;
                three = true;
                four = false;
                five = false;
              });
            }),
        IconButton(
            icon: Icon(
              four ? Icons.star : Icons.star,
              color: four ? Colors.yellow : Colors.grey[200],
              size: 30,
            ),
            onPressed: () {
              setState(() {
                one = true;
                two = true;
                three = true;
                four = true;
                five = false;
              });
            }),
        IconButton(
            icon: Icon(
              five ? Icons.star : Icons.star,
              color: five ? Colors.yellow : Colors.grey[200],
              size: 30,
            ),
            onPressed: () {
              setState(() {
                one = true;
                two = true;
                three = true;
                four = true;
                five = true;
              });
            }),
      ],
    );
  }
}
