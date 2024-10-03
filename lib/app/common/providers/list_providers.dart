import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/my_post.dart';
import '../utils.dart';

final postProvider = FutureProvider<List<MyPost>>((ref) async {
  return fetchPosts();
});