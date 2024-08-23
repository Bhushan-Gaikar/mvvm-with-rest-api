import 'package:http/http.dart' as http;
abstract class BaseApiServices {
  Future<dynamic> getGetApiResponse(String url) async {
    try {
      return await http.get(Uri.parse(url)).timeout(const Duration(seconds: 30));
    } catch (e) {
      print('Error: $e');
      rethrow;
    }
  }

  Future<dynamic> getPostApiResponse(String url, dynamic data) async {
    try {
      return await http.post(Uri.parse(url), body: data).timeout(const Duration(seconds: 30));
    } catch (e) {
      print('Error: $e');
      rethrow;
    }
  }
}