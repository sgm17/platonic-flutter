import 'package:platonic/domain/chat_repository/src/models/models.dart';
import 'package:platonic/domain/story_repository/src/models/story_model.dart';
import 'package:platonic/domain/university_repository/src/models/models.dart';
import 'package:platonic/domain/university_repository/src/models/university_model.dart';

import 'meet_repository/src/models/models.dart';
import 'story_repository/src/models/models.dart';
import 'user_repository/src/models/models.dart';

final User user = User(
    id: 1,
    username: "sergigarciiaa",
    sex: Sex.male,
    lastTimeOnline: DateTime.now().millisecondsSinceEpoch,
    universityId: 35,
    universityName: "Campus de Bellaterra",
    universityParentName: "Universitat Autònoma de Barcelona",
    universityAcronym: "UAB",
    universityFaculty: "Facultat de medicina",
    likesGiven: 100,
    repliesGiven: 200,
    totalChats: 300,
    online: true,
    center: [41.50613010080779, 2.103939945863225]);

final List<Meet> meets = [
  Meet(
      id: 1,
      userId: 2,
      username: 'laura',
      profileImage: 'https://picsum.photos/100/100',
      messagesCount: 13,
      endsAt: DateTime.now().millisecondsSinceEpoch + 172800000,
      startedAt: DateTime.now().millisecondsSinceEpoch,
      universityParentName: 'Universitat Autònoma de Barcelona',
      universityName: 'Campus de Bellaterra',
      universityAcronym: 'UAB',
      universityFaculty: 'Facultat de Medicina'),
  Meet(
      id: 2,
      userId: 3,
      username: 'Pep',
      profileImage: 'https://picsum.photos/100/100',
      messagesCount: 1,
      endsAt: DateTime.now().millisecondsSinceEpoch + 172800000,
      startedAt: DateTime.now().millisecondsSinceEpoch,
      universityParentName: 'Universitat Politècnica de Catalunya',
      universityName: 'Campus de Sant Cugat del Vallès',
      universityAcronym: 'UPC',
      universityFaculty: "Facultat d'Enginyeria"),
  Meet(
      id: 3,
      userId: 4,
      username: 'Maria',
      profileImage: 'https://picsum.photos/100/100',
      messagesCount: 14,
      endsAt: DateTime.now().millisecondsSinceEpoch + 60000,
      startedAt: DateTime.now().millisecondsSinceEpoch,
      universityName: 'Universitat de Girona')
];

final List<Chat> chats = [
  Chat(
      to: 3,
      from: 1,
      action: Story(
          id: 1,
          userId: 3,
          username: 'sergigarciiaa',
          profileImage:
              'https://i.pinimg.com/474x/fa/ba/54/faba5498b3167071dc93e22f3ce1e22a.jpg',
          body:
              'em sembla molt interessant el que fas la veritt, nose como ho faria jo. es molt divertit aixo xd aviam com ho solociones perro jajaja . en senbla que amb el dom es pot fo',
          backgroundColor: 'cyan',
          createdAt: DateTime.now().millisecondsSinceEpoch),
      toUser: User(
          id: 3,
          username: 'pepegarcia',
          profileImage:
              'https://i.pinimg.com/474x/fa/ba/54/faba5498b3167071dc93e22f3ce1e22a.jpg',
          sex: Sex.male,
          online: false,
          lastTimeOnline: DateTime.now().millisecondsSinceEpoch,
          universityId: 35,
          universityParentName: 'Universitat Autònoma de Barcelona',
          universityName: 'Campus de Bellaterra',
          universityFaculty: 'Facultat de Medicina',
          universityAcronym: 'UAB',
          likesGiven: 12,
          repliesGiven: 15,
          totalChats: 15,
          center: [41.50613010080779, 2.103939945863225]),
      messages: [
        Message(
            id: 1,
            body:
                'q3f3qkkq4k4gffwerajvrjnvv nfean`vnriv `noevìnoafniniv nàf`nr`nanoivnenv  `wnìncnjdknkadsknjkjndnkvjaknvknkvdknj',
            from: 1,
            to: 3,
            read: false,
            timestamp: DateTime.now().millisecondsSinceEpoch - 2000000),
        Message(
            id: 2,
            body:
                'anjjevndasvdv kjvnankjnjvkv jjnvaknev janvnjrenriac najjfeavjnavnrvnavjeknvk jnjkanvrvanvnñnvrvnjk njeavenjrnjrnaenvnvanjenjkrn',
            from: 1,
            to: 3,
            read: null,
            timestamp: DateTime.now().millisecondsSinceEpoch - 1900000),
        Message(
            id: 3,
            body:
                'kewkfekm ewmkfcewkcekl kldslcemwkfemkl kmdewmdkqwwlkwklm fekwlfemw',
            from: 1,
            to: 3,
            read: null,
            timestamp: DateTime.now().millisecondsSinceEpoch - 1800000),
        Message(
            id: 4,
            body: 'k ew ekdkvc kew',
            from: 1,
            to: 3,
            read: null,
            timestamp: DateTime.now().millisecondsSinceEpoch - 1700000),
        Message(
            id: 5,
            body: 'ahahaahah okk',
            from: 3,
            to: 1,
            read: false,
            timestamp: DateTime.now().millisecondsSinceEpoch - 1500000),
        Message(
            id: 6,
            body: 'k ew ekdkvc kew',
            from: 1,
            to: 3,
            read: null,
            timestamp: DateTime.now().millisecondsSinceEpoch - 1000000),
        Message(
            id: 7,
            body: 'qkmwdwdmklwfmdmkwefml',
            from: 1,
            to: 3,
            read: null,
            timestamp: DateTime.now().millisecondsSinceEpoch - 500000),
        Message(
            id: 8,
            body: 'lmao wtfwevecev',
            from: 3,
            to: 1,
            read: false,
            timestamp: DateTime.now().millisecondsSinceEpoch - 200000),
        Message(
            id: 9,
            body: 'xewdeefcewfefewfevefe',
            from: 1,
            to: 3,
            read: null,
            timestamp: DateTime.now().millisecondsSinceEpoch),
        Message(
            id: 10,
            body: 'xewdeefcewfefewfevefe',
            from: 1,
            to: 3,
            read: null,
            timestamp: DateTime.now().millisecondsSinceEpoch),
        Message(
            id: 11,
            body: 'xewdeefcewfefewfevefe',
            from: 1,
            to: 3,
            read: null,
            timestamp: DateTime.now().millisecondsSinceEpoch),
      ]),
  Chat(
      from: 1,
      to: 4,
      action: Meet(
          id: 1,
          userId: 4,
          username: 'robert lewandoski',
          profileImage:
              'https://media.springernature.com/w580h326/nature-cms/uploads/collections/Networks-Collection-img-final-f2c265a59e457f48645e2aa3ff90e942.jpg',
          messagesCount: 14,
          endsAt: DateTime.now().millisecondsSinceEpoch + 1000000,
          startedAt: DateTime.now().millisecondsSinceEpoch,
          universityName: 'Campus de Bellaterra'),
      toUser: User(
          id: 4,
          username: 'robert lewandoski',
          profileImage:
              'https://media.springernature.com/w580h326/nature-cms/uploads/collections/Networks-Collection-img-final-f2c265a59e457f48645e2aa3ff90e942.jpg',
          sex: Sex.male,
          online: true,
          lastTimeOnline: DateTime.now().millisecondsSinceEpoch,
          universityId: 83,
          universityParentName: "ESADE",
          universityName: "Campus Barcelona - Sant Cugat",
          likesGiven: 14,
          repliesGiven: 15,
          totalChats: 24,
          center: [41.46730832952267, 2.09138082471557]),
      messages: [
        Message(
            id: 12,
            body: 'wkoefekfekomwf',
            from: 4,
            to: 1,
            read: null,
            timestamp: DateTime.now().millisecondsSinceEpoch - 200000),
        Message(
            id: 13,
            body: 'wkoefekfekomwf',
            from: 1,
            to: 4,
            read: null,
            timestamp: DateTime.now().millisecondsSinceEpoch)
      ])
];

