import 'package:dio/dio.dart';
import 'package:yes_no_app/domain/entities/message.dart';
import 'package:yes_no_app/Infraestructure/models/yes_no_model.dart';

class GetYesNoAnswer{

  final _dio = Dio(); 
  Future<Message> getAnswer()async{

    final response = await _dio.get('https://yesno.wtf/assets/yes/14-b57c6dc03aa15a4b18f53eb50d6197ee.gif'); 

final yesNoModel = YesNoModel.fromJsonMap(response.data);  


return Message(
  text: yesNoModel.answer,
  fromWho: FromWho.hers,
  imgUrl: yesNoModel.image); 
  }
} 