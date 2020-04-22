import 'package:top10flutterwid/constants/Demo_Model.dart';
import 'package:http/http.dart' as http;
import 'dart:async';

String url = 'https://jsonplaceholder.typicode.com/posts';

///Method for GET Request
Future<Demo> getDemoResponse() async{
  final response = await http.get('$url/1');
  return responseFromJson(response.body);
}

///Method for POST Request
//Future<http.Response> createResponse(Demo demo) async{
//  final response = await http.post('$url',
//      headers: {
//        HttpHeaders.contentTypeHeader: 'application/json',
//        HttpHeaders.authorizationHeader : ''
//      },
//      body: responseToJson(demo)
//  );
//  return response;
//}