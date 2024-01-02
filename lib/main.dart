
//3
// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData.light(),
//       darkTheme: ThemeData.dark(),
//       themeMode: ThemeMode.system,
//       home: MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   bool isDarkMode = false;

//   void toggleTheme() {
//     setState(() {
//       isDarkMode = !isDarkMode;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: isDarkMode ? ThemeData.dark() : ThemeData.light(),
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Dark & Light Mode'),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               Container(
//                 padding: EdgeInsets.all(16.0),
//                 child: Text(
//                   'Die slowly,'
//                   'He who becomes the slave of habit'
//                   'who follows the same routes every day'
//                   'who never changes pace,'
//                   'who does not risk and change the color of his clothes,'
//                   'who does not speak and does not experience,'
//                   'dies slowly.',
//                   style: TextStyle(
//                     color: isDarkMode ? Colors.white : Colors.black,
//                   ),
//                   textAlign: TextAlign.center, // Text in der Mitte zentrieren
//                 ),
//               ),
//               ElevatedButton(
//                 onPressed: () {
//                   toggleTheme();
//                 },
//                 child: Text(isDarkMode ? 'Switch to Light Mode' : 'Switch to Dark Mode'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }


//2
// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData.light(),
//       darkTheme: ThemeData.dark(),
//       themeMode: ThemeMode.system, // Automatisch basierend auf den Systemeinstellungen verwenden
//       home: MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Dark & Light Mode'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Container(
//               padding: EdgeInsets.all(16.0),
//               child: Text(
//                 'He who becomes the slave of habit, ... Only a burning patience will lead to the attainment of a splendid happiness.',
//                 style: TextStyle(
//                   color: Theme.of(context).textTheme.bodyText1?.color, // Textfarbe basierend auf dem Modus anpassen
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
 
 //
 import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.system,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  ThemeMode _currentThemeMode = ThemeMode.system;

  void toggleTheme() {
    setState(() {
      if (_currentThemeMode == ThemeMode.system) {
        _currentThemeMode = ThemeMode.light;
      } else if (_currentThemeMode == ThemeMode.light) {
        _currentThemeMode = ThemeMode.dark;
      } else {
        _currentThemeMode = ThemeMode.system;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: _currentThemeMode,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dark & Light Mode'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Die slowly,'
                  'He who becomes the slave of habit'
                  'who follows the same routes every day'
                  'who never changes pace,'
                  'who does not risk and change the color of his clothes,'
                  'who does not speak and does not experience,'
                  'dies slowly.',
                  style: TextStyle(
                    color: _currentThemeMode == ThemeMode.dark ? Colors.white : Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  toggleTheme();
                },
                child: Text(_currentThemeMode == ThemeMode.dark
                    ? 'Switch to Light Mode'
                    : _currentThemeMode == ThemeMode.light
                        ? 'Switch to Dark Mode'
                        : 'Switch to System Mode'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}