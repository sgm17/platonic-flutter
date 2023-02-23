import 'package:flutter/material.dart';
import 'package:platonic/domains/university_repository/src/models/models.dart';
import 'package:platonic/domains/user_repository/src/models/app_user_model.dart';
import 'package:platonic/domains/story_repository/story_repository.dart';
import 'users_api.dart';

// THIS IS MY USER
const AppUser myUser = AppUser(
  uid: '1',
  profileImage:
      "https://deadline.com/wp-content/uploads/2021/07/Logan-Paul-2.jpg?w=681&h=383&crop=1",
  name: 'Santi',
  university: University(
      id: 10, name: "Universidad Autónoma de Barcelona", simpleName: "uab"),
  study: Study(
      name: 'Grado en Ingeniería Electrónica de Telecomunicación', courses: 4),
);

final List<Story> stories = [
  Story(
      alreadyConversation: true,
      appUser: otherUser,
      body:
          'Em sembla que he vist a una persona que em semblava atractiva, pero no se si es veritat perque se me va la pinça',
      timestamp: DateTime.now().millisecondsSinceEpoch,
      backgroundGradient: const LinearGradient(
        colors: [
          Color(0xFFFE2A55),
          Color(0xFFFFFD74),
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
      faculty: const Faculty(facultyName: 'Escuela de Ingeniería'),
      favourite: true,
      ownStory: false),
  Story(
    alreadyConversation: false,
    favourite: false,
    ownStory: false,
    faculty: const Faculty(facultyName: 'Escuela de Ingeniería'),
    appUser: otherUser1,
    body:
        'No se que estic fent aqui, pero bueno esta força guai i no se a veure si per casualtiat passen coses o q',
    timestamp: DateTime.now().millisecondsSinceEpoch,
    backgroundGradient: const LinearGradient(colors: [
      Color(0xFF8A2BE2),
      Color(0xFF1E90FF),
    ], begin: Alignment.topLeft, end: Alignment.bottomRight),
  ),
  Story(
    alreadyConversation: false,
    favourite: false,
    ownStory: false,
    faculty: const Faculty(facultyName: 'Escuela de Ingeniería'),
    appUser: otherUser2,
    body:
        'Aquest usuario shavia oblidat i aixi sha quedat. ara ja per sort ja me adonat i le tornat a posar, a veure com surt',
    timestamp: DateTime.now().millisecondsSinceEpoch,
    backgroundGradient: const LinearGradient(colors: [
      Color(0xFF2193B0),
      Color(0xFF6DD5ED),
    ], begin: Alignment.topLeft, end: Alignment.bottomRight),
  ),
  Story(
      alreadyConversation: false,
      favourite: false,
      ownStory: false,
      faculty: const Faculty(facultyName: 'Facultad de Biociencias'),
      appUser: otherUser3,
      body:
          'Aqui estic a casa programant. Sembla una bogeria i es que crec que si que ho es pero no se bueno. em sembla guai que vagi tot be',
      timestamp: DateTime.now().millisecondsSinceEpoch,
      backgroundGradient: const LinearGradient(colors: [
        Color(0xFF8A2BE2),
        Color(0xFF1E90FF),
      ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
  Story(
    alreadyConversation: true,
    favourite: false,
    ownStory: false,
    faculty: const Faculty(facultyName: 'Facultad de Biociencias'),
    appUser: otherUser4,
    body:
        'Jan o se que colons posar perque esq no tinc gens de imaginacio i sempre faig faltes dortografia, pero bueno es lo q hay no creus?',
    timestamp: DateTime.now().millisecondsSinceEpoch,
    backgroundGradient: const LinearGradient(
      colors: [
        Color(0xFFB721FF),
        Color(0xFFFF1D00),
      ],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
  ),
  Story(
      alreadyConversation: false,
      favourite: false,
      ownStory: false,
      faculty:
          const Faculty(facultyName: 'Facultad de Ciencias de la Comunicación'),
      appUser: otherUser5,
      body:
          'Em sermbla molt fort q nomes hi hagi 1 persona a la pantalal de ciencies de a comunicacio pero bueno idk',
      backgroundGradient: const LinearGradient(
          colors: [Colors.orangeAccent, Colors.redAccent],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight),
      timestamp: DateTime.now().millisecondsSinceEpoch)
];

// THIS RETURNS ONLY THE LAST ONE
final List<StoriesScroll> storiesScroll = [
  // STUDYING IN ESCUELA DE INGENIERÍA
  [
    const StoriesScroll(
        appUser: otherUser,
        faculty: Faculty(facultyName: 'Escuela de Ingeniería')),
    const StoriesScroll(
        appUser: otherUser1,
        faculty: Faculty(facultyName: 'Escuela de Ingeniería')),
  ].last,
  // STUDYING IN FACULTAD DE BIOCIENCIAS
  [
    const StoriesScroll(
        appUser: otherUser3,
        faculty: Faculty(facultyName: 'Facultad de Biociencias')),
    const StoriesScroll(
        appUser: otherUser4,
        faculty: Faculty(facultyName: 'Facultad de Biociencias')),
  ].last,
  [
    const StoriesScroll(
        appUser: otherUser5,
        faculty:
            Faculty(facultyName: 'Facultad de Ciencias de la Comunicación'))
  ].last
];
