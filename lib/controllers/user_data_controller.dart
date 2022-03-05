import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:moni/models/cluster_model.dart';
import 'package:moni/models/http_response.dart';
import 'package:moni/models/inactive_loans.dart';
import 'package:moni/services/api_services.dart';

import '../models/active_loans_model.dart';

class UserDataController extends GetxController {
  RxBool isLoading = false.obs;
  RxBool hasData = false.obs;

  var res = {}.obs;
  Rx<ClusterModel> clusterDetails = ClusterModel().obs;
  Rx<ActiveAgents> activeLoans = ActiveAgents().obs;
  Rx<InActiveAgents> inActiveLoans = InActiveAgents().obs;

  Future<HttpResponse> getUserData() async {
    var httpReponse = HttpResponse(
        message: "User data fetched successfully",
        success: true,
        statusCode: 200,
        data: true);

    try {
      isLoading(true);

      var response = await APIServices.getUserDetails();

      // print('Response data should be here');
      // print(response.data['data']);
      // print(response.data['data']);

      if (response.statusCode == 200) {
        httpReponse.success = true;

        res.value = response.data['data'] ?? '';

        clusterDetails.value = ClusterModel.fromJson(response.data['data']);

        activeLoans.value = ActiveAgents.fromJson(
          response.data['data'],
        );
        inActiveLoans.value = InActiveAgents.fromJson(response.data['data']);

        hasData(true);
      } else {
        httpReponse.success = false;
        httpReponse.message = "Something went wrong";
      }

      isLoading(false);
      return httpReponse;
    } on DioError catch (error) {
      var message = error.response?.statusMessage.toString();
      isLoading(false);

      return HttpResponse(
        message: message ?? "Couldn't get user details.",
        success: false,
        statusCode: 400,
        data: false,
      );
    }
  }
}
