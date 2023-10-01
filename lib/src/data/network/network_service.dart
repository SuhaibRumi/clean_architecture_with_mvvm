import 'dart:convert';
import 'dart:io';
import 'package:clean_architecture_with_mvvm/src/exceptions/exceptions.dart';
import 'package:http/http.dart%20';
import 'base_api_service.dart';
import 'package:http/http.dart' as http;

class NetworkApiService extends BaseApiService {

// For GetApiResponse Function!!!

 @override
  Future getGetApiResponse(String url) async {
    dynamic responseJson;

    try {

    final response =
    await http.get(Uri.parse(url)).timeout(const Duration(seconds: 10));
    responseJson = returnResponse(response);
    } 
    on SocketException {
    throw FatchDataException('No Internet Connection');
    }

    return responseJson;
  }


// For PostApiResponse Funcation!!!
  @override
  Future getPostApiResponse(String url, dynamic data) async {
    dynamic responseJson;

    try {

      Response response = await post(Uri.parse(url), body: data)
      .timeout(const Duration(seconds: 10));
      responseJson = returnResponse(response);
    } 
    on SocketException {
    throw FatchDataException('No Internet Connection');
    }

    return responseJson;

  }

   dynamic returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;
      case 400:
        throw BadException(response.body.toString());
      case 404:
        throw UnauthorisedException(response.body.toString());
      default:
        throw FatchDataException(
            'Error accured while communicating with server' +
                'with status code' +
                response.statusCode.toString());
    }
  }
}
