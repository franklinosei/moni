import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moni/controllers/user_data_controller.dart';
import 'package:moni/views/home/widgets/cluster_settings.dart';
import 'package:moni/views/home/widgets/members_widget.dart';
import 'package:moni/views/loading/loading.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late TabController controller;
  final UserDataController userDataController = Get.put(UserDataController());

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 2, vsync: this);
    userDataController.getUserData();
  }

  @override
  Widget build(BuildContext context) {
    // ignore: unrelated_type_equality_checks
    return Obx(
      () => userDataController.isLoading.value
          ? const LoadingScreen()
          : Scaffold(
              appBar: AppBar(
                centerTitle: true,
                title: const Text('My cluster'),
                backgroundColor: Colors.black87,
                elevation: 0,
              ),
              body: NestedScrollView(
                headerSliverBuilder:
                    (BuildContext context, bool innerBoxIsScrolled) {
                  return [
                    SliverAppBar(
                      pinned: false,
                      backgroundColor: Colors.white,
                      flexibleSpace: FlexibleSpaceBar(
                        collapseMode: CollapseMode.pin,
                        background: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          decoration: const BoxDecoration(
                            color: Colors.black87,
                            image: DecorationImage(
                              image: AssetImage("assets/bg.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Column(
                            children: [
                              Container(
                                decoration: const BoxDecoration(),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Obx(
                                          () => Text(
                                            '${userDataController.clusterDetails.value.clusterName}',
                                            style: const TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Obx(
                                          () => Container(
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 10,
                                              vertical: 3,
                                            ),
                                            decoration: BoxDecoration(
                                              color: Colors.black,
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                            ),
                                            child: Row(
                                              children: [
                                                const Text(
                                                  'Repayment Rate: ',
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                Text(
                                                  '${userDataController.clusterDetails.value.repaymentRate!.toInt()}%',
                                                  style: const TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.yellow,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Obx(
                                          () => Container(
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 10,
                                              vertical: 3,
                                            ),
                                            decoration: BoxDecoration(
                                              color: Colors.black,
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                            ),
                                            child: Row(
                                              children: [
                                                const Text(
                                                  'Repayment Day: ',
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                Text(
                                                  'Every ${userDataController.clusterDetails.value.repaymentDay}',
                                                  style: const TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.green,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Flexible(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: Colors.grey[200],
                                        ),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          child: Image.network(
                                            'https://unsplash.com/photos/2EGNqazbAMk/download?ixid=MnwxMjA3fDB8MXxzZWFyY2h8MXx8YmxhY2slMjBndXl8ZW58MHx8fHwxNjQ2NDAzMzUw&force=true&w=640',
                                            height: 70,
                                            width: 70,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Divider(
                                color: Colors.white,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'Cluster Purse Balance',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 10,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Obx(
                                        () => Text(
                                          'N${userDataController.clusterDetails.value.clusterPurseBalance}',
                                          style: const TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Obx(
                                        () => Text(
                                          '+N${userDataController.clusterDetails.value.clusterPurseBalance} interest today',
                                          style: const TextStyle(
                                            fontSize: 11,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.green,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  ElevatedButton(
                                    onPressed: () {},
                                    child: const Text(
                                      'View Purse',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.deepOrangeAccent,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Divider(
                                color: Colors.white,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    'Total interest earned',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                  Obx(
                                    () => Text(
                                      'N${userDataController.clusterDetails.value.totalInterestEarned}',
                                      style: TextStyle(
                                        color: Colors.yellow.shade200,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Divider(
                                color: Colors.white,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    'Total owed by members',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    'N${userDataController.clusterDetails.value.totalInterestEarned}',
                                    style: const TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                        ),
                      ),
                      expandedHeight: 380.0,
                      bottom: PreferredSize(
                        preferredSize: const Size.fromHeight(50),
                        child: Container(
                          color: const Color.fromARGB(255, 241, 233, 234),
                          child: TabBar(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 0,
                            ),
                            labelColor: Colors.red,
                            unselectedLabelColor: Colors.black,
                            indicatorColor: Colors.red,
                            tabs: const [
                              Tab(
                                text: 'Members(9)',
                              ),
                              Tab(
                                text: 'Cluster details',
                              ),
                            ],
                            controller: controller,
                          ),
                        ),
                      ),
                    )
                  ];
                },
                body: TabBarView(
                  controller: controller,
                  children: [
                    MembersWidget(),
                    const ClusterSettings(),
                  ],
                ),
              ),
            ),
    );
  }
}
