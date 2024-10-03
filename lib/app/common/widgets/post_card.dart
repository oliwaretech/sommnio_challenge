import 'package:flutter/material.dart';
import 'package:somnio_challenge/app/common/widgets/read_more_button.dart';
import 'package:somnio_challenge/app/core/theme/styles.dart';

class PostCard extends StatelessWidget {
  final String title, body, userId, image;
  const PostCard({super.key, required this.title, required this.body, required this.userId, required this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: postTitle,),
          SizedBox(height: 8),
          Text(body, style: postDescription),
          SizedBox(height: 16),
          Center(child: Image.network(image, height: 100,)),
          SizedBox(height: 8),
          ReadMoreButton(),
          SizedBox(height: 8),
          Divider(
            color: Colors.grey,
            thickness: 1,
          ),

        ]
      ),
    );
  }
}
