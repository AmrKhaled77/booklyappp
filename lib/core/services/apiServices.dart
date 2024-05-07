import 'package:dio/dio.dart';

class ApiServices{
  final Dio _dio=Dio();
  final  _baseUrl="https://www.googleapis.com/books/v1";


  Future<Response> get({required String endPoints})async{

  var response = await  _dio.get('$_baseUrl$endPoints');
  return response;
  }

  

}