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

  final expandController_1 = ExpandableController(
    initialExpanded: true,
  );

  _buildLoanList(List<ActiveLoanModel> list) {
    List<Widget> listWidgets = [];
    for (var i = 0; i < list.length; i++) {
      listWidgets.add(
        Column(
          children: [
            const Divider(),
            const SizedBox(
              height: 10,
            ),
            ActiveLoanCard(
              title: '${list[i].agentFirstName} ${list[i].agentLastName}',
              loanAmount: list[i].loanAmount,
              loanDuration: list[i].daysToDueDate,
            ),
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
            const Divider(),
            const SizedBox(
              height: 10,
            ),
            InactiveLoanCard(
              title: '${list[i].agentFirstName} ${list[i].agentLastName}',
            ),
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
                expandIcon: Icons.add,
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
            const SizedBox(
              height: 15,
            ),
            const Divider(),
            const SizedBox(
              height: 15,
            ),
            ExpandablePanel(
              controller: expandController_1,
              theme: const ExpandableThemeData(
                headerAlignment: ExpandablePanelHeaderAlignment.center,
                collapseIcon: Icons.minimize,
                expandIcon: Icons.add,
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
