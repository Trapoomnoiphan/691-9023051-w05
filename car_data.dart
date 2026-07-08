// เปลี่ยนชื่อ 'mb_id_w05' ให้ตรงกับชื่อโปรเจกต์ของคุณในไฟล์ pubspec.yaml
import 'package:mb_id_w05/models/car.dart'; 

final List<Gt3Car> gt3CarList = [
  Gt3Car(
    id: 1,
    name: "911 GT3 R (992)",
    manufacturer: "Porsche",
    imagePaths: [
      "assets/images/gt01/porsche_911.jpg",
      "assets/images/gt01/porsche_911_1.jpg",
    ],
    engine: "4.0L Flat-6 Naturally Aspirated",
    horsepower: 565,
    price: 18500000,
  ),
  // ... ข้อมูลตัวอื่นๆ ด้านล่างเหมือนเดิมทุกประการ ...
  Gt3Car(
    id: 2,
    name: "296 GT3",
    manufacturer: "Ferrari",
    imagePaths: [
      "assets/images/gt02/ferrari_296.jpg",
      "assets/images/gt02/ferrari_296_1.jpg"
    ],
    engine: "3.0L V6 Twin-Turbo",
    horsepower: 600,
    price: 21000000,
  ),
  Gt3Car(
    id: 3,
    name: "M4 GT3",
    manufacturer: "BMW",
    imagePaths: [
      "assets/images/gt03/bmw_m4.jpg",
      "assets/images/gt03/bmw_m4_1.jpg",
    ],
    engine: "3.0L Inline-6 Twin-Turbo",
    horsepower: 590,
    price: 16500000,
  ),
  Gt3Car(
    id: 4,
    name: "Huracán GT3 EVO2",
    manufacturer: "Lamborghini",
    imagePaths: [
      "assets/images/gt04/lambo_huracan.jpg",
      "assets/images/gt04/lambo_huracan_1.jpg",
    ],
    engine: "5.2L V10 Naturally Aspirated",
    horsepower: 580,
    price: 19800000,
  ),
  Gt3Car(
    id: 5,
    name: "AMG GT3 Evo",
    manufacturer: "Mercedes-AMG",
    imagePaths: [
      "assets/images/gt05/merc_amg.jpg",
      "assets/images/gt05/merc_amg_1.jpg",
    ],
    engine: "6.3L V8 Naturally Aspirated",
    horsepower: 550,
    price: 17900000,
  ),
  Gt3Car(
    id: 6,
    name: "Vantage AMR GT3 Evo",
    manufacturer: "Aston Martin",
    imagePaths: [
      "assets/images/gt06/aston_vantage.jpg",
      "assets/images/gt06/aston_vantage_1.jpg",
    ],
    engine: "4.0L V8 Twin-Turbo",
    horsepower: 575,
    price: 19200000,
  ),
];
