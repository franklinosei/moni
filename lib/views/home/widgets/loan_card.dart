import 'package:flutter/material.dart';

class ActiveLoanCard extends StatelessWidget {
  final String title;
  final int loanAmount;
  final int loanDuration;

  const ActiveLoanCard({
    Key? key,
    required this.title,
    required this.loanAmount,
    required this.loanDuration,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Flexible(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.grey[200],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                'https://unsplash.com/photos/2EGNqazbAMk/download?ixid=MnwxMjA3fDB8MXxzZWFyY2h8MXx8YmxhY2slMjBndXl8ZW58MHx8fHwxNjQ2NDAzMzUw&force=true&w=640',
                height: 70,
                width: 70,
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
                Text(title),
                Text(
                  '\t$loanDuration days to due date',
                  style: const TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'N$loanAmount Active loan',
              style: const TextStyle(
                color: Colors.green,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
