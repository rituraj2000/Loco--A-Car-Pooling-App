import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Padding menuItem(IconData icon, String title, String description) {
  return Padding(
    padding: EdgeInsets.all(15),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          icon,
          color: Colors.black,
          size: 20,
        ),
        SizedBox(width: 15),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 17,
                color: Colors.grey.shade800,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              description,
              style: TextStyle(
                color: Colors.grey.shade800,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

Padding carItem(String asset, String title, String description) {
  return Padding(
    padding: EdgeInsets.all(25),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 17,
                color: Colors.grey.shade800,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              description,
              style: TextStyle(
                color: Colors.grey.shade800,
              ),
            ),
          ],
        ),
        Image.asset(asset),
      ],
    ),
  );
}

Padding editItem(bool isIcon, String title, String description,
    {IconData icon = FontAwesomeIcons.edit}) {
  return Padding(
    padding: EdgeInsets.all(15),
    child: Container(
      child: Padding(
        padding: const EdgeInsets.all(4),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 17,
                color: Colors.grey.shade600,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  description,
                  style: TextStyle(color: Colors.black, fontSize: 17),
                ),
                isIcon
                    ? Icon(
                        icon,
                        size: 20,
                        color: Colors.grey,
                      )
                    : SizedBox()
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
