import 'package:besocial/models/models.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  final RecentMessage recentMessage;

  const ChatScreen({super.key, required this.recentMessage});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${recentMessage.user.name}'),
      ),
    );
  }
}
