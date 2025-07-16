import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'presentation/pages/home_page.dart';
import 'presentation/providers/pet_provider.dart';

void main() {
  runApp(const AdoptaMascotaApp());
}

class AdoptaMascotaApp extends StatelessWidget {
  const AdoptaMascotaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => PetProvider()),
      ],
      child: MaterialApp(
        title: 'Adopta Mascota',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
          useMaterial3: true,
        ),
        home: const HomePage(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}