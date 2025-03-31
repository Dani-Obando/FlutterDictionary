import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart'; //importaciones para manejar traducciones
import 'generated/l10n.dart'; //importa la carpeta donde se almacenan las traduccioens
import 'styles/style_01.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter MultiLanguage',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [ //se definen los flutter localizations para localizar el idioma del dispositivo
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [ //define los idiomas soportados
        Locale('en'),
        Locale('es'),
        Locale('de'),
      ],
      home: const HomeScreen(),
    );
  }
}
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context)!.appTitle, style: Style01.appBarTitle), // detecta el idioma a través del contexto y lo buscará en su diccionario 
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(0, 25, 25, 1),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(image: AssetImage('assets/images/pacifico-UTN.png')),
            Text(
              S.of(context)!.helloWorld, //texto traducido
              style: Style01.headline,
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text(
                S.of(context)!.description, //texto traducido
                textAlign: TextAlign.justify,
                style: Style01.bodyText,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const AboutPage(),
                  ),
                );
              },
              child: Text(S.of(context)!.aboutButton), //texto traducido
            ),
          ],
        ),
      ),
    );
  }
}

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context)!.aboutTitle), //texto traducido
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(S.of(context)!.appTitle),         //texto traducido
            Text(S.of(context)!.aboutDescription), //texto traducido
          ],
        ),
      ),
    );
  }
}