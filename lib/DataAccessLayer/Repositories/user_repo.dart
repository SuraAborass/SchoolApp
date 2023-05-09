import 'dart:convert';
import '../Clients/user_client.dart';
import '../Models/user.dart';

class UserRepo {
  var client = UserClient();


  Future<User?> login(phone, password) async {
    var data = await client.login(phone, password);
    print(data);
    if (data != null) {
      return User.fromMap(jsonDecode(data));
    }
    return null;
  }

}
