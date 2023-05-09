import 'dart:convert';

class User {
  final int id;
  final String phone;
  final String name;
  final String address;
  final String avatar;
  final String token;
  User({
    required this.id,
    required this.phone,
    required this.name,
    required this.address,
    required this.avatar,
    required this.token,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'phone': phone,
      'name': name,
      'address' : address,
      'avatar': avatar,
      'token': token
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['user']['id']?.toInt() ?? 0,
      phone: map['user']['phone'] ?? '',
      name: map['user']['name'] ?? '',
      address: map['user']['address'] ?? '',
      avatar: map['user']['avatar'] ?? '',
      token: map['token'] ?? '',
    );
  }
  factory User.fromBoxMap(Map<String, dynamic> map) {
    return User(
      id: map['id']?.toInt() ?? 0,
      phone: map['phone'] ?? '',
      name: map['name'] ?? '',
      address: map['address'] ?? '',
      avatar: map['avatar'] ?? '',
      token: map['token'] ?? '',
    );
  }
  String toJson() => json.encode(toMap());
  factory User.fromJson(String source) =>
      User.fromMap(json.decode(source) as Map<String, dynamic>);
}
