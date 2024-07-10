import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {

final ScrollController chatScrollController = ScrollController(); 



  List<Message> messagesList= [
    Message(text: 'Hola', fromWho: FromWho.me),
        Message(text: '¿Cómo estas?', fromWho: FromWho.me),

  ]; 

  Future<void> sendMessage (String text) async {
    if(text.isEmpty) return; 
    final newMessage = Message(text: text, fromWho: FromWho.me); 
    messagesList.add(newMessage); 
    notifyListeners(); 
    moveScrollButtom(); 
  }


Future<void> moveScrollButtom()async{
await Future.delayed(const Duration(milliseconds: 100)); 



  chatScrollController.animateTo(
    chatScrollController.position.maxScrollExtent, 
    duration: const Duration(milliseconds: 300), 
    curve: Curves.easeOut); 
}
}