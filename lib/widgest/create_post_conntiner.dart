import 'package:besocial/models/user_model.dart';
import 'package:besocial/widgest/widgets.dart';
import 'package:flutter/material.dart';

class CreatePostConntiner extends StatelessWidget {
  final User currentUser;

  const CreatePostConntiner({super.key, required this.currentUser});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.fromLTRB(12.0, 8.0, 12.0, 0.0),
        child: Column(children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(4, 8, 0, 8),
                child: ProfileAvatar(imageUrl: currentUser.imageurl),
              ),
              const SizedBox(width: 8.0),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.fromLTRB(4, 8, 8, 8),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'What\'s on your mind?',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                ),
              ))
            ],
          )
        ]));
  }
}


//  Container(
//         padding: const EdgeInsets.fromLTRB(12.0, 8.0, 12.0, 0.0),
//         child: Column(children: [
//           Row(
//             children: [
//               ProfileAvatar(imageUrl: currentUser.imageurl),
//               const SizedBox(width: 8.0),
//               Expanded(
//                   child: Padding(
//                 padding: const EdgeInsets.fromLTRB(4, 8, 8, 8),
//                 child: TextField(
//                   decoration: InputDecoration(
//                     hintText: 'What\'s on your mind?',
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(16),
//                     ),
//                   ),
//                 ),
//               ))
//             ],
//           )
//         ]));