import 'package:besocial/models/models.dart';

class UserProfile {
  final User user;
  final String caption;
  final String bio;

  UserProfile({required this.user, required this.bio, required this.caption});
}
