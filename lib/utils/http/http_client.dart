import 'dart:convert';

import 'package:camera/camera.dart';
import 'package:dio/dio.dart' ;

class EHttpHelper {
  static const String _baseUrl =
      'http://192.168.18.46:3808'; // Replace with your API base URL
  static final dio = Dio();
  // Helper method to make a GET request

  static Future<Map<String, dynamic>> get(String endpoint) async {
    final response = await dio.get('$_baseUrl/$endpoint');
    return _handleResponse(response);
  }

  // Helper method to make a POST request
  static Future<Map<String, dynamic>> post(String endpoint, XFile data) async {
    try {
      final dio = Dio();
      final formData = FormData.fromMap({
        'image': await MultipartFile.fromFile(data.path,
            filename: data.path.split('/').last),
      });

      final response = await dio.post('$_baseUrl/$endpoint', data: formData);

      // Handle response status code
      if (response.statusCode == 200) {
        // Parse the response data and return it
        return await _handleResponse(response);
      } else {
        // Handle non-200 status code
        throw Exception('Failed to load data: ${response.statusCode}');
      }
    } catch (e) {
      // Handle any exceptions that occur during the request
      print('Error during HTTP request: $e');
      throw e; // Rethrow the exception to propagate it upwards
    }
  }


  // Helper method to make a PUT request
  static Future<Map<String, dynamic>> put(String endpoint, dynamic data) async {
    final response = await dio.put(
      '$_baseUrl/$endpoint',
      data: data,
    );
    return _handleResponse(response);
  }

  // Helper method to make a DELETE request
  static Future<Map<String, dynamic>> delete(String endpoint) async {
    final response = await dio.delete('$_baseUrl/$endpoint');
    return _handleResponse(response);
  }

  // Handle the HTTP response
  static dynamic _handleResponse(Response response) {
    if (response.statusCode == 200) {
      // Parse the response data as JSON
      dynamic responseData = jsonDecode(response.data);
      return responseData;
    } else {
      // If the response status code is not 200, handle the error accordingly
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  }


}
