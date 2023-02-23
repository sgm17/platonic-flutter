// USER STUDYING IN ESCUELA DE INGENIERIA
import 'package:platonic/domains/university_repository/src/models/models.dart';
import 'package:platonic/domains/user_repository/src/models/models.dart';

const AppUser otherUser = AppUser(
  uid: '2',
  name: 'Albert',
  profileImage:
      "https://staticg.sportskeeda.com/editor/2021/06/3705b-16242515841887-800.jpg",
  university: University(
      id: 10, name: "Universidad Autónoma de Barcelona", simpleName: "uab"),
  study: Study(
      name:
          "Doble Grado en Ingeniería Informática e Ingeniería de Sistemas de Telecomunicación",
      courses: 3),
);

// USER STUDYING IN ESCUELA DE INGENIERIA
const AppUser otherUser1 = AppUser(
    uid: '3',
    name: 'Maria',
    profileImage:
        'https://www.rollingstone.com/wp-content/uploads/2023/02/elon-twitter-new-ceo.jpg?w=1581&h=1054&crop=1',
    university: University(
        id: 10, name: 'Universidad Autónoma de Barcelona', simpleName: 'uab'),
    study: Study(
        name: 'Grado Ingeniería de Sistemas de Telecomunicación', courses: 4));

// USER STUDYING IN ESCUELA DE INGENIERIA
const AppUser otherUser2 = AppUser(
  uid: '4',
  name: 'Joan',
  profileImage: 'https://picsum.photos/100/100',
  university: University(
    id: 10,
    name: "Universidad Autónoma de Barcelona",
    simpleName: "uab",
  ),
  study: Study(
      name: 'Grado en Ingeniería de las Tecnologías de Telecomunicación',
      courses: 4),
);

// USER STUDYING IN FACULTAD DE BIOCIENCIAS
const AppUser otherUser3 = AppUser(
    uid: '5',
    name: 'Marta',
    profileImage:
        'https://media.springernature.com/w580h326/nature-cms/uploads/collections/Networks-Collection-img-final-f2c265a59e457f48645e2aa3ff90e942.jpg',
    university: University(
      id: 10,
      name: "Universidad Autónoma de Barcelona",
      simpleName: "uab",
    ),
    study: Study(name: 'Grado en Bioinformática', courses: 3));

// USER STUDYING IN FACULTAD DE BIOCIENCIAS
const AppUser otherUser4 = AppUser(
  uid: '6',
  name: 'Lorena',
  profileImage:
      'https://miro.medium.com/v2/resize:fit:720/format:webp/1*gkPYW1Iw1hyLcDsO3khe-A.jpeg',
  university: University(
    id: 10,
    name: "Universidad Autónoma de Barcelona",
    simpleName: "uab",
  ),
  study: Study(name: 'Grado en Bioquímica', courses: 3),
);

// USER STUDYING IN FACULTAT DE CIENCIAS DE LA COMUNICACIÓN
const AppUser otherUser5 = AppUser(
  uid: '7',
  name: 'Josep',
  profileImage:
      'https://staticc.sportskeeda.com/editor/2022/05/83886-16524753150884-1920.jpg',
  university: University(
      id: 10, name: 'Universidad Autónoma de Barcelona', simpleName: 'uab'),
  study: Study(name: 'Grado de Comunicación de las Organizaciones', courses: 4),
);
