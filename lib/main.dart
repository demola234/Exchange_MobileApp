import 'package:exchange_mobile/core/injector/injector.dart';
import 'package:exchange_mobile/presentation/screens/create_wallet_screen.dart';
import 'package:exchange_mobile/riverpod_observer.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'firebase_options.dart';

void main() async {
  FlutterNativeSplash.remove();

  //* Remove native splash screen
  WidgetsFlutterBinding.ensureInitialized();

  //* Initialize firebase
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await injector();
  await dotenv.load(fileName: '.env');
  runApp(ProviderScope(observers: [
    AppObserver(),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 796),
      minTextAdapt: true,
      splitScreenMode: false,
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.light,
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.deepPurple,
            brightness: Brightness.light,
          ),
          // useMaterial3: true,
        ),
        home: const CreateWalletScreen(),
      ),
    );
  }
}
