import 'package:besocial/data/data.dart';
import 'package:besocial/models/models.dart';
import 'package:besocial/screens/screens.dart';
import 'package:besocial/widgest/widgets.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            elevation: 15,
            // backgroundColor: Colors.white,
            title: const Text(
              'SocialNest',
              style: TextStyle(
                fontSize: 28,
                letterSpacing: -1,
                fontWeight: FontWeight.bold,
              ),
            ),
            centerTitle: false,
            floating: true,
            actions: [
              CircleButton(
                  icon: Icons.notifications,
                  iconsize: 30,
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const NotificationScreen()));
                  }),
              CircleButton(
                  icon: Icons.message,
                  iconsize: 30,
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const MessageScreen()));
                  }),
            ],
          ),
          SliverToBoxAdapter(
              child: CreatePostConntiner(currentUser: currentUser)),
          const SliverPadding(
            padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
            sliver: SliverToBoxAdapter(
              child: Fetured(),
            ),
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate(childCount: posts.length,
                  (context, index) {
            final Post post = posts[index];
            return Postcontiner(
              post: post,
            );
          }))
        ],
      ),
    );
  }
}
