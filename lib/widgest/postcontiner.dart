import 'package:besocial/models/models.dart';
import 'package:besocial/widgest/widgets.dart';
import 'package:flutter/material.dart';

class Postcontiner extends StatelessWidget {
  final Post post;

  const Postcontiner({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  _PostHeader(post: post),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(post.caption),
                  post.imageurl != null
                      ? const SizedBox.shrink()
                      : const SizedBox(
                          height: 6,
                        )
                ],
              ),
            ),
            post.imageurl != null
                ? Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Image.asset(post.imageurl),
                  )
                : const SizedBox.shrink(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: _PostStats(post: post),
            )
          ],
        ),
      ),
    );
  }
}

class _PostHeader extends StatelessWidget {
  final Post post;
  const _PostHeader({required this.post});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(children: [
          ProfileAvatar(
            imageUrl: post.user.imageurl,
          ),
          const SizedBox(
            width: 8,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                post.user.name,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                ),
              ),
              Row(
                children: [
                  Text(
                    '${post.timeAgo} - ',
                    style: const TextStyle(
                      // color: Colors.grey[600],
                      fontSize: 12,
                    ),
                  ),
                  const Icon(
                    Icons.public,
                    // color: Colors.grey[600],
                    size: 12,
                  ),
                ],
              )
            ],
          ),
        ]),
        const Padding(
          padding: EdgeInsets.fromLTRB(0, 0, 8, 0),
          child: Icon(Icons.more_horiz),
        )
      ],
    );
  }
}

class _PostStats extends StatelessWidget {
  final Post post;

  const _PostStats({required this.post});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              padding: const EdgeInsets.all(8.0),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.thumb_up,
                size: 20.0,
                // color: Colors.white,
              ),
            ),
            const SizedBox(width: 4.0),
            Expanded(
              child: Text(
                '${post.likes}',
                style: const TextStyle(
                    // color: Colors.grey[600],
                    ),
              ),
            ),
            Text(
              '${post.comments} Comments',
              style: const TextStyle(
                  // color: Colors.grey[600],
                  ),
            ),
            const SizedBox(width: 8.0),
            Text(
              '${post.shares} Shares',
              style: const TextStyle(
                  // color: Colors.grey[600],
                  ),
            )
          ],
        ),
        const Divider(),
        Row(
          children: [
            _PostButton(
              icon: const Icon(
                Icons.thumb_up,
                // color: Colors.grey[600],
                size: 15.0,
              ),
              label: 'Like',
              onTap: () {},
            ),
            _PostButton(
              icon: const Icon(
                Icons.comment,
                // color: Colors.grey[600],
                size: 15,
              ),
              label: 'Comment',
              onTap: () {},
            ),
            _PostButton(
              icon: const Icon(
                Icons.share,
                // color: Colors.grey[600],
                size: 15.0,
              ),
              label: 'Share',
              onTap: () {},
            )
          ],
        ),
      ],
    );
  }
}

class _PostButton extends StatelessWidget {
  final Icon icon;
  final String label;
  final VoidCallback onTap;

  const _PostButton(
      {required this.icon, required this.label, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      // child: Material(
      // color: Colors.white,
      child: InkWell(
        // splashFactory: NoSplash.splashFactory,
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Card(
            // height: 25.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                icon,
                const SizedBox(width: 4.0),
                Text(label),
              ],
            ),
          ),
        ),
      ),
    );
    // );
  }
}
