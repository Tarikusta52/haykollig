import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:haykolig/screens/home.dart';
import 'core/themes.dart';
import 'core/util.dart';
import 'core/routes.dart';

void main() {
  runApp(const MyApp());
}

class ThemeProvider extends ChangeNotifier {
  Brightness _brightness = Brightness.light;

  Brightness get brightness => _brightness;

  ThemeProvider() {
    _loadTheme();
  }

  Future<void> _loadTheme() async {
    final prefs = await SharedPreferences.getInstance();
    _brightness = prefs.getBool('isDarkMode') ?? false
        ? Brightness.dark
        : Brightness.light;
    notifyListeners();
  }

  Future<void> toggleTheme() async {
    final prefs = await SharedPreferences.getInstance();
    _brightness =
        _brightness == Brightness.light ? Brightness.dark : Brightness.light;
    await prefs.setBool('isDarkMode', _brightness == Brightness.dark);
    notifyListeners();
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      child: Consumer<ThemeProvider>(
        builder: (context, themeProvider, child) {
          TextTheme textTheme =
              createTextTheme(context, "Montserrat", "Montserrat");
          MaterialTheme theme = MaterialTheme(textTheme);

          return MaterialApp.router(
            title: 'Flutter Demo',
            debugShowCheckedModeBanner: false,
            theme: themeProvider.brightness == Brightness.light
                ? theme.light()
                : theme.dark(),
            routerConfig: router,
          );
        },
      ),
    );
  }
}

class ThemeToggleButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.brightness_6),
      onPressed: () {
        Provider.of<ThemeProvider>(context, listen: false).toggleTheme();
      },
    );
  }
}
