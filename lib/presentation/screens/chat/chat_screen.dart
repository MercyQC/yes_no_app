import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/widgets/chat/her_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/chat/my_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen ({super.key}); 



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(3.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage('https://media.vogue.mx/photos/65806805c586b9bda078f42a/2:3/w_960,c_limit/selena-gomez-portada-de-vogue.jpg'),
          ),
        ),
        title: const Text ('Sel'),      
      centerTitle: false,
      ),
      body: _ChatView(), 
    ); 
  }

}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(child: ListView.builder(
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return (index % 2 == 0)
                ?const HerMessageBubble()
                : const MyMessageBubble();},),
                ),        



                /// Caja de texto de mensajes
                const MessageFieldBox(), 
          ],
        ),
      ),
    );
  }
}