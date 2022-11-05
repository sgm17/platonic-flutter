import 'package:flutter/material.dart';
import 'flat_repository/src/models/models.dart';
import 'university_repository/src/models/models.dart';
import 'user_repository/src/models/models.dart';

final List<Flat> flats = [
  Flat(
      lessor: const ParticularLessor(
          id: 1, name: "Jaume", telephone: "633458245", flatReference: 1254),
      title: "Alquiler de Piso en agustin",
      ubication: [
        "José Pla",
        "Barrio Ciudad Jardín",
        "Distrito Chamatín",
        "Madrid",
        "Madrid capital",
        "Ciudad Jardín, Madrid"
      ],
      coordinates: [40.446696822680735, -3.667135958539462],
      hood: "Ciudad Jardín",
      city: "Madrid",
      monthlyPrice: 1890,
      dipositAmount: 1890,
      dipositMinimumMonths: 1,
      garagePriceIncluded: false,
      garagePrice: 60,
      images: [
        "1.jpg",
        "2.jpg",
        "3.jpg",
        "4.jpg",
        "5.jpg",
        "6.jpg",
        "7.jpg",
        "8.jpg",
        "9.jpg",
        "10.jpg",
        "11.jpg",
        "12.jpg",
        "13.jpg",
        "14.jpg",
        "15.jpg",
        "16.jpg"
      ],
      maxTenants: 4,
      tenants: [
        User(
          id: 1,
          username: "sergigarciiaa",
          sex: Sex.male,
          lastTimeOnline: DateTime.now().millisecondsSinceEpoch,
          universityId: 35,
          universityName: "Universitat Autònoma de Barcelona",
          universityFaculty: const UniversityFaculty(
              facultyName: "Facultat de medicina",
              studies: [UniversityStudy(name: 'Grau de Medicina', courses: 6)]),
          online: true,
        ),
        User(
          id: 3,
          username: "pepegarcia",
          profileImage:
              "https://i.pinimg.com/474x/fa/ba/54/faba5498b3167071dc93e22f3ce1e22a.jpg",
          sex: Sex.male,
          online: false,
          lastTimeOnline: DateTime.now().millisecondsSinceEpoch,
          universityId: 35,
          universityName: "Universitat Autònoma de Barcelona",
          universityFaculty: const UniversityFaculty(
              facultyName: "Facultat de Medicina",
              studies: [UniversityStudy(name: 'Grau de Medicina', courses: 6)]),
        )
      ],
      nearUniversities: [
        const University(
            id: 13,
            name: "Universidad Carlos III de Madrid",
            simpleName: "uc3m",
            image: "uc3m.png",
            coordinates: [40.31706066491064, -3.726300732748115],
            faculties: []),
        const University(
            id: 19,
            name: "Universidad Complutense de Madrid",
            simpleName: "ucm",
            image: "ucm.png",
            coordinates: [40.445439083933344, -3.7299386617558445],
            faculties: []),
        const University(
            id: 56,
            name: "Universidad Europea de Madrid",
            simpleName: "uem",
            image: "ue.png",
            coordinates: [40.373060793715915, -3.9190836051306146],
            faculties: [])
      ],
      universityTransports: [
        const UniversityTransport(
            universityId: 13,
            universityName: "Universidad Carlos III de Madrid",
            transports: [
              Transport(
                  durationMinutes: 1,
                  name: "Walking",
                  vehicle: Vehicle.walking,
                  points: [
                    [40.44663695309388, -3.66716510972398],
                    [40.446646662680045, -3.6672592059337674],
                    [40.44649373653479, -3.6672942926560608],
                    [40.44658719144404, -3.6678540853634827],
                    [40.446661668798725, -3.6680503569284557],
                    [40.44805483102443, -3.667617335814289],
                    [40.448245347446885, -3.667901827040153]
                  ]),
              Transport(
                  name: "Alfonso XIII",
                  directionName: "Argüelles",
                  destinationName: "Diego de León",
                  stops: 3,
                  durationMinutes: 6,
                  acronym: "4",
                  vehicle: Vehicle.underground,
                  points: [
                    [40.448245347446885, -3.667901827040153],
                    [40.44833810464042, -3.6679109877368568],
                    [40.44140021750841, -3.6785027054217374],
                    [40.439216714623036, -3.6789537974111557],
                    [40.43909630487883, -3.6789947965626384],
                    [40.43464667536354, -3.675079318118709]
                  ],
                  color: Colors.brown),
              Transport(
                  name: 'Diego de León',
                  directionName: "Casa de Campo",
                  destinationName: "Puerta de Toledo",
                  stops: 9,
                  durationMinutes: 13,
                  vehicle: Vehicle.underground,
                  color: Colors.green,
                  acronym: "5",
                  points: [
                    [40.43464667536354, -3.675079318118709],
                    [40.43244578171024, -3.675225800028642],
                    [40.43292417753542, -3.6907280564093456],
                    [40.432537282735396, -3.6914411810821792],
                    [40.43045433428912, -3.6927633279677345],
                    [40.426642649143815, -3.696555039270543],
                    [40.42598428769753, -3.6968129779830496],
                    [40.423831906534865, -3.6971034387227832],
                    [40.42196151694227, -3.697951016768621],
                    [40.42008290735037, -3.7000538686351616],
                    [40.419968555509705, -3.7010409215471456],
                    [40.42027893861272, -3.704914031369311],
                    [40.41994405151197, -3.7086691239889062],
                    [40.41866166349885, -3.709570346218268],
                    [40.418669831640706, -3.7095596173816716],
                    [40.41843295477973, -3.70960253272567],
                    [40.41656873923426, -3.7090997439917444],
                    [40.41533234650016, -3.707827664584394],
                    [40.414343215950176, -3.7075119001889973],
                    [40.413024352599095, -3.707439725471392],
                    [40.41266715597086, -3.707566031236936],
                    [40.40765460286599, -3.7111927318772193],
                    [40.40681182255734, -3.7108609783421316]
                  ]),
              Transport(
                  durationMinutes: 3,
                  name: 'Walking',
                  vehicle: Vehicle.walking,
                  points: [
                    [40.40681182255734, -3.7108609783421316],
                    [40.40747033016071, -3.709957926518581]
                  ])
            ]),
        const UniversityTransport(
            universityId: 19,
            universityName: "Universidad Complutense de Madrid",
            transports: [
              Transport(
                  durationMinutes: 4,
                  name: "Walking",
                  vehicle: Vehicle.walking,
                  points: [
                    [40.44663834612121, -3.667166288107489],
                    [40.4466417789784, -3.667272294724341],
                    [40.44649931525709, -3.6673016157034697],
                    [40.44659715182106, -3.667854203387061],
                    [40.44795097469359, -3.6674867456989846],
                    [40.44825134316908, -3.6677844664101436],
                    [40.44825134316908, -3.667904005786594]
                  ]),
              Transport(
                  name: "Alfonso XIII",
                  directionName: "Argüelles",
                  destinationName: "Diego de León",
                  durationMinutes: 6,
                  vehicle: Vehicle.underground,
                  color: Colors.brown,
                  acronym: "4",
                  points: [
                    [40.44825134316908, -3.667904005786594],
                    [40.44833810464042, -3.6679109877368568],
                    [40.44140021750841, -3.6785027054217374],
                    [40.439216714623036, -3.6789537974111557],
                    [40.43909630487883, -3.6789947965626384],
                    [40.43464667536354, -3.675079318118709]
                  ]),
              Transport(
                  name: "Diego de León",
                  durationMinutes: 13,
                  vehicle: Vehicle.underground,
                  acronym: "6",
                  color: Colors.grey,
                  stops: 7,
                  points: [
                    [40.43464667536354, -3.675079318118709],
                    [40.43485019934457, -3.674692119347055],
                    [40.445678234751, -3.6861068542437723],
                    [40.44595583986873, -3.68861740186773],
                    [40.447304458171985, -3.7093600042636674],
                    [40.44567150319233, -3.714509845543582],
                    [40.446585962868745, -3.7174280889355322],
                    [40.44573682215324, -3.7243803746634154],
                    [40.443407379698655, -3.726370734523077],
                    [40.44353836896592, -3.72701810607963]
                  ]),
              Transport(
                  name: "Walking",
                  durationMinutes: 4,
                  vehicle: Vehicle.walking,
                  points: [
                    [40.44353836896592, -3.72701810607963],
                    [40.440316611182034, -3.7264491236289152]
                  ])
            ]),
        const UniversityTransport(
            universityId: 56,
            universityName: "Universidad Europea de Madrid",
            transports: [
              Transport(
                  name: 'Walking',
                  durationMinutes: 3,
                  vehicle: Vehicle.walking,
                  points: [
                    [40.44452490207396, -3.668598175053731],
                    [40.444804688158314, -3.6685327667156735]
                  ]),
              Transport(
                name: 'Clara del Rey',
                durationMinutes: 9,
                vehicle: Vehicle.bus,
                color: Colors.blue,
                destinationName: "Hospital de la Princesa",
                directionName: "Diego de Leon",
                stops: 6,
                acronym: "72",
                points: [
                  [40.440316611182034, -3.7264491236289152],
                  [40.44478237398166, -3.66842676009832],
                  [40.44347336835596, -3.6687923804502645],
                  [40.44002321072459, -3.673992850205428],
                  [40.439145568704, -3.673378349157562],
                  [40.43879912788699, -3.67506253722186],
                  [40.43752305555478, -3.6775660600174076],
                  [40.437589533126165, -3.6791208743642154],
                  [40.438894474291395, -3.6790298371719383],
                  [40.438894474291395, -3.679105701498836],
                  [40.43504886698843, -3.675130410745344]
                ],
              ),
              Transport(
                  name: 'Diego de León',
                  destinationName: "Príncipe de Pío",
                  directionName: "Laguna",
                  durationMinutes: 20,
                  vehicle: Vehicle.underground,
                  acronym: "6",
                  color: Colors.grey,
                  stops: 10,
                  points: [
                    [40.440316611182034, -3.7264491236289152],
                    [40.434865658117374, -3.674696787628909],
                    [40.44603692159249, -3.6870139825715986],
                    [40.44708926616789, -3.709580322006223],
                    [40.44579923089013, -3.714258094529988],
                    [40.44645241640157, -3.7174982030019335],
                    [40.44563168964423, -3.724745296055978],
                    [40.442236820458525, -3.72653569417075],
                    [40.4398810960977, -3.7257770508904557],
                    [40.43693778823056, -3.7221054994418195],
                    [40.435482677118515, -3.71973853244263],
                    [40.425587862814496, -3.7128916800383522],
                    [40.42383219047247, -3.7133468659997346],
                    [40.42274642280215, -3.7153496842298184],
                    [40.42094447174661, -3.7192035921015947],
                    [40.42133180614, -3.7199037351651407],
                  ]),
              Transport(
                  name: 'Waling',
                  durationMinutes: 2,
                  vehicle: Vehicle.walking,
                  points: [
                    [40.42133180614, -3.7199037351651407],
                    [40.4213676895973, -3.7210476878427885],
                    [40.421508783731305, -3.7208977148376614],
                  ]),
              Transport(
                  name: 'Intercambiador de Príncipe Pío',
                  vehicle: Vehicle.bus,
                  acronym: "518",
                  color: Colors.green,
                  durationMinutes: 41,
                  stops: 21,
                  points: [
                    [40.421508783731305, -3.7208977148376614],
                    [40.42134608716576, -3.7211209939795276],
                    [40.434406911781565, -3.734678883705063],
                    [40.434693478008725, -3.738423658061282],
                    [40.435366434233444, -3.7395333443483287],
                    [40.43575097762357, -3.739560409867526],
                    [40.43592951488556, -3.739325842033738],
                    [40.43597071572322, -3.7389469247649894],
                    [40.435654841989205, -3.7384236580605283],
                    [40.43562050779826, -3.7384687672591888],
                    [40.434638542516346, -3.738477789098921],
                    [40.43008429101808, -3.737014671460385],
                    [40.426782137451724, -3.734309804101977],
                    [40.421459501665375, -3.7239496518750115],
                    [40.41919182170092, -3.7227282003011384],
                    [40.41919182170092, -3.7227282003011384],
                    [40.417793055876096, -3.72410615157666],
                    [40.41691881246771, -3.7241827044252998],
                    [40.40226934869184, -3.7612939053183996],
                    [40.357097849500285, -3.8204885625075393],
                    [40.35290892616882, -3.896849193375731],
                    [40.35368677081489, -3.899094743602507],
                    [40.36562776897817, -3.919470935362696],
                    [40.371153516612544, -3.913978358095346],
                    [40.37159278254975, -3.9147976928258346],
                    [40.368309778386454, -3.9182267604015837],
                    [40.3706911283223, -3.9195316268242144]
                  ])
            ])
      ],
      reviews: [
        Review(
            reviewer: User(
              id: 2,
              username: "lauralol",
              sex: Sex.female,
              lastTimeOnline: DateTime.now().millisecondsSinceEpoch,
              universityId: 13,
              universityName: "Universidad Carlos III de Madrid",
              universityFaculty: const UniversityFaculty(
                  facultyName: "Facultat de medicina",
                  studies: [
                    UniversityStudy(name: 'Grau de Medicina', courses: 6)
                  ]),
              online: true,
            ),
            rating: 5,
            createdAt: DateTime.now().millisecondsSinceEpoch,
            comments:
                "Me ha gustado muchisimo la estancia en este piso. Las compañeras son geniales y no he tenido ningún problema")
      ],
      flatProperties: const FlatProperties(
          builtMeters: 90,
          utilMeters: null,
          rooms: 3,
          bathrooms: 2,
          balcony: false,
          fittedWardrobes: true,
          flatOrientation: [FlatOrientation.south, FlatOrientation.est],
          disposition: Disposition.exterior,
          furnished: true,
          equippedKitchen: true,
          heating: false,
          floorLocation: FloorLocation.floor,
          floor: null,
          elevator: false,
          airConditioning: false,
          terrace: false,
          swimmingPool: false,
          storageRoom: false,
          garage: false,
          greenZones: false,
          builtYear: null,
          consumption: EnergyCertificate.a,
          emissions: EnergyCertificate.a)),
];
