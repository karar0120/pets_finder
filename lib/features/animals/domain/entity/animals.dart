class Animals {
  final List<AnimalsData> animals;
  Animals({required this.animals});
}

class AnimalsData {
  final String name;
  final String gender;
  final String type;
  final String smallPhoto;

  AnimalsData({
    required this.gender,
    required this.name,
    required this.type,
    required this.smallPhoto,
  });
}
