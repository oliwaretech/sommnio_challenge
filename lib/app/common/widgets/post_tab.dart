import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:somnio_challenge/app/common/widgets/post_card.dart';

import '../providers/list_providers.dart';

class PostTab extends ConsumerWidget {
  const PostTab({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final postAsyncValue = ref.watch(postProvider);

    return postAsyncValue.when(
        data: (posts) {
      return ListView.builder(
        itemCount: posts.length,
        itemBuilder: (context, index) {
          final post = posts[index];
          return PostCard(
            title: post.title,
            body: post.body,
            userId: post.userId.toString(),
            image: 'https://www.daily.co/blog/content/images/2023/07/Flutter-feature.png',
          );
        },
      );
    },
    loading: () => Center(child: CircularProgressIndicator()),
    error: (error, stack) => Center(child: Text('Failed to load posts')),
    );
  }
}
