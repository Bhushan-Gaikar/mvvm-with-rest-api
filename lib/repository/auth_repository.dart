import 'dart:async';

import 'package:mvvm/data/network/BaseApiServices.dart';
import 'package:mvvm/data/network/NetworkApiService.dart';
import 'package:mvvm/res/app_url.dart';

class AuthRepository {
  BaseApiServices _apiServices = NetworkApiService();

  Future<dynamic> loginApi(dynamic data) async {
    try {
      dynamic response = await _apiServices
          .getPostApiResponse(AppUrl.loginUrl, data)
          .timeout(Duration(seconds: 30));
      return response;
    } on TimeoutException catch (e) {
      // Handle the timeout exception here
      print('TimeoutException: $e');
      // You can return a custom error message or handle it as per your requirement
      return {'error': 'Request timed out'};
    } catch (e) {
      rethrow;
    }
  }

  Future<dynamic> signUpApi(dynamic data) async {
    try {
      dynamic response = await _apiServices
          .getPostApiResponse(AppUrl.registerUrl, data)
          .timeout(Duration(seconds: 30));
      return response;
    } on TimeoutException catch (e) {
      // Handle the timeout exception here
      print('TimeoutException: $e');
      // You can return a custom error message or handle it as per your requirement
      return {'error': 'Request timed out'};
    } catch (e) {
      rethrow;
    }
  }
}
