// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'l10n.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class SEn extends S {
  SEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'Class_01 with Flutter';

  @override
  String get helloWorld => 'Hello World!';

  @override
  String get description => 'Flutter is an open-source framework for building mobile and desktop applications.';

  @override
  String get aboutButton => 'About...';

  @override
  String get aboutTitle => 'About';

  @override
  String get aboutDescription => 'This is an example of an About page.';
}
