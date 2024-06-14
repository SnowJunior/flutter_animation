class HouseItemModel {
  final String imageUrl;
  final String houseTitle;

  HouseItemModel({required this.houseTitle, required this.imageUrl});

  Map<String, dynamic> toMap() {
    return {
      'houseTitle': houseTitle,
      'imageUrl': imageUrl,
    };
  }

  factory HouseItemModel.fromMap(Map<String, dynamic> map) {
    return HouseItemModel(
        houseTitle: map['houseTitle'] ?? '', imageUrl: map['imageUrl'] ?? '');
  }

  HouseItemModel copyWith({String? houseTitle, String? imageUrl}) {
    return HouseItemModel(
      houseTitle: houseTitle ?? this.houseTitle,
      imageUrl: imageUrl ?? this.imageUrl,
    );
  }
}
