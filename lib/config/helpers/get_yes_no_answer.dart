import 'package:dio/dio.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class GetYesNoAnswer{

  final _dio = Dio(); 
  Future<Message> getAnswer()async{

    final response = await _dio.get('https://yesno.wtf/assets/yes/14-b57c6dc03aa15a4b18f53eb50d6197ee.gif'); 


    throw UnimplementedError(); 
  }
} 