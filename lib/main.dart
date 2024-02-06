import 'package:Inhouse_Pets/screens/LoginScreen/login_screen.dart';
import 'package:Inhouse_Pets/screens/OnBoardingScreen/on_boarding_screen.dart';
import 'package:Inhouse_Pets/screens/SignupScreen/components/registration.dart';
import 'package:Inhouse_Pets/screens/Walk%20History/walk_history.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'providers/userProvider.dart';

//import 'screens/LoginScreen/login_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // Step 3
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<UserProvider>(create: (_) => UserProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Inhouse_Pets',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
              seedColor: Color.fromARGB(255, 53, 194, 193)),
          //  useMaterial3: true,
          textTheme: GoogleFonts.lexendTextTheme(
            Theme.of(context).textTheme,
          ),
        ),
        home: WalkHistory(),
      );
    });
  }
}
