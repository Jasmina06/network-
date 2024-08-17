// import 'package:http/http.dart' as http;
// import 'dart:convert';
//
// class ApiService {
//   // Base URL for the API
//   final String _baseUrl = 'jasmina.araltech.tech';
//
//   // Constructor
//   ApiService();
//
//   Future<bool> authenticate(String email, String password) async {
//     var url = Uri.https('genContractor.com', '/api/authenticate');
//     try {
//       var response = await http.post(
//         url,
//         headers: {'Content-Type': 'application/json'},
//         body: jsonEncode({'email': email, 'password': password}),
//       );
//       if (response.statusCode == 200) {
//         var data = jsonDecode(response.body);
//         // Assume the response contains a field that indicates success
//         return data['success'];
//       } else {
//         throw Exception('Failed to authenticate');
//       }
//     } catch (e) {
//       throw Exception('Error: $e');
//     }
//   }
//
//
//   // Function to perform GET requests
//   Future<dynamic> getData(String endpoint) async {
//     var url = Uri.https(_baseUrl, endpoint);
//     try {
//       var response = await http.get(url);
//       if (response.statusCode == 200) {
//         return jsonDecode(response.body);
//       } else {
//         throw Exception('Failed to load data: ${response.statusCode}');
//       }
//     } catch (e) {
//       throw Exception('Error: $e');
//     }
//   }
//
//   // Function to perform POST requests
//   Future<void> postData(String endpoint, Map<String, dynamic> data) async {
//     var url = Uri.https(_baseUrl, endpoint);
//     try {
//       var response = await http.post(
//         url,
//         headers: {'Content-Type': 'application/json'},
//         body: jsonEncode(data),
//       );
//       if (response.statusCode != 201) {
//         throw Exception('Failed to post data: ${response.statusCode}');
//       }
//     } catch (e) {
//       throw Exception('Error: $e');
//     }
//   }
//
//   // Function to perform PUT requests
//   Future<void> updateData(String endpoint, Map<String, dynamic> data) async {
//     var url = Uri.https(_baseUrl, endpoint);
//     try {
//       var response = await http.put(
//         url,
//         headers: {'Content-Type': 'application/json'},
//         body: jsonEncode(data),
//       );
//       if (response.statusCode != 200) {
//         throw Exception('Failed to update data: ${response.statusCode}');
//       }
//     } catch (e) {
//       throw Exception('Error: $e');
//     }
//   }
//
//   // Function to perform DELETE requests
//   Future<void> deleteData(String endpoint) async {
//     var url = Uri.https(_baseUrl, endpoint);
//     try {
//       var response = await http.delete(url);
//       if (response.statusCode != 200) {
//         throw Exception('Failed to delete data: ${response.statusCode}');
//       }
//     } catch (e) {
//       throw Exception('Error: $e');
//     }
//   }
// }
