import 'package:besocial/data/data.dart';
import 'package:besocial/models/recent_message_module.dart';
import 'package:besocial/screens/screens.dart';
import 'package:besocial/widgest/widgets.dart';
import 'package:flutter/material.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Messages',
          style: TextStyle(
            fontSize: 28,
            letterSpacing: -1,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView.builder(
          itemCount: recentmessageList.length,
          itemBuilder: (BuildContext context, int index) {
            final RecentMessage recentMessage = recentmessageList[index];
            return GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ChatScreen(
                          recentMessage: recentMessage,
                        )));
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        ProfileAvatar(imageUrl: recentMessage.user.imageurl),
                        const SizedBox(
                          width: 8,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '${recentMessage.user.name}',
                              style: const TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(
                              height: 1,
                            ),
                            Text(
                              '${recentMessage.lastmessage}',
                              style: const TextStyle(fontSize: 15),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                      child: Text('${recentMessage.timeago}'),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}


  // appBar: AppBar(
  //       title: const Text('Messages'),
  //       centerTitle: true,
  //     ),
  //     body: ListView.builder(itemBuilder: (BuildContext context, int index) {
  //       final RecentMessage recentMessage = recentmessageList[index];
  //       return Card(
  //         child: Column(children: [
  //           Row(
  //             children: [
  //               ProfileAvatar(imageUrl: recentMessage.user.imageurl),
  //               const SizedBox(
  //                 width: 8,
  //               ),
  //               Text('${recentMessage.user.name}')
  //             ],
  //           ),
  //           SizedBox(
  //             height: 8,
  //           ),
  //           Text('${recentMessage.lastmessage}'),
  //           Expanded(child: Text('${recentMessage.timeago}'))
  //         ]),
  //       );
  //     }),


    //   Scaffold(
    //   body: CustomScrollView(slivers: [
    //     const SliverAppBar(
    //       // backgroundColor: Colors.white,
    //       title: Text(
    //         'Messages',
    //         style: TextStyle(
    //           fontSize: 28,
    //           letterSpacing: -1,
    //           fontWeight: FontWeight.bold,
    //         ),
    //       ),
    //       centerTitle: false,
    //       floating: true,
    //     ),
    //     SliverList(
    //         delegate: SliverChildBuilderDelegate(
    //             childCount: recentmessageList.length, (context, index) {
    //       final RecentMessage recentMessage = recentmessageList[index];
    //       return Padding(
    //         padding: const EdgeInsets.all(8.0),
    //         child: Column(
    //           crossAxisAlignment: CrossAxisAlignment.end,
    //           children: [
    //             Row(
    //               children: [
    //                 ProfileAvatar(imageUrl: recentMessage.user.imageurl),
    //                 const SizedBox(
    //                   width: 8,
    //                 ),
    //                 Column(
    //                   crossAxisAlignment: CrossAxisAlignment.start,
    //                   children: [
    //                     Text(
    //                       '${recentMessage.user.name}',
    //                       style: const TextStyle(
    //                         fontSize: 17,
    //                         fontWeight: FontWeight.w500,
    //                       ),
    //                     ),
    //                     const SizedBox(
    //                       height: 1,
    //                     ),
    //                     Text(
    //                       '${recentMessage.lastmessage}',
    //                       style: const TextStyle(fontSize: 15),
    //                     ),
    //                   ],
    //                 ),
    //                 Padding(
    //                   padding: const EdgeInsets.fromLTRB(26, 18, 0, 0),
    //                   child: Text('${recentMessage.timeago}'),
    //                 )
    //               ],
    //             ),
    //           ],
    //         ),
    //       );
    //     }))
    //   ]),
    // );