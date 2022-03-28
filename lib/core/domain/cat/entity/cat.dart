class Cat {
  final String id;
  final String race;

  Cat({required this.id, required this.race});

  Cat copy({String? id, String? race}) {
    return Cat(id: id ?? this.id, race: race ?? this.race);
  }
}
