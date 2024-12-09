import 'package:proxied/src/models/authorization/abstract_authorization_decorator.dart';

class ProxyHandler {
  final Function originalMethod;
  final AbsAuthorizationDecorator decorator;
  final dynamic model;

  ProxyHandler({
    required this.originalMethod,
    required this.decorator,
    required this.model,
  });

  call([args]) async {
    if (await decorator.isAuthorized(model)) {
      return (args != null) ? originalMethod(args) : originalMethod();
    } else {
      // Handle authorization failure
      throw Exception('Unauthorized');
    }
  }
}
