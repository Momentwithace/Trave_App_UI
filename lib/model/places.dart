class Place{
  String title;
  String subtitle;
  String imageUrl;
  double height;

  Place(this.title, this.subtitle, this.imageUrl, this.height);


  static List<Place> generatedPlaces(){
    return [
      Place("Erin Ijesha", "Osun State Nigeria", "assets/images/erin ijesha.jpeg", 240),
      Place("Ogbunike Cave", "Anambra State Nigeria", "assets/images/ogbunike caves.jpeg", 190),
      Place("Salt Mill", "Ebonyi State Nigeria", "assets/images/salt.jpeg", 230),
      Place("Forest", "Jos Nigeria", "assets/images/forest.jpeg", 250),
      Place("Yankari", "Bauchi Nigeria", "assets/images/yankari.jpeg", 180),
      Place("Agbokim", "Cross River Nigeria", "assets/images/agbokim.jpeg", 240),
      Place("Olumo Rock", "Abeokuta Nigeria", "assets/images/olumo-rock.jpeg", 240),
      Place("Shere Hills", "Jos Nigeria", "assets/images/shere hill.jpeg", 150),
    ];
  }
}