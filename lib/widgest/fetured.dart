import 'dart:math';

import 'package:besocial/data/data.dart';
import 'package:besocial/models/models.dart';
import 'package:besocial/widgest/profile_avatar.dart';
import 'package:flutter/material.dart';

class Fetured extends StatelessWidget {
  const Fetured({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: SizedBox(
        height: 250,
        child: ListView.builder(
            itemCount: featureList.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              final FeatureUser featureUser = featureList[index];
              return Card(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        featureUser.posturl,
                        scale: sqrt(12),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                        '${featureUser.caption}',
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(
                        height: 1,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 8, 2, 4),
                            child: ProfileAvatar(
                                imageUrl: featureUser.user.imageurl),
                          ),
                          Text(
                            '${featureUser.user.name}',
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
