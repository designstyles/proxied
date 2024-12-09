import 'package:example/models/user.dart';

class UsersApi {
  Future<List<UserData>> getUsers() async {
    Future.delayed(Duration(seconds: 1));
    List<UserData> users = [];
    for (var i = 0; i < 10; i++) {
      users.add(UserData(
          isActive: i % 2 == 0, id: 'index$i', displayName: 'Display Name $i'));
    }
    return users;
  }

  Future<List<UserData>> getUsersWithParams(String testName) async {
    Future.delayed(Duration(seconds: 1));
    List<UserData> users = [];
    for (var i = 0; i < 10; i++) {
      users.add(UserData(
          isActive: i % 2 == 0,
          id: 'index$i',
          displayName: 'Display Name =$testName - $i'));
    }
    return users;
  }
}
