import 'package:flutter/material.dart';


class NoInternet extends StatelessWidget {
  const NoInternet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: const Center(
        child: Text('No internet connection available,'),
      )),
    );
  }
}
