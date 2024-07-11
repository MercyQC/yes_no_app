import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no_app/domain/entities/message.dart';
import 'package:yes_no_app/presentation/providers/chat_provider.dart';
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

final chatProvider = context.watch<ChatProvider>(); 


    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(child: ListView.builder(
              controller: chatProvider.chatScrollController,
              itemCount: chatProvider.messagesList.length,
              itemBuilder: (BuildContext context, int index) {
                final message = chatProvider.messagesList[index];

                return(message.fromWho == FromWho.hers)
                ? HerMessageBubble(message : message)
                : MyMessageBubble(message : message );},),),       

               /// Caja de texto de mensajes
                 MessageFieldBox(onValue: (value) => chatProvider.sendMessage(value),), 
          ],
        ),
      ),
    );
  }
}