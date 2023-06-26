class Planet {
  String name;
  double distanceFromEarth;

  Planet(this.name, this.distanceFromEarth) {}

  void sortDistanceFromEarth(List<Planet> planets) {
    planets.sort((a, b) => a.distanceFromEarth.compareTo(b.distanceFromEarth));
    planets.forEach((element) {
      print("${element.name} - ${element.distanceFromEarth}");
    });
  }
}
