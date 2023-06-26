import 'Planet.dart';

void main() {
  //1.1
  exerciceString1();

  //1.2
  String message = "Hello, World !";
  print(message);

  //1.3
  const String hello = "Hello";
  const String world = "World";
  print('${hello}, ${world} !');

  //1.4
  print('${hello.toUpperCase()}, ${world.toUpperCase()} !');

  //1.5
  print(message.take(5));

  //1.6
  exerciceString6();

  //1.7
  exerciceString7();

  //1.8
  exerciceString8();

  //1.9
  exerciceString9();

  //1.10
  String email = "john@doe.com";
  print(email.contains('@') && email.contains('.')
      ? "Email est valide"
      : "email est non valide");

  //2.1
  int price1 = 1;
  double price2 = 1.1;

  //2.2
  var sum = (price1 + price2);

  //2.3
  print(sum.runtimeType);

  //2.4
  print(sum.toInt());

  //2.5
  final strSeven = "7";
  final numSeven = int.parse(strSeven);
  print(numSeven);

  //3.1
  List<String> planets = [
    "Terre",
    "Mars",
    "Mercure",
    "Saturne",
    "Vénus",
    "Neptune",
    "Uranus",
    "Jupiter"
  ];
  planets.sort();
  print(planets);

  //3.2
  for (var object in planets) {
    print(object.toUpperCase());
  }

  //3.3
  var i = 0;
  while (i < planets.length) {
    print(planets[i][0]);
    i++;
  }

  //3.4
  int n = 0;
  do {
    print('${n + 1} - ${planets[n]}');
    n++;
  } while (n < planets.length);

  //3.5
  int iterator = 0;
  while (iterator < planets.length) {
    String planet = planets[iterator];
    if (['A', 'E', 'I', 'O', 'U', 'Y']
        .contains(planet[planet.length - 1].toUpperCase())) {
      print(planet);
    }

    iterator++;
  }

  //3.6
  planets.add("Pluton");
  print(planets);

  //3.7
  Planet mercure = Planet("Mercure", 91.69);
  Planet saturne = Planet("Saturne", 1275);
  Planet neptune = Planet("Neptune", 4351.40);
  Planet jupiter = Planet("Jupiter", 628.73);
  Planet mars = Planet("Mars", 78.34);
  Planet venus = Planet("Venus", 41.40);
  Planet uranus = Planet("Uranus", 2723.95);

  List<Planet> objectsPlanet = [
    mercure,
    saturne,
    neptune,
    jupiter,
    mars,
    venus,
    uranus
  ];

  mercure.sortDistanceFromEarth(objectsPlanet);

  //3.8
  Map apollo = {
    "07_1969": "Apollo 11",
    "11_1969": "Apollo 12",
    "02_1971": "Apollo 14",
    "07_1971": "Apollo 15",
    "04_1972": "Apollo 16",
    "12_1972": "Apollo 17",
  };

  apollo.forEach((key, value) {
    print(value);
  });

  print(apollo["07_1971"]);

  apollo.forEach((key, value) {
    print(key);
    print(value);
  });

  apollo["07_1971"] = "Neil Armstrong + Buzz Aldrin";
  print(apollo["07_1971"]);
}

void exerciceString9() {
  String pwd = "12345";
  print(!pwd.isEmpty ? "Mot de passe fourni" : "Mot de passe manquant");
}

void exerciceString8() {
  const String welcome = "Hello, World !";
  List<String> words = [];

  for (var i = 0; i < welcome.length; i++) {
    words.add(welcome[i]);
  }

  print(words);
}

void exerciceString7() {
  const String welcome = "Hello, World !";
  String result = welcome.replaceAll("e", "3");
  result = result.replaceAll("l", "1");
  result = result.replaceAll("o", "8");
  print(result.toUpperCase());
}

void exerciceString6() {
  const message = "Hello, World !";
  print(message.length);
}

void exerciceString1() {
  print('Hello, World!');
}

extension StringX on String {
  String take(int nbChars) => substring(0, nbChars.clamp(0, length));
}
