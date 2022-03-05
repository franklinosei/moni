import 'package:flutter/material.dart';

class InactiveLoanCard extends StatelessWidget {
  final String title;
  const InactiveLoanCard({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.transparent,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                'https://unsplash.com/photos/2EGNqazbAMk/download?ixid=MnwxMjA3fDB8MXxzZWFyY2h8MXx8YmxhY2slMjBndXl8ZW58MHx8fHwxNjQ2NDAzMzUw&force=true&w=640',
                height: 80,
                width: 80,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text('$title'),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'No active loan',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