final List<LastStoryIdsPerUniversity> apiLastStoriesPerUni = [
  const LastStoryIdsPerUniversity(
      universityId: 35, lastStoryIdPerUniversity: 4),
  const LastStoryIdsPerUniversity(
      universityId: 11, lastStoryIdPerUniversity: 8),
  const LastStoryIdsPerUniversity(
      universityId: 58, lastStoryIdPerUniversity: 10),
  const LastStoryIdsPerUniversity(
      universityId: 1, lastStoryIdPerUniversity: 12),
  const LastStoryIdsPerUniversity(
      universityId: 45, lastStoryIdPerUniversity: 14),
  const LastStoryIdsPerUniversity(
      universityId: 119, lastStoryIdPerUniversity: 16),
  const LastStoryIdsPerUniversity(
      universityId: 114, lastStoryIdPerUniversity: 18),
  const LastStoryIdsPerUniversity(
      universityId: 10, lastStoryIdPerUniversity: 20),
  const LastStoryIdsPerUniversity(
      universityId: 49, lastStoryIdPerUniversity: 22),
  const LastStoryIdsPerUniversity(
    universityId: 65,
    lastStoryIdPerUniversity: 24,
  ),
  const LastStoryIdsPerUniversity(
      universityId: 50, lastStoryIdPerUniversity: 26),
  const LastStoryIdsPerUniversity(
      universityId: 77, lastStoryIdPerUniversity: 28),
  const LastStoryIdsPerUniversity(
      universityId: 83, lastStoryIdPerUniversity: 30)
];

class CustomApi {
  final University university;
  final List<Story> stories;

  CustomApi({required this.university, required this.stories});
}

