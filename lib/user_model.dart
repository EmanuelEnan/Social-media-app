import 'package:social_media_app/post_model.dart';

class CurrentUser {
  final String profileImageUrl;
  final String backgroundImageUrl;
  final String name;
  final int following;
  final int followers;
  final List<Post> posts;
  final List<Post> favorites;

  CurrentUser({
    required this.profileImageUrl,
    required this.backgroundImageUrl,
    required this.name,
    required this.following,
    required this.followers,
    required this.posts,
    required this.favorites,
  });
}

class NewUser {
  final String profileImageUrl;

  NewUser({
    required this.profileImageUrl,
  });
}
