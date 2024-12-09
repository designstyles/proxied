import 'package:proxied/src/handlers/proxy_handler.dart';

class ExecutionHandler {
  final Function? passThroughMethod;
  final ProxyHandler? useAsProxy;
  ExecutionHandler({this.passThroughMethod, this.useAsProxy})
      : assert(
          passThroughMethod != null || useAsProxy != null,
          'Either passThroughMethod or useAsProy must be provided',
        );

  call([args]) async {
    try {
      if (useAsProxy != null) {
        return await useAsProxy!.call();
      } else {
        return (args != null)
            ? await passThroughMethod!(args)
            : await passThroughMethod!();
      }
    } catch (e) {
      print(e.toString());
      rethrow;
    }
  }
}
