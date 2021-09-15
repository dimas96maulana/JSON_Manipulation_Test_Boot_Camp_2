class JsonArray {
  int inventoryId;
  String name;
  String type;
  List<String> tags;
  int purchasedAt;
  Placement placement;

  JsonArray(
      {required this.inventoryId,
      required this.name,
      required this.type,
      required this.placement,
      required this.purchasedAt,
      required this.tags});
  @override
  String toString() {
    return 'Sample{inventoryId: $inventoryId, name: $name, type: $type, placement: $placement, purchasedAt: $purchasedAt, tags: $tags}';
  }

  factory JsonArray.fromJson(Map<String, dynamic> json) {
    return JsonArray(
      inventoryId: json["inventoryId"],
      name: json["name"],
      type: json["type"],
      tags: List<String>.from(json["tags"]),
      purchasedAt: json["purchasedAt"],
      placement: Placement.fromJson(json["placement"]),
    );
  }
}

class Placement {
  int roomId;
  String name;
  
  Placement({required this.roomId, required this.name});
  @override
  String toString() {
    return 'Github{roomId: $roomId, name: $name}';
  }

  factory Placement.fromJson(Map<String, dynamic> json) {
    return Placement(roomId: json["roomId"], name: json["name"]);
  }
}
