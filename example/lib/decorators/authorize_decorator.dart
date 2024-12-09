import 'package:proxied/proxied.dart';

class AuthorizationDecorator implements AbsAuthorizationDecorator {
  @override
  Future<bool> isAuthorized(model) async {
    return model.toString().toLowerCase() == 'token';
  }
}
