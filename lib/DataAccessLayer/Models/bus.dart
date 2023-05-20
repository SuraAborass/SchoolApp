
class BusInfo {
  final int id;
  final String name;
  final String assistantName;
  final String phone;
  final String plateNumber;
  final String road;
  final String price;

  BusInfo({
    required this.id,
    required this.name,
    required this.assistantName,
    required this.phone,
    required this.plateNumber,
    required this.road,
    required this.price
  });

  factory BusInfo.fromMap(Map<String, dynamic> map) {
    return BusInfo(
      id: map['id'] as int,
      name: map['name'] ,
      assistantName: map['assistant_name'] ,
      phone: map['phone'] ,
      plateNumber: map['plate_number'],
      road: map['road'],
      price: map['price'],
    );
  }
}