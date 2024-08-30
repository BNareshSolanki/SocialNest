import 'package:besocial/data/data.dart';
import 'package:besocial/models/notification_module.dart';

import 'package:besocial/widgest/widgets.dart';

import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(slivers: [
      const SliverAppBar(
        // backgroundColor: Colors.white,
        title: Text(
          'Notification',
          style: TextStyle(
            fontSize: 28,
            letterSpacing: -1,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: false,
        floating: true,
      ),
      SliverList(
          delegate: SliverChildBuilderDelegate(
              childCount: notificationList.length, (context, index) {
        final NotificationUser notificationUser = notificationList[index];
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              ProfileAvatar(imageUrl: notificationUser.user.imageurl),
              const SizedBox(
                width: 8,
              ),
              Text(
                '${notificationUser.user.name}'
                ' '
                '${notificationUser.caption}',
                style:
                    const TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
              ),
              const SizedBox(
                width: 8,
              ),
              Expanded(
                child: Text(
                  '${notificationUser.timeAgo} ',
                  style: const TextStyle(
                    fontSize: 13,
                  ),
                ),
              ),
            ],
          ),
        );
      }))
    ]));
  }
}
