import 'package:social_media_app/post_model.dart';
import 'package:social_media_app/user_model.dart';

// Posts
final _post0 = Post(
  imageUrl: 'assets/post0.jpg',
  title: 'Post 0',
  location: 'Location 0',
  likes: 102,
  comments: 37,
);
final _post1 = Post(
  imageUrl: 'assets/post1.jpg',
  title: 'Post 1',
  location: 'Location 1',
  likes: 532,
  comments: 129,
);
final _post2 = Post(
  imageUrl: 'assets/post2.jpg',
  title: 'Post 2',
  location: 'Location 2',
  likes: 985,
  comments: 213,
);
final _post3 = Post(
  imageUrl: 'assets/post3.jpg',
  title: 'Post 3',
  location: 'Location 3',
  likes: 402,
  comments: 25,
);
final _post4 = Post(
  imageUrl: 'assets/post4.jpg',
  title: 'Post 4',
  location: 'Location 4',
  likes: 628,
  comments: 74,
);
final _post5 = Post(
  imageUrl: 'assets/post5.jpg',
  title: 'Post 5',
  location: 'Location 5',
  likes: 299,
  comments: 28,
);

final posts = [_post0, _post1, _post2, _post3, _post4, _post5];

final _yourPosts = [_post1, _post3, _post5];
final _yourFavorites = [_post0, _post2, _post4];

// Current User
final CurrentUser currentUser1 = CurrentUser(
  profileImageUrl: 'assets/user0.jpg',
  backgroundImageUrl: 'assets/user_background.jpg',
  name: 'Rebecca',
  following: 453,
  followers: 937,
  posts: _yourPosts,
  favorites: _yourFavorites,
);

final CurrentUser currentUser2 = CurrentUser(
  profileImageUrl: 'assets/user.jpg',
  backgroundImageUrl: 'assets/user_background.jpg',
  name: 'Rebecca',
  following: 453,
  followers: 937,
  posts: _yourPosts,
  favorites: _yourFavorites,
);

final CurrentUser currentUser3 = CurrentUser(
  profileImageUrl: 'assets/user.jpg',
  backgroundImageUrl: 'assets/user_background.jpg',
  name: 'Rebecca',
  following: 453,
  followers: 937,
  posts: _yourPosts,
  favorites: _yourFavorites,
);

final CurrentUser currentUser4 = CurrentUser(
  profileImageUrl: 'assets/user.jpg',
  backgroundImageUrl: 'assets/user_background.jpg',
  name: 'Rebecca',
  following: 453,
  followers: 937,
  posts: _yourPosts,
  favorites: _yourFavorites,
);

final CurrentUser currentUser5 = CurrentUser(
  profileImageUrl: 'assets/user.jpg',
  backgroundImageUrl: 'assets/user_background.jpg',
  name: 'Rebecca',
  following: 453,
  followers: 937,
  posts: _yourPosts,
  favorites: _yourFavorites,
);

final CurrentUser currentUser6 = CurrentUser(
  profileImageUrl: 'assets/user.jpg',
  backgroundImageUrl: 'assets/user_background.jpg',
  name: 'Rebecca',
  following: 453,
  followers: 937,
  posts: _yourPosts,
  favorites: _yourFavorites,
);

final usersAll = [
  NewUser(profileImageUrl: 'assets/user0.jpg'),
  NewUser(profileImageUrl: 'assets/user1.jpg'),
  NewUser(profileImageUrl: 'assets/user2.jpg'),
  NewUser(profileImageUrl: 'assets/user3.jpg'),
  NewUser(profileImageUrl: 'assets/user4.jpg'),
  NewUser(profileImageUrl: 'assets/user5.jpg'),
  NewUser(profileImageUrl: 'assets/user6.jpg'),
];
