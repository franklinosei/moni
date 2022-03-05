import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moni/controllers/user_data_controller.dart';
import 'package:moni/models/active_loans_model.dart';
import 'package:moni/views/home/widgets/inactive_loan_card.dart';
import 'package:moni/views/home/widgets/loan_card.dart';

class MembersWidget extends StatelessWidget {
  MembersWidget({Key? key}) : super(key: key);

  final UserDataController userDataController = Get.find();

  final expandController = ExpandableController(
    initialExpanded: true,
  );

  _buildLoanList(List<ActiveLoanModel> list) {
    List<Widget> listWidgets = [];
    for (var i = 0; i < list.length; i++) {
      listWidgets.add(
        Column(
          children: [
            ActiveLoanCard(
              title: '${list[i].agentFirstName} ${list[i].agentLastName}',
              loanAmount: list[i].loanAmount,
              loanDuration: list[i].daysToDueDate,
            ),
            const Divider(),
          ],
        ),
      );
    }

    return listWidgets;
  }

  _buildInactiveLoanList(List list) {
    List<Widget> listWidgets = [];
    for (var i = 0; i < list.length; i++) {
      // print(list[i]);

      listWidgets.add(
        Column(
          children: [
            InactiveLoanCard(
              title: '${list[i].agentFirstName} ${list[i].agentLastName}',
            ),
            const Divider(),
          ],
        ),
      );
    }

    return listWidgets;
  }

  @override
  Widget build(BuildContext context) {
    // print(userDataController.inActiveLoans.value);
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 10,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            ExpandablePanel(
              controller: expandController,
              theme: const ExpandableThemeData(
                headerAlignment: ExpandablePanelHeaderAlignment.center,
                collapseIcon: Icons.minimize,
              ),
              header: const Text(
                'Active Loans',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              collapsed: const Text(
                '',
              ),
              expanded: Obx(
                () => Column(
                  children: _buildLoanList(
                      userDataController.activeLoans.value.activeLoans!),
                ),
              ),
            ),
            const Divider(
              color: Colors.black,
            ),
            ExpandablePanel(
              controller: expandController,
              theme: const ExpandableThemeData(
                headerAlignment: ExpandablePanelHeaderAlignment.center,
                collapseIcon: Icons.minimize,
              ),
              header: const Text(
                'Inactive Loans',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              collapsed: const Text(
                '',
              ),
              expanded: Obx(
                () => Column(
                  children: _buildInactiveLoanList(
                      userDataController.inActiveLoans.value.inactiveLoans!),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
