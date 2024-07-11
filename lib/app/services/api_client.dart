import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:softbd_task/app/data/models/network_response.dart';

class ApiClient {
  Future<NetworkResponse> getRequest(String url, {String? token}) async {
    try {
      log(url);
      log(token.toString());

      final response = await http.get(
        Uri.parse(url),
        headers: {
          'Content-Type': 'application/json',
          if (token != null) 'Authorization': 'Bearer $token',
        },
      );

      if (response.statusCode >= 200 && response.statusCode < 300) {
        return NetworkResponse(
          statusCode: response.statusCode,
          isSuccess: true,
          jsonResponse: response.body,
        );
      } else {
        return NetworkResponse(
          statusCode: response.statusCode,
          isSuccess: false,
          message: 'Error: ${response.reasonPhrase}',
        );
      }
    } catch (e) {
      log('Error: $e');
      return NetworkResponse(
        isSuccess: false,
        message: 'Exception: $e',
      );
    }
  }
}
