import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {

  List<Message> messagesList= [
    Message(text: 'Hola', fromWho: FromWho.me),
        Message(text: '¿Cómo estas?', fromWho: FromWho.me),


  ]; 

  Future<void> sendMessage (String text) async {
    final newMessage = Message(text: text, fromWho: FromWho.me); 
    messagesList.add(newMessage); 
    notifyListeners(); 
  }

}