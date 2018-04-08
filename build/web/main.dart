import 'dart:async';
import 'package:angular/angular.dart';
import 'app_component.dart';
import 'main.template.dart' as ng;

Future<Null> main() async {
  bootstrapStatic(AppComponent, [], ng.initReflector);
}
