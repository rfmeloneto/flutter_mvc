import 'package:flutter_modular/flutter_modular.dart';
import 'package:mvp_arch/transparency/cargos_vagos_ocupados/module/view/home_page.dart';
import 'package:mvp_arch/transparency/cargos_vagos_ocupados/module/view/form_page.dart';

class AppModule extends Module {
  @override
  void binds(i) {}

  @override
  void routes(r) {
    r.child('/', child: (context) => const HomePage());
    r.child('/form', child: (context) => const FormPage());
  }
}