final List<CustomApi> apiStories = [
  CustomApi(
    university: const University(
        id: 35,
        parentName: "Universitat Autònoma de Barcelona",
        acronym: "UAB",
        type: "campus",
        name: "Campus de Bellaterra",
        address: "Plaça Cívica, 08193 Bellaterra, Barcelona",
        simple: "uab bellaterra",
        image: "uab.png",
        center: [41.50613010080779, 2.103939945863225]),
    stories: [
      Story(
          id: 1,
          userId: 1,
          username: 'sergigarciiaa',
          profileImage: 'https://picsum.photos/100/100',
          body:
              "He visto a una chica en la biblioteca de humanidades que me he enamorado, creo que es mi crush ahora mismo jejejeje",
          backgroundColor: 'green',
          facultyName: 'Facultat de Medicina',
          createdAt: DateTime.now().millisecondsSinceEpoch - 100000),
      Story(
          id: 2,
          userId: 2,
          username: 'lauramariagarciiaa',
          profileImage:
              'https://media.springernature.com/w580h326/nature-cms/uploads/collections/Networks-Collection-img-final-f2c265a59e457f48645e2aa3ff90e942.jpg',
          body:
              "He visto a un chico en la facultad de ingenieria que era alto y morena, me gustaría saber quien es jejeje",
          backgroundColor: 'blue',
          createdAt: DateTime.now().millisecondsSinceEpoch - 100000),
      Story(
          id: 3,
          userId: 2,
          username: 'mariarobledojaja',
          profileImage:
              'https://media.springernature.com/w580h326/nature-cms/uploads/collections/Networks-Collection-img-final-f2c265a59e457f48645e2aa3ff90e942.jpg',
          body:
              "Estoy buscando a gente para hacer un equipo de baloncesto, por favor contactadme si vosotros igual",
          backgroundColor: 'green',
          createdAt: DateTime.now().millisecondsSinceEpoch - 90000),
      Story(
          id: 4,
          userId: 2,
          username: 'victorberni',
          profileImage:
              'https://media.springernature.com/w580h326/nature-cms/uploads/collections/Networks-Collection-img-final-f2c265a59e457f48645e2aa3ff90e942.jpg',
          body:
              "que locura es esta app, se esta petando bastante la verdad y que me alegro jejjajaajaj",
          backgroundColor: 'brown',
          createdAt: DateTime.now().millisecondsSinceEpoch - 85000),
    ],
  ),
  CustomApi(
      university: const University(
          id: 11,
          parentName: "Universitat Internacional de Catalunya",
          acronym: "UIC",
          type: "campus",
          name: "Campus Barcelona",
          address: "C. de la Immaculada, 22, 08017 Barcelona",
          simple: "uic barcelona",
          image: "uic.png",
          includes: [
            IncludeUniversity(
                parentName: "Universitat Internacional de Catalunya",
                name: "Edificis Delta i Gamma",
                type: "campus",
                acronym: "UIC",
                address: "Carrer de Terré, 11-19, 08017 Barcelona")
          ],
          center: [
            41.40575017098406,
            2.123592202116646
          ]),
      stories: [
        Story(
            id: 5,
            userId: 2,
            username: 'robertocarlos',
            profileImage:
                'https://media.springernature.com/w580h326/nature-cms/uploads/collections/Networks-Collection-img-final-f2c265a59e457f48645e2aa3ff90e942.jpg',
            body:
                'jaja soy roberto carlos un latino muy sexy y estoy buscando a una buena moza jejeeje',
            backgroundColor: 'red',
            createdAt: DateTime.now().millisecondsSinceEpoch - 80000),
        Story(
            id: 6,
            userId: 2,
            username: 'jaumesoburats',
            profileImage:
                'https://media.springernature.com/w580h326/nature-cms/uploads/collections/Networks-Collection-img-final-f2c265a59e457f48645e2aa3ff90e942.jpg',
            body:
                'estoy q este año me saco la carrera ya veras ,solo hay q echarle mil y una horas',
            backgroundColor: 'red',
            createdAt: DateTime.now().millisecondsSinceEpoch - 80000),
        Story(
            id: 7,
            userId: 2,
            username: 'papadopaulos',
            profileImage:
                'https://media.springernature.com/w580h326/nature-cms/uploads/collections/Networks-Collection-img-final-f2c265a59e457f48645e2aa3ff90e942.jpg',
            body:
                'budno chavales q esto ya se termina al fina, despues de dedicarle mil y una horas',
            backgroundColor: 'orange',
            createdAt: DateTime.now().millisecondsSinceEpoch - 80000),
        Story(
            id: 8,
            userId: 2,
            username: 'cataclismo',
            profileImage:
                'https://media.springernature.com/w580h326/nature-cms/uploads/collections/Networks-Collection-img-final-f2c265a59e457f48645e2aa3ff90e942.jpg',
            body:
                'que gupo es esto jajaj la verdad despues de dedicarle mil y una horas',
            backgroundColor: 'orange',
            createdAt: DateTime.now().millisecondsSinceEpoch - 80000)
      ]),
  CustomApi(
      university: const University(
          id: 58,
          parentName: "Universitat de Vic",
          acronym: "UVic",
          type: "campus",
          name: "Masia de la Torre dels Frares",
          address: "Carrer d’en Perot Rocaguinarda, 17, 08500 Vic, Barcelona",
          simple: "uvic masia",
          image: "uvic.jpg",
          center: [41.93138433479263, 2.245997677972732]),
      stories: [
        Story(
            id: 9,
            userId: 2,
            username: 'papasito',
            profileImage:
                'https://media.springernature.com/w580h326/nature-cms/uploads/collections/Networks-Collection-img-final-f2c265a59e457f48645e2aa3ff90e942.jpg',
            body: 'apapapsasuifei paspapito manda jjaj y tsnto jdoer horas',
            backgroundColor: 'orange',
            createdAt: DateTime.now().millisecondsSinceEpoch - 80000),
        Story(
            id: 10,
            userId: 2,
            username: 'papadopaulos',
            profileImage:
                'https://media.springernature.com/w580h326/nature-cms/uploads/collections/Networks-Collection-img-final-f2c265a59e457f48645e2aa3ff90e942.jpg',
            body: 'trmeenodo cualo que me gasto esq no se puede ser mejor',
            backgroundColor: 'blue',
            createdAt: DateTime.now().millisecondsSinceEpoch - 80000)
      ]),
  CustomApi(
      university: const University(
          id: 1,
          parentName: "Universitat Politècnica de Catalunya",
          acronym: "UPC",
          type: "campus",
          name: "Barcelona-Campus Diagonal Nord",
          address:
              "Edifici PO (Poliesportiu) - Campus Nord, Carrer de Jordi Girona, 1-3, 08034 Barcelona",
          simple: "upc diagonal nord",
          image: "upc.png",
          center: [41.388378440945935, 2.1132922874645637]),
      stories: [
        Story(
            id: 11,
            userId: 2,
            username: 'royer',
            profileImage:
                'https://media.springernature.com/w580h326/nature-cms/uploads/collections/Networks-Collection-img-final-f2c265a59e457f48645e2aa3ff90e942.jpg',
            body: 'gerlpglgrglalrleagvrgv',
            backgroundColor: 'blue',
            createdAt: DateTime.now().millisecondsSinceEpoch - 80000),
        Story(
            id: 12,
            userId: 2,
            username: 'mamasitaaa',
            profileImage:
                'https://media.springernature.com/w580h326/nature-cms/uploads/collections/Networks-Collection-img-final-f2c265a59e457f48645e2aa3ff90e942.jpg',
            body:
                'kelapasadkakl elfkleklfwlknlkdklwafklkl eaeknfleklnfnklalknef',
            backgroundColor: 'purple',
            createdAt: DateTime.now().millisecondsSinceEpoch - 80000)
      ]),
  CustomApi(
      university: const University(
          id: 45,
          parentName: "Universitat Pompeu Fabra",
          acronym: "UPF",
          type: "campus",
          name: "Campus Ciutadella",
          address: "Carrer de Ramon Trias Fargas, 25, 27, 08005 Barcelona",
          simple: "upf ciutadella",
          image: "upf.png",
          center: [41.38963997926792, 2.1903685995772175]),
      stories: [
        Story(
            id: 13,
            userId: 2,
            username: 'dcaniwest',
            profileImage:
                'https://media.springernature.com/w580h326/nature-cms/uploads/collections/Networks-Collection-img-final-f2c265a59e457f48645e2aa3ff90e942.jpg',
            body: 'kelapasadkaerag gregeragrg',
            backgroundColor: 'orange',
            createdAt: DateTime.now().millisecondsSinceEpoch - 80000),
        Story(
            id: 14,
            userId: 2,
            username: 'katasusts',
            profileImage:
                'https://media.springernature.com/w580h326/nature-cms/uploads/collections/Networks-Collection-img-final-f2c265a59e457f48645e2aa3ff90e942.jpg',
            body: 'eragerg4rqgg4g524g24 gregeragrg',
            backgroundColor: 'red',
            createdAt: DateTime.now().millisecondsSinceEpoch - 80000)
      ]),
  CustomApi(
      university: const University(
          id: 119,
          type: "school",
          parentName: "Davinci Escola d'Art",
          name: "Davinci Barcelona",
          address: "C/ de Roger de Llúria, 104, Principal, 1a, 08037 Barcelona",
          simple: "davinci barcelona",
          image: "davinci.jpg",
          center: [41.396340948318155, 2.1650192958778196]),
      stories: [
        Story(
            id: 15,
            userId: 2,
            username: 'katasusts',
            profileImage:
                'https://media.springernature.com/w580h326/nature-cms/uploads/collections/Networks-Collection-img-final-f2c265a59e457f48645e2aa3ff90e942.jpg',
            body: 'eragerg4rqgg4g524g24 gregeragrg',
            backgroundColor: 'red',
            createdAt: DateTime.now().millisecondsSinceEpoch - 80000),
        Story(
            id: 16,
            userId: 2,
            username: 'rreagrgrgr',
            profileImage:
                'https://media.springernature.com/w580h326/nature-cms/uploads/collections/Networks-Collection-img-final-f2c265a59e457f48645e2aa3ff90e942.jpg',
            body: 'eragerg4rqgg4g524g24 gregeragrg',
            backgroundColor: 'red',
            createdAt: DateTime.now().millisecondsSinceEpoch - 80000)
      ]),
  CustomApi(
      university: const University(
          id: 114,
          type: "faculties",
          parentName: "Fundació Conservatori Liceu",
          name: "Conservatori Superior de Música del Liceu",
          address: "Carrer Nou de la Rambla, 88, 08001 Barcelona",
          simple: "conservatori liceu",
          image: "liceu.jpg",
          center: [41.37628744069495, 2.171033399576811]),
      stories: [
        Story(
            id: 17,
            userId: 2,
            username: 'h5twh6w4',
            profileImage:
                'https://media.springernature.com/w580h326/nature-cms/uploads/collections/Networks-Collection-img-final-f2c265a59e457f48645e2aa3ff90e942.jpg',
            body: 'eragerg4rqgg4g524g24 gregeragrg',
            backgroundColor: 'blue',
            createdAt: DateTime.now().millisecondsSinceEpoch - 80000),
        Story(
            id: 18,
            userId: 2,
            username: 'wrtthtyt5h56wth',
            profileImage:
                'https://media.springernature.com/w580h326/nature-cms/uploads/collections/Networks-Collection-img-final-f2c265a59e457f48645e2aa3ff90e942.jpg',
            body: 'eragerg4rqgg4g524g24 gregeragrg',
            backgroundColor: 'purple',
            createdAt: DateTime.now().millisecondsSinceEpoch - 80000)
      ]),
  CustomApi(
      university: const University(
          id: 10,
          type: "school",
          associateName: "Universitat Politècnica de Catalunya",
          parentName: "Euncet University Business School",
          name: "Euncet Campus Terrassa",
          simple: "euncet terrassa",
          address: "Camí del Mas Rubial, 1, 08225 Terrassa, Barcelona",
          image: "euncet.jpg",
          center: [41.59987394767506, 2.0153469977335408]),
      stories: [
        Story(
            id: 19,
            userId: 2,
            username: 'wth5twht2h',
            profileImage:
                'https://media.springernature.com/w580h326/nature-cms/uploads/collections/Networks-Collection-img-final-f2c265a59e457f48645e2aa3ff90e942.jpg',
            body: 'eragerg4rqgg4g524g24 gregeragrg',
            backgroundColor: 'orange',
            createdAt: DateTime.now().millisecondsSinceEpoch - 80000),
        Story(
            id: 20,
            userId: 2,
            username: 'rh5yhq4g4qg',
            profileImage:
                'https://media.springernature.com/w580h326/nature-cms/uploads/collections/Networks-Collection-img-final-f2c265a59e457f48645e2aa3ff90e942.jpg',
            body: 'eragerg4rqgg4g524g24 gregeragrg',
            backgroundColor: 'gray',
            createdAt: DateTime.now().millisecondsSinceEpoch - 80000)
      ]),
  CustomApi(
      university: const University(
          id: 49,
          associateName: "Universitat Pompeu Fabra",
          parentName: "TecnoCampus Mataró",
          name: "Fundació TecnoCampus Mataró-Maresme",
          type: "campus",
          simple: "tecnocampus",
          address: "Passatge d'Adolf Comeron, 10, 08302 Mataró, Barcelona",
          image: "tecnocampus.png",
          center: [41.527334949198426, 2.433311226956721]),
      stories: [
        Story(
            id: 21,
            userId: 2,
            username: 'w4htyhtwg4g',
            profileImage:
                'https://media.springernature.com/w580h326/nature-cms/uploads/collections/Networks-Collection-img-final-f2c265a59e457f48645e2aa3ff90e942.jpg',
            body: 'eragerg4rqgg4g524g24 gregeragrg',
            backgroundColor: 'gray',
            createdAt: DateTime.now().millisecondsSinceEpoch - 80000),
        Story(
            id: 22,
            userId: 2,
            username: '4htwgrwgw',
            profileImage:
                'https://media.springernature.com/w580h326/nature-cms/uploads/collections/Networks-Collection-img-final-f2c265a59e457f48645e2aa3ff90e942.jpg',
            body: 'eragerg4rqgg4g524g24 gregeragrg',
            backgroundColor: 'red',
            createdAt: DateTime.now().millisecondsSinceEpoch - 80000)
      ]),
  CustomApi(
      university: const University(
          id: 65,
          parentName: "Universitat de Girona",
          acronym: "UdG",
          type: "campus",
          name: "Campus Barri Vell",
          address: "17004 Girona",
          simple: "udg barri vell",
          image: "udg.jpg",
          center: [41.98602709472981, 2.827869764855122]),
      stories: [
        Story(
            id: 23,
            userId: 2,
            username: 'aegvgagrtbt',
            profileImage:
                'https://media.springernature.com/w580h326/nature-cms/uploads/collections/Networks-Collection-img-final-f2c265a59e457f48645e2aa3ff90e942.jpg',
            body: 'eragerg4rqgg4g524g24 gregeragrg',
            backgroundColor: 'brown',
            createdAt: DateTime.now().millisecondsSinceEpoch - 80000),
        Story(
            id: 24,
            userId: 2,
            username: 'eg3g5g4wf43f',
            profileImage:
                'https://media.springernature.com/w580h326/nature-cms/uploads/collections/Networks-Collection-img-final-f2c265a59e457f48645e2aa3ff90e942.jpg',
            body: 'eragerg4rqgg4g524g24 gregeragrg',
            backgroundColor: 'blue',
            createdAt: DateTime.now().millisecondsSinceEpoch - 80000)
      ]),
  CustomApi(
      university: const University(
          id: 50,
          parentName: "Universitat de Lleida",
          acronym: "UDL",
          type: "campus",
          name: "Campus de Cappont",
          address: "C/ de Jaume II, 71, 25001 Lleida",
          simple: "udl cappont",
          image: "udl.png",
          center: [41.60739965767477, 0.6241617568764151]),
      stories: [
        Story(
            id: 25,
            userId: 2,
            username: 'ggrgtf3af3',
            profileImage:
                'https://media.springernature.com/w580h326/nature-cms/uploads/collections/Networks-Collection-img-final-f2c265a59e457f48645e2aa3ff90e942.jpg',
            body: 'eragerg4rqgg4g524g24 gregeragrg',
            backgroundColor: 'red',
            createdAt: DateTime.now().millisecondsSinceEpoch - 80000),
        Story(
            id: 26,
            userId: 2,
            username: 'awgrg5a3f',
            profileImage:
                'https://media.springernature.com/w580h326/nature-cms/uploads/collections/Networks-Collection-img-final-f2c265a59e457f48645e2aa3ff90e942.jpg',
            body: 'eragerg4rqgg4g524g24 gregeragrg',
            backgroundColor: 'orange',
            createdAt: DateTime.now().millisecondsSinceEpoch - 80000)
      ]),
  CustomApi(
      university: const University(
          id: 77,
          associateName: "Universitat Ramon Llull",
          parentName: "Blanquerna",
          type: "faculties",
          name: "Facultat de Psicologia, Ciències de l'Educació i de l'Esport",
          address: "Carrer del Císter, 34, 08022 Barcelona",
          simple: "blanquerna psicologia",
          image: "blanquerna.jpg",
          center: [41.41158152154075, 2.1328822130708005]),
      stories: [
        Story(
            id: 27,
            userId: 2,
            username: 'wfegga',
            profileImage:
                'https://media.springernature.com/w580h326/nature-cms/uploads/collections/Networks-Collection-img-final-f2c265a59e457f48645e2aa3ff90e942.jpg',
            body: 'eragerg4rqgg4g524g24 gregeragrg',
            backgroundColor: 'red',
            createdAt: DateTime.now().millisecondsSinceEpoch - 80000),
        Story(
            id: 28,
            userId: 2,
            username: 'fe3g4vqaf',
            profileImage:
                'https://media.springernature.com/w580h326/nature-cms/uploads/collections/Networks-Collection-img-final-f2c265a59e457f48645e2aa3ff90e942.jpg',
            body: 'eragerg4rqgg4g524g24 gregeragrg',
            backgroundColor: 'green',
            createdAt: DateTime.now().millisecondsSinceEpoch - 80000)
      ]),
  CustomApi(
      university: const University(
          id: 83,
          parentName: "ESADE",
          associateName: "Universitat Ramon Llull",
          type: "campus",
          name: "Campus Barcelona - Sant Cugat",
          address:
              "Avinguda de la Torre Blanca, 59, 08172 Sant Cugat del Vallès, Barcelona",
          simple: "esade sant cugat",
          image: "esade.jpg",
          center: [41.46730832952267, 2.09138082471557]),
      stories: [
        Story(
            id: 29,
            userId: 2,
            username: 'afwawergaae',
            profileImage:
                'https://media.springernature.com/w580h326/nature-cms/uploads/collections/Networks-Collection-img-final-f2c265a59e457f48645e2aa3ff90e942.jpg',
            body: 'eragerg4rqgg4g524g24 gregeragrg',
            backgroundColor: 'purple',
            createdAt: DateTime.now().millisecondsSinceEpoch - 80000),
        Story(
            id: 30,
            userId: 2,
            username: 'fweEDEVERG',
            profileImage:
                'https://media.springernature.com/w580h326/nature-cms/uploads/collections/Networks-Collection-img-final-f2c265a59e457f48645e2aa3ff90e942.jpg',
            body: 'eragerg4rqgg4g524g24 gregeragrg',
            backgroundColor: 'green',
            createdAt: DateTime.now().millisecondsSinceEpoch - 80000)
      ])
];
