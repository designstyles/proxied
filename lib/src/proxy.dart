import 'package:proxied/src/handlers/execution_handler.dart';
import 'package:proxied/src/handlers/proxy_handler.dart';
import 'package:proxied/src/models/authorization/abstract_authorization_decorator.dart';
import 'package:proxied/src/models/response_type.dart';

class Proxy {
  /// Use without 'proxy' but still get the benefit of a single response type
  /// and global error hanlder
  ///
  /// method: passed into the proxy method, and executed as the proxied method
  /// params: any additional parameters that you want to have plugged into your
  /// method signature
  Future<ResponseType> publicProxy({
    required Function method,
    List<dynamic>? params,
  }) async {
    Future wrappedMethod() {
      if (params == null || params.isEmpty) {
        return (method as Future Function())();
      }
      return Function.apply(method, params) as Future;
    }

    final handler = ExecutionHandler(passThroughMethod: wrappedMethod);
    return await _handle(handler);
  }

  /// Use with a proxy wrapper for Authorizing the use of the given method.
  /// Can use the defaultAuthorizeDecorator or create your own custom one.
  ///
  /// method: passed into the proxy method, and executed as the proxied method
  /// isAuhorizedModel: dynamic property passed int isAuthorized (commonly a JWT)
  /// decorator: Default or Custom implementation of abstract class to validate
  ///            AuthorizedDecorator
  Future<ResponseType> authorizedProxy(
    Function method, {
    required dynamic isAuhorizedModel,
    required AbsAuthorizationDecorator decorator,
    List<dynamic>? params,
  }) async {
    Future wrappedMethod() {
      if (params == null || params.isEmpty) {
        return (method)();
      }
      return Function.apply(method, params) as Future;
    }

    final proxy = ProxyHandler(
      originalMethod: wrappedMethod,
      decorator: decorator,
      model: isAuhorizedModel,
    );

    final handler = ExecutionHandler(useAsProxy: proxy);
    return await _handle(handler);
  }

  Future<dynamic> _handle(ExecutionHandler handler) async {
    try {
      final tResults = await handler();
      return ResponseType(
        results: tResults,
        error: null,
      );
    } catch (e) {
      return ResponseType(results: null, error: e.toString());
    }
  }
}
