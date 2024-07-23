import 'package:church_app/core/common/app/providers/theme_provider.dart';
import 'package:church_app/core/common/app/providers/user_provider.dart';
import 'package:church_app/core/res/theme/app_theme.dart';
import 'package:church_app/core/services/injection_container.dart';
import 'package:church_app/core/services/router.dart';
import 'package:church_app/firebase_options.dart';
import 'package:church_app/src/sermons/data/models/sermon_model.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  // ensure that the widgets binding is initialized before we call the init function
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  // We need this if we are using firebase UI for authentication in our app
  // Which we are doing for the forgot password feature
  FirebaseUIAuth.configureProviders([EmailAuthProvider()]);
  await Hive.initFlutter();
  Hive.registerAdapter(SermonModelAdapter());

  // initialize the dependency injection container
  await init();
  runApp(
    // code for multiple provider
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => UserProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => ThemeProvider(),
        ),
        // Add more providers here
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // navigatorKey: navigatorKey,
      debugShowCheckedModeBanner: false,
      title: 'church_app',
      themeMode: Provider.of<ThemeProvider>(context).isDarkMode
          ? ThemeMode.dark
          : ThemeMode.light,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      onGenerateRoute: generateRoute,
    );
  }
}
