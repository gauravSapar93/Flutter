import 'package:flutter/material.dart';
import 'package:flutter_application/src/repository/auth_repository/auth_repository.dart';
import 'package:flutter_application/src/utils/theme/theme.dart';
import 'package:get/get.dart';

import 'src/features/authentication/screens/on_boarding/onBoardingScreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
      .then((value) => Get.put(AuthRepository()));
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: OnBoardingScreen(),
    );
  }
}

class AppHome extends StatefulWidget {
  const AppHome({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<AppHome> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<AppHome> {
  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        leading: const Icon(Icons.ondemand_video),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            Text("Heading", style: Theme.of(context).textTheme.displayMedium),
            Text("Sub-heding", style: Theme.of(context).textTheme.titleSmall),
            Text("paragraph", style: Theme.of(context).textTheme.bodyLarge),
            ElevatedButton(
                onPressed: () {}, child: const Text("Elevated Button")),
            OutlinedButton(
                onPressed: () {}, child: const Text("Outline Button")),
            const Padding(padding: EdgeInsets.all(20.0))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.shop),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
