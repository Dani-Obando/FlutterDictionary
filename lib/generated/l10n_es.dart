// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'l10n.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class SEs extends S {
  SEs([String locale = 'es']) : super(locale);

  @override
  String get appTitle => 'Clase con Flutter';

  @override
  String get helloWorld => '¡Hola Mundo!';

  @override
  String get description => 'Flutter es un framework de código abierto para crear aplicaciones móviles y de escritorio.';

  @override
  String get aboutButton => 'Acerca de...';

  @override
  String get aboutTitle => 'Acerca de';

  @override
  String get aboutDescription => 'Este es un ejemplo de una página Acerca de.';
}
