import 'package:example/api/users_api.dart';
import 'package:example/decorators/authorize_decorator.dart';
import 'package:proxied/proxied.dart';

Future<ResponseType> getUsers() async {
  final response = await Proxy().authorizedProxy(
    UsersApi().getUsers,
    isAuhorizedModel: 'token',
    decorator: AuthorizationDecorator(),
  );

  final resp = ResponseType(error: response.error, results: response.results);
  return resp;
}

Future<ResponseType> getUsersFailed() async {
  final response = await Proxy().authorizedProxy(
    UsersApi().getUsers,
    isAuhorizedModel: 'failed Token',
    decorator: AuthorizationDecorator(),
  );
  final resp = ResponseType(error: response.error, results: response.results);
  return resp;
}
