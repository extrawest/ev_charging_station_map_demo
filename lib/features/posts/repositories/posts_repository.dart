import 'package:samoilenko_maps_app/features/posts/models/post.dart';

import '../services/services.dart';

abstract class PostsRepository {
  final PostsApiService postsApiService;

  PostsRepository(this.postsApiService);

  Future<List<Post>> fetchPosts({int startIndex});
}

class PostsRepositoryImpl implements PostsRepository {
  @override
  final PostsApiService postsApiService;

  PostsRepositoryImpl({required this.postsApiService});

  @override
  Future<List<Post>> fetchPosts({int startIndex = 0}) async {
    return await postsApiService.fetchPosts(startIndex: startIndex);
  }
}
