import 'package:besocial/models/models.dart';

class RecentMessage {
  final User user;
  final String timeago;
  final String lastmessage;

  RecentMessage(
      {required this.user, required this.timeago, required this.lastmessage});
}
