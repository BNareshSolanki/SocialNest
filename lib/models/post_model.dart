import 'user_model.dart';

class Post {
  final User user;
  final String caption;
  final String timeAgo;
  final String imageurl;
  final int likes;
  final int comments;
  final int shares;

  const Post({
    required this.user,
    required this.caption,
    required this.timeAgo,
    required this.imageurl,
    required this.likes,
    required this.comments,
    required this.shares,
  });
}
