class GetApiService {
//   Future<dynamic> getApi(String url) async {
//     try {
//       final uri = Uri.parse(url);
//       final response = await http
//           .get(uri)
//           .timeout(Duration(seconds: NetworkConstants.getApiTimeoutDuration));
//       returnResponse(response);
//     } on SocketException {
//       throw SocketException("No Internet!");
//     } on TimeoutException {
//       throw TimeoutException("Request Timed out!");
//     } catch (e) {
//       AppException("An Unknown Error Occured");
//     }
//   }

// // Checks repsonse and handle accordingly
//   dynamic returnResponse(http.Response response) {
//     switch (response.statusCode) {
//       case NetworkConstants.successCode:
//         dynamic jsonResponse = jsonDecode(response.body);
//         return jsonResponse;
//       case NetworkConstants.failureCode:
//         dynamic jsonResponse = jsonDecode(response.body);
//         return jsonResponse;
//       case NetworkConstants.serverErrorCode:
//         throw ServerException();
//     }
//   }
}
