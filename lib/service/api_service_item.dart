import 'package:dio/dio.dart';
import 'package:testflutter/config/constants.dart';
import 'package:testflutter/helper/network_helper.dart';

class ApiServiceItem {
  static final NetworkHelper _dio = NetworkHelper();

  Future<Response> getData() async {
    var response = _dio.get(
      '${BASE_API}api/item/3',
      // '${BASE_API}api/me/users',
    );
    try {
      return response;
    } on DioError {
      return response;
    }
  }
}
