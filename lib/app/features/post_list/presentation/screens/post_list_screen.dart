import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:somnio_challenge/app/common/widgets/post_tab.dart';
import 'package:somnio_challenge/app/core/theme/app_colors.dart';

import '../../../../core/theme/styles.dart';

class PostListScreen extends StatefulWidget {
  const PostListScreen({super.key});

  @override
  State<PostListScreen> createState() => _PostListScreenState();
}

class _PostListScreenState extends State<PostListScreen> {


  static const List<Tab> myTabs = <Tab>[
    Tab(text: 'My Post',height: 32,),
    Tab(text: 'Another thing',height: 32),
  ];

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        body: DefaultTabController(
          length: myTabs.length,
          child: NestedScrollView(
            headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
              return [
                SliverAppBar(
                  title: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('Blog', style: textTitle),
                      SizedBox(height: 4),
                      Text('Welcome to my Blog', style: textSubtitle),
                    ],
                  ),
                  floating: true,
                  snap: true,
                  pinned: true,
                  expandedHeight: 120.0,
                  bottom: TabBar(
                    indicatorColor: AppColors.black,
                    isScrollable: true,
                    padding: EdgeInsets.symmetric(vertical: 0),
                    indicatorPadding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 0),
                    dividerHeight: 0,
                    indicatorWeight: 4,
                    labelStyle: tabTitle,
                    indicatorSize: TabBarIndicatorSize.tab,
                    tabAlignment: TabAlignment.center,
                    labelColor: AppColors.black,
                    unselectedLabelColor: AppColors.gray,
                    tabs: myTabs,
                  ),
                ),
              ];
            },
            body: TabBarView(
              dragStartBehavior: DragStartBehavior.start,
              physics: BouncingScrollPhysics(), // Enable scrolling within the TabBarView
              children: [
                PostTab(), // Your PostTab with ListView.builder will now scroll smoothly
                Text('Another thing'), // Another tab's content
              ],
            ),
          ),
        ),
      );


  }
}
