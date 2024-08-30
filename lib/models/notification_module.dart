import 'package:besocial/models/models.dart';

class NotificationUser {
  final User user;
  final String timeAgo;
  final String caption;

  NotificationUser({
    required this.user,
    required this.timeAgo,
    required this.caption,
  });
}
