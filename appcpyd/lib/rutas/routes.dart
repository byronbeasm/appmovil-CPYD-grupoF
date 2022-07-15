import 'package:appcpyd/vistas/loginalumno/controllers/lb.dart';
import 'package:appcpyd/vistas/loginalumno/l_screen.dart';
import 'package:appcpyd/vistas/loginalumno/loginwvs.dart';
import 'package:get/get.dart';

dynamic routes() => {
      GetPage(name: '/login', page: pantalla_login.new, binding: lbinding()),
      GetPage(name: '/loginwvs', page: loginwvs.new, binding: lbinding())
    };
