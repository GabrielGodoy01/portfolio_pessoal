import 'package:flutter_modular/flutter_modular.dart';
import 'package:portfolio_pessoal/app/modules/home/pages/conhecimentos/conhecimentos_controller.dart';
import 'package:portfolio_pessoal/app/modules/home/pages/home_page.dart';

class HomeModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.lazySingleton<ConhecimentosController>(
            (i) => ConhecimentosController()),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(Modular.initialRoute,
            child: (context, args) => const HomePage()),
      ];
}
