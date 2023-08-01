import 'dart:convert';
import '../Clients/user_client.dart';
import '../Models/user.dart';

class UserRepo {
  var client = UserClient();


  Future<User?> login(username, password) async {
    var data = await client.login(username, password);
    print(data);
    if (data != null) {
      return User.fromMap(jsonDecode(data));
    }
    return null;
  }

  Future<User?> updateInfo(id, password,address,phone) async {
    var data = await client.updateInfo(id, password,address,phone);
    if (data != null) {
      return User.fromMap(jsonDecode(data));
    }
    return null;
  }

}
