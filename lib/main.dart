import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'messageScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter ClubHouse UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(backgroundColor: Palette.background),
        scaffoldBackgroundColor: Palette.background,
        primaryColor: Colors.white,
        accentColor: Palette.green,
        iconTheme: const IconThemeData(
          color: Colors.black,
          size: 30,
        ),
        fontFamily: GoogleFonts.montserrat().fontFamily,
        textTheme: GoogleFonts.montserratTextTheme(),
      ),
      home: HomeScreen(),
    );
  }
}

class Palette {
  static const Color background = Color(0xFFF0F0E4);
  static const Color secondaryBackground = Color(0xFFE7E4D3);
  static const Color green = Color(0xFF2AAF61);
}

class User {
  final String givenName;
  final String familyName;
  final String imageUrl;

  const User({
    required this.givenName,
    required this.familyName,
    required this.imageUrl,
  });
}

const User currentUser = User(
  givenName: 'Marcus',
  familyName: 'Ng',
  imageUrl:
      'https://images.unsplash.com/photo-1578133671540-edad0b3d689e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1351&q=80',
);

const List<User> _allUsers = [
  User(
    givenName: 'Marcus',
    familyName: 'Ng',
    imageUrl:
        'https://images.unsplash.com/photo-1578133671540-edad0b3d689e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1351&q=80',
  ),
  User(
    givenName: 'David',
    familyName: 'Brooks',
    imageUrl:
        'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
  ),
  User(
    givenName: 'Jane',
    familyName: 'Doe',
    imageUrl:
        'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
  ),
  User(
    givenName: 'Matthew',
    familyName: 'Hinkle',
    imageUrl:
        'https://images.unsplash.com/photo-1492562080023-ab3db95bfbce?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1331&q=80',
  ),
  User(
    givenName: 'Amy',
    familyName: 'Smith',
    imageUrl:
        'https://images.unsplash.com/photo-1534528741775-53994a69daeb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=700&q=80',
  ),
  User(
    givenName: 'Ed',
    familyName: 'Morris',
    imageUrl:
        'https://images.unsplash.com/photo-1521119989659-a83eee488004?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=664&q=80',
  ),
  User(
    givenName: 'Carolyn',
    familyName: 'Duncan',
    imageUrl:
        'https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
  ),
  User(
    givenName: 'Paul',
    familyName: 'Pinnock',
    imageUrl:
        'https://images.unsplash.com/photo-1519631128182-433895475ffe?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80',
  ),
  User(
      givenName: 'Elizabeth',
      familyName: 'Wong',
      imageUrl:
          'https://images.unsplash.com/photo-1515077678510-ce3bdf418862?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjF9&auto=format&fit=crop&w=675&q=80'),
  User(
    givenName: 'James',
    familyName: 'Lathrop',
    imageUrl:
        'https://images.unsplash.com/photo-1528892952291-009c663ce843?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=592&q=80',
  ),
  User(
    givenName: 'Jessie',
    familyName: 'Samson',
    imageUrl:
        'https://images.unsplash.com/photo-1517841905240-472988babdf9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
  ),
];

class Room {
  final String club;
  final String name;
  final String time;
  final List<User> speakers;
  final List<User> followedBySpeakers;
  final List<User> others;

  const Room({
    required this.club,
    required this.name,
    this.time = '',
    this.speakers = const [],
    this.followedBySpeakers = const [],
    this.others = const [],
  });
}

const List<Room> upcomingRoomsList = [
  Room(
    club: 'Flutter',
    name: 'Flutter Engage Recap 🔴',
    time: '3:00 PM',
  ),
  Room(
    club: 'New User Onboarding',
    name: 'Welcome to Clubhouse 👋',
    time: '7:00 PM',
  ),
  Room(
    club: '',
    name: 'Clubhouse Turns 1',
    time: '9:00 PM',
  ),
];

final List<Room> roomsList = [
  Room(
    club: 'Social Society',
    name: 'Welcome to Clubhouse 🎉 (Walkthrough with Q&A)',
    speakers: (List<User>.from(_allUsers)..shuffle()).getRange(0, 4).toList(),
    followedBySpeakers: List<User>.from(_allUsers)..shuffle(),
    others: List<User>.from(_allUsers)..shuffle(),
  ),
  Room(
    club: 'Good Time',
    name: '⏰ A Very Important Person on Good Time',
    speakers: (List<User>.from(_allUsers)..shuffle()).getRange(0, 4).toList(),
    followedBySpeakers: List<User>.from(_allUsers)..shuffle(),
    others: List<User>.from(_allUsers)..shuffle(),
  ),
  Room(
    club: 'NYU girls roasting tech guys',
    name: 'love and bitcoin edition 💰',
    speakers: (List<User>.from(_allUsers)..shuffle()).getRange(0, 4).toList(),
    followedBySpeakers: List<User>.from(_allUsers)..shuffle(),
    others: List<User>.from(_allUsers)..shuffle(),
  ),
];

class BackChannelRoom {
  final String profileImageUrl;
  final String name;
  final String message;
  final String timestamp;

  const BackChannelRoom({
    required this.profileImageUrl,
    required this.name,
    required this.message,
    required this.timestamp,
  });
}

final List<BackChannelRoom> backChannelRoomsList = [
  BackChannelRoom(
    profileImageUrl:
        'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
    name: 'Jane Doe',
    message: 'You: Hello!',
    timestamp: '9:58 PM',
  ),
  BackChannelRoom(
    profileImageUrl:
        'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
    name: 'Jane Doe',
    message: 'You: Hello!',
    timestamp: '9:58 PM',
  ),
  BackChannelRoom(
    profileImageUrl:
        'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
    name: 'Jane Doe',
    message: 'You: Hello!',
    timestamp: '9:58 PM',
  ),
  BackChannelRoom(
    profileImageUrl:
        'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
    name: 'Jane Doe',
    message: 'You: Hello!',
    timestamp: '9:58 PM',
  ),
  BackChannelRoom(
    profileImageUrl:
        'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
    name: 'Jane Doe',
    message: 'You: Hello!',
    timestamp: '9:58 PM',
  ),
];

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: Theme.of(context).iconTheme,
        elevation: 0,
        leading: IconButton(
          icon: Icon(CupertinoIcons.compass),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(CupertinoIcons.envelope_open),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(CupertinoIcons.calendar),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(CupertinoIcons.bell),
          ),
          GestureDetector(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 10,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.network(
                  currentUser.imageUrl,
                  width: 38,
                  height: 30,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    upComingRoomsCard(context),
                    ...roomsList.map((e) => roomsCard(context, e)),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.15,
                    )
                  ],
                ),
              ),
              fadeOutContainer(context),
              bottomFloatingButtons(context)
            ],
          ),
        ),
      ),
    );
  }

  TextSpan clubIcon() {
    return TextSpan(
      text: ' 🏡',
    );
  }

  Widget upComingRoomsCard(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Card(
        color: Palette.secondaryBackground,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            ...upcomingRoomsList.map(
              (e) => Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 12,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.1,
                    ),
                    Text(e.time),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.03,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        e.club == ''
                            ? const SizedBox()
                            : Text.rich(
                                TextSpan(
                                  text: e.club.toUpperCase(),
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10,
                                  ),
                                  children: [clubIcon()],
                                ),
                              ),
                        Text(e.name),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget roomsCard(BuildContext context, Room room) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Card(
        color: Theme.of(context).primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: Text.rich(TextSpan(
                  text: room.club.toUpperCase(),
                  children: [clubIcon()],
                )),
              ),
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: Text(
                  room.name,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    flex: 1,
                    child: SizedBox(
                      height: 130,
                      child: Stack(
                        alignment: Alignment.topCenter,
                        children: [
                          Positioned(
                            left: 30,
                            top: 30,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(22),
                              child: Image.network(
                                room.speakers[1].imageUrl,
                                height: 60,
                                width: 60,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 0,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(22),
                              child: Image.network(
                                room.speakers[0].imageUrl,
                                height: 60,
                                width: 60,
                                fit: BoxFit.cover,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ...room.speakers.map(
                          (e) => Padding(
                            padding: const EdgeInsets.all(3.0),
                            child:
                                Text(e.givenName + ' ' + e.familyName + ' 💬'),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Text.rich(
                            TextSpan(
                              style: TextStyle(
                                color: Colors.grey.shade600,
                                fontSize: 15,
                              ),
                              children: [
                                TextSpan(
                                    text: (room.followedBySpeakers.length +
                                                room.others.length +
                                                room.speakers.length)
                                            .toString() +
                                        ' '),
                                WidgetSpan(
                                    child: Icon(
                                  CupertinoIcons.person_fill,
                                  color: Colors.grey.shade600,
                                  size: 20,
                                )),
                                TextSpan(text: '/'),
                                TextSpan(
                                    text:
                                        room.speakers.length.toString() + ' '),
                                WidgetSpan(
                                    child: Icon(
                                  CupertinoIcons.chat_bubble_fill,
                                  color: Colors.grey.shade600,
                                  size: 20,
                                )),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

Positioned fadeOutContainer(BuildContext context) {
  return Positioned(
    child: Container(
      height: MediaQuery.of(context).size.height * 0.15,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          colors: [
            Palette.background,
            Palette.background.withOpacity(0.25),
          ],
        ),
      ),
    ),
  );
}

Positioned bottomFloatingButtons(BuildContext context) {
  return Positioned(
    width: MediaQuery.of(context).size.width,
    bottom: 50,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Stack(
          children: [
            Icon(
              CupertinoIcons.circle_grid_3x3_fill,
            ),
            Positioned(
                bottom: 0,
                right: 0,
                child: Icon(
                  CupertinoIcons.circle_fill,
                  size: 15,
                  color: Palette.green,
                ))
          ],
        ),
        GestureDetector(
          onTap: () {},
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 5,
              vertical: 10,
            ),
            decoration: BoxDecoration(
              color: Palette.green,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 25,
                ),
                Text(
                  'Start a room',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => MessageScreen(),
              ),
            );
          },
          child: Icon(
            CupertinoIcons.paperplane,
            size: 25,
          ),
        )
      ],
    ),
  );
}
