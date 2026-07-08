class Gt3Car {
  final int id;
  final String name;
  final String manufacturer;
  final List<String> imagePaths; // โครงสร้างต้องเป็น List<String> แบบนี้ชัดเจน
  final String engine;
  final int horsepower;
  final int price;

  Gt3Car({
    required this.id,
    required this.name,
    required this.manufacturer,
    required this.imagePaths,
    required this.engine,
    required this.horsepower,
    required this.price,
  });
}