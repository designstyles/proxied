import 'abstract_authorization_decorator.dart';
import 'roles.dart';

class DefaultAuthorizationDecorator implements AbsAuthorizationDecorator {
  final List<AuthRoles> requiredRoles;

  const DefaultAuthorizationDecorator(this.requiredRoles);
  static const userRoleDecorator =
      DefaultAuthorizationDecorator([AuthRoles.user]);
  static const elivatedRoleDecorator =
      DefaultAuthorizationDecorator([AuthRoles.elevated]);
  static const userAndElivatedRoleDecorator =
      DefaultAuthorizationDecorator([AuthRoles.user, AuthRoles.elevated]);
  static const publicRoleDecorator =
      DefaultAuthorizationDecorator([AuthRoles.public]);
  static const adminRoleDecorator =
      DefaultAuthorizationDecorator([AuthRoles.admin]);
  @override
  Future<bool> isAuthorized(dynamic model) async {
    final isPublicRoute = requiredRoles.any((role) {
      return role.roleTypeId == AuthRoles.public.roleTypeId;
    });

    if (isPublicRoute) {
      return true;
    }
    if (model.toString().length < 20) {
      return false;
    }
    // Example:
    // final tokenRole =Get.I<JWTService>().validateToken(model);
    // final isAuthorized =  requiredRoles.any((role) {
    //   return tokenRole == role.roleTypeId;
    // });
    // return isAuthorized;

    // hardcoded for showcasing. But you should default to false;
    return false;
  }
}
