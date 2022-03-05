import 'package:flutter/material.dart';

class ClusterSettings extends StatelessWidget {
  const ClusterSettings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Row(
              children: const [
                Text(
                  'Cluster purse setting',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Frequency of contribution',
                      style: TextStyle(
                        fontSize: 13,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Monthly Upfront',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Change',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.red,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              'N5000000',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Your constribution is 8% of your eligible amount',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 10),
            const Divider(),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: const [
                Icon(Icons.link),
                SizedBox(
                  width: 15,
                ),
                Text(
                  'Group link invite Link/Code',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Text('Use the link or code below to invite new member'),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Member invite code',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      '30DF38TGOOO',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Get new code',
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const Divider(),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: const [
                Icon(
                  Icons.list,
                  size: 40,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Loan setting',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Total loan collected by cluster',
              style: TextStyle(),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'N5000000',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 17,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Repayment Day',
                      style: TextStyle(
                        fontSize: 15,
                        // color: Colors.grey,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Every Sunday',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Change',
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Divider(),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: const [
                Icon(
                  Icons.list,
                  size: 40,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Pending Join Request',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'No pending cluster join request',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Divider(),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: const [
                Icon(
                  Icons.settings,
                  size: 25,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Group Settings',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Group rules',
              style: TextStyle(
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                  "1. Check the car's rental terms as well, because each company has its own rules."),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                  "2. Check the car's rental terms as well, because each company has its own rules."),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Group Whatsapp',
              style: TextStyle(
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'https://chat.whatsapp.com/sfhkYUBybYUGu/ybYG7gbYGTUY',
              style: TextStyle(
                color: Colors.green,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: const [
                Icon(
                  Icons.edit,
                  // size: 30,
                  color: Colors.red,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Edit Settings',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Divider(),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: const [
                Icon(
                  Icons.money,
                  size: 30,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Benefits earned',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Text('Total CH benefits earned'),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'N5000000',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 18,
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Available Benefits',
                      style: TextStyle(
                        fontSize: 15,
                        // color: Colors.grey,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'N50000000',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.remove_red_eye,
                          color: Colors.red,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'View earning history',
                          style: TextStyle(
                            color: Colors.red,
                          ),
                        )
                      ],
                    )
                  ],
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    '+N5000 today',
                    style: TextStyle(
                      color: Colors.green,
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
