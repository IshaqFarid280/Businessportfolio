import 'package:falconbytesolutinosportfolio/pages/home_Screen.dart';
import 'package:falconbytesolutinosportfolio/services/custom_theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'controllers/theme_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  try {
    if (kIsWeb) {
      await Firebase.initializeApp(
        options: const FirebaseOptions(
          apiKey: "AIzaSyCzP0ECpqi_Zhq8cgmIWg31rnDL8mMz1OY",
          authDomain: "falconbytesolutions.firebaseapp.com",
          projectId: "falconbytesolutions",
          storageBucket: "falconbytesolutions.appspot.com",
          messagingSenderId: "822296666178",
          appId: "1:822296666178:web:d0c8cb47de42a643918ddb",
        ),
      );
    } else {
      await Firebase.initializeApp();
    }
  } catch (e) {
    print('Firebase initialization error: $e');
  }

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeProvider()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    // var themeProvider = Provider.of<ThemeProvider>(context);
    return Consumer<ThemeProvider>(
      builder: (context, themeProvider, _) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          themeMode: themeProvider.themeMode,
          theme: lightTheme(),
          darkTheme: darkTheme(),
          home: HomeScreen(),
        );
      },
    );
  }
}
