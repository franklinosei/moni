import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moni/controllers/user_data_controller.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final UserDataController userDataController = Get.put(UserDataController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: [
          IconButton(
            icon: Icon(Icons.exit_to_app),
            onPressed: () async {
              await userDataController.getUserData();
            },
          ),
        ],
      ),
    );
  }
}
