import 'package:dio/dio.dart';

class APIServices {
  static Dio dio = Dio();

  static Future getUserDetails() async {
    try {
      // dynamic token = await getToken();
      dynamic response = await dio.get(
        'https://moni-staging-1.vercel.app/api/loans',
      );

      return response;
    } on DioError catch (error) {
      return error.response;
    }
  }
}
