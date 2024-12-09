/// Base authorization decorator.
/// model will be passed into the call method as the item that should
/// be used to validate if the request is being made by an authorized
/// party.
///
/// The use-case for this is if you want to validate a JWT token
/// allows the user to make this call.
abstract class AbsAuthorizationDecorator {
  Future<bool> isAuthorized(dynamic model);
}
