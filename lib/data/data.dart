import 'package:besocial/models/models.dart';

User currentUser = const User(
    name: 'YOU',
    id: 10,
    imageurl: 'assets/images/p2.jpg',
    bio: 'BeSocial at Amity Online',
    caption:
        'Hi #Learners! Your community Admin this side. \nI love curating this community with a passion of connection and growth.\nI embrace the magic of cinema, allure of knowledge and literature and a thrill of organizing community meetups. Join hands with me on this exciting journey ahead as we embark on an adventure of growth, discovery, and endless possibilities. Together, let\'s pave the way for new horizons and unforgettable experiences. #AdventureAwaits #TogetherWeRise\nWrite to me at community@amityonline.com');

final List<User> allUsers = [
  const User(
    bio: '',
    caption: '',
    id: 0,
    name: 'Kartik', //0
    imageurl: 'assets/images/p1.jpg',
  ),
  const User(
    bio: '',
    caption: '',
    id: 1,
    name: 'Kunal', //1
    imageurl: 'assets/images/p2.jpg',
  ),
  const User(
    bio: '',
    caption: '',
    id: 2,
    name: 'Mohit', //2
    imageurl: 'assets/images/p3.jpg',
  ),
  const User(
    bio: '',
    caption: '',
    id: 3,
    name: 'Ritesh', //3
    imageurl: 'assets/images/p4.jpg',
  ),
  const User(
    bio: '',
    caption: '',
    id: 4,
    name: 'Shivam', //4
    imageurl: 'assets/images/p5.jpg',
  ),
  const User(
    id: 5,
    bio: '',
    caption: '',
    name: 'Anup', //5
    imageurl: 'assets/images/p6.jpg',
  ),
  const User(
    bio: '',
    caption: '',
    id: 6,
    name: 'Devdas', //6
    imageurl: 'assets/images/p7.jpg',
  ),
  const User(
    bio: '',
    caption: '',
    id: 7,
    name: 'raju', //7
    imageurl: 'assets/images/p8.jpg',
  ),
  const User(
    bio: '',
    caption: '',
    id: 8,
    name: 'Avantika', //8
    imageurl: 'assets/images/p9.jpg',
  ),
  const User(
    bio: '',
    caption: '',
    id: 9,
    name: 'poonam', //9
    imageurl: 'assets/images/p10.jpg',
  ),
];

final List<Post> posts = [
  Post(
    user: allUsers[8],
    caption: 'Recap',
    timeAgo: '3 mins',
    imageurl: 'assets/images/m1.jpg',
    likes: 7,
    comments: 3,
    shares: 1,
  ),
  Post(
    user: allUsers[3],
    caption: 'Beaches <3',
    timeAgo: '58 mins',
    imageurl: 'assets/images/m2.jpg',
    likes: 16,
    comments: 4,
    shares: 2,
  ),
  Post(
    user: allUsers[7],
    caption: '😁😘',
    timeAgo: '1 hours',
    imageurl: 'assets/images/m3.jpg',
    likes: 20,
    comments: 18,
    shares: 9,
  ),
  Post(
    user: allUsers[0],
    caption: 'Cute ❤️',
    timeAgo: '3 Hours',
    imageurl: 'assets/images/m4.jpg',
    likes: 23,
    comments: 9,
    shares: 4,
  ),
  Post(
    user: allUsers[9],
    caption: 'Tommy is sleeping',
    timeAgo: '5 Hours',
    imageurl: 'assets/images/m5.jpg',
    likes: 26,
    comments: 4,
    shares: 1,
  ),
  Post(
    user: allUsers[1],
    caption: 'Nights like this <3',
    timeAgo: '5 Hours',
    imageurl: 'assets/images/m6.jpg',
    likes: 31,
    comments: 12,
    shares: 6,
  ),
  Post(
    user: allUsers[5],
    caption: 'Painting',
    timeAgo: '6 Hours',
    imageurl: 'assets/images/m7.jpg',
    likes: 36,
    comments: 11,
    shares: 2,
  ),
];

final List<FeatureUser> featureList = [
  FeatureUser(
    user: currentUser,
    posturl: 'assets/images/f1.jpg',
    caption: 'Enjoin my evening time \n in lake',
  ),
  FeatureUser(
    user: allUsers[3],
    posturl: 'assets/images/f2.jpg',
    caption: 'Damn this picture is \n fantastic',
  ),
  FeatureUser(
    user: allUsers[5],
    posturl: 'assets/images/f3.jpg',
    caption: 'My new pc setup',
  ),
  FeatureUser(
    user: allUsers[8],
    posturl: 'assets/images/f4.jpg',
    caption: 'Hangout with my school friends ',
  ),
  FeatureUser(
      user: allUsers[4],
      posturl: 'assets/images/f5.jpg',
      caption: 'I had this dish at my lunch \n it was great'),
];

final List<NotificationUser> notificationList = [
  NotificationUser(
    user: allUsers[8],
    timeAgo: '3 mins ago',
    caption: 'has created a post',
  ),
  NotificationUser(
    user: allUsers[3],
    timeAgo: '58 mins ago',
    caption: 'has created a post',
  ),
  NotificationUser(
    user: allUsers[7],
    timeAgo: '1 hours',
    caption: 'has created a post',
  ),
  NotificationUser(
    user: allUsers[0],
    timeAgo: '3 Hours',
    caption: 'has created a post',
  ),
  NotificationUser(
    user: allUsers[9],
    timeAgo: '5 Hours',
    caption: 'has created a post',
  ),
  NotificationUser(
    user: allUsers[1],
    timeAgo: '5 Hours',
    caption: 'has created a post',
  ),
  NotificationUser(
    user: allUsers[5],
    timeAgo: '6 Hours',
    caption: 'has created a post',
  ),
  NotificationUser(
    user: allUsers[2],
    timeAgo: '7 Hours',
    caption: 'has created a post',
  ),
  NotificationUser(
    user: allUsers[4],
    timeAgo: '9 Hours',
    caption: 'has created a post',
  ),
  NotificationUser(
    user: allUsers[2],
    timeAgo: '11 Hours',
    caption: 'has created a post',
  ),
  NotificationUser(
    user: allUsers[6],
    timeAgo: '12 Hours',
    caption: 'has created a post',
  )
];

final List<RecentMessage> recentmessageList = [
  RecentMessage(
      user: allUsers[6], timeago: '2 mins', lastmessage: 'Tommy has grown up'),
  RecentMessage(
      user: allUsers[0],
      timeago: '18 mins',
      lastmessage: 'Night party was good'),

       RecentMessage(
      user: allUsers[3],
      timeago: '34 mins',
      lastmessage: 'Meet you soon'),

       RecentMessage(
      user: allUsers[7],
      timeago: '18 mins',
      lastmessage: 'call me when your free'),
];
