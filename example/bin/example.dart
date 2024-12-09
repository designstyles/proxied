import 'package:example/example.dart' as example;
import 'package:example/models/user.dart';

void main(List<String> arguments) {
  _successUseCase();
  _unsuccessUseCase();
  _successUseCase2();
}

Future<void> _successUseCase() async {
  final response = await example.getUsers();
  final users = response.results as List<UserData>;
  for (var i = 0; i < users.length; i++) {
    print(users[i].displayName);
  }
}

Future<void> _successUseCase2() async {
  final response = await example.getUsersWithParams();
  final users = response.results as List<UserData>;
  for (var i = 0; i < users.length; i++) {
    print(users[i].displayName);
  }
}

Future<void> _unsuccessUseCase() async {
  final response = await example.getUsersFailed();
  final users = response.error;
  print(users);
}
