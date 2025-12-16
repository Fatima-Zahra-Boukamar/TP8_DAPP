import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'contract_linking.dart';
import 'helloUI.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ContractLinking>(
      create: (_) => ContractLinking(),
      child: MaterialApp(
        title: "Hello World DApp - Blockchain",
        theme: ThemeData(
          // =========== THÈME LIGHT MODERNE ===========
          brightness: Brightness.light,

          // Couleurs principales - APPROCHE CORRIGÉE
          colorScheme: ColorScheme.light(
            primary: Color(0xFF4361EE), // Bleu principal
            secondary: Color(0xFF4CC9F0), // Cyan
            tertiary: Color(0xFF7209B7), // Violet
            surface: Colors.white,
            background: Color(0xFFF8F9FA), // Fond clair
            onPrimary: Colors.white,
            onSecondary: Colors.white,
            onBackground: Color(0xFF2B2D42), // Texte foncé
            onSurface: Color(0xFF2B2D42),
            error: Color(0xFFE63946), // Rouge d'erreur
          ),

          // AppBar - CORRIGÉ
          appBarTheme: AppBarTheme(
            backgroundColor: Color(0xFF4361EE),
            elevation: 2,
            centerTitle: true,
            titleTextStyle: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Colors.white,
              letterSpacing: 0.5,
            ),
            iconTheme: IconThemeData(color: Colors.white),
          ),

          // Scaffold
          scaffoldBackgroundColor: Color(0xFFF8F9FA),

          // Cartes - APPROCHE SIMPLIFIÉE
          // Utilisez directement la configuration de la carte
          cardColor: Colors.white,

          // Champs de texte
          inputDecorationTheme: InputDecorationTheme(
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: Colors.grey[300]!, width: 1.5),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: Colors.grey[300]!, width: 1.5),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: Color(0xFF4361EE), width: 2),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: Color(0xFFE63946), width: 1.5),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: Color(0xFFE63946), width: 2),
            ),
            contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            labelStyle: TextStyle(
              color: Colors.grey[600],
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
            hintStyle: TextStyle(
              color: Colors.grey[400],
              fontSize: 16,
            ),
            floatingLabelStyle: TextStyle(
              color: Color(0xFF4361EE),
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),

          // Boutons élevés
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFF4361EE),
              foregroundColor: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 28, vertical: 18),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              elevation: 3,
              shadowColor: Color(0xFF4361EE).withOpacity(0.3),
              textStyle: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                letterSpacing: 0.5,
              ),
              minimumSize: Size(200, 56),
            ),
          ),

          // Boutons texte
          textButtonTheme: TextButtonThemeData(
            style: TextButton.styleFrom(
              foregroundColor: Color(0xFF4361EE),
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              textStyle: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 15,
              ),
            ),
          ),

          // Boutons outlined
          outlinedButtonTheme: OutlinedButtonThemeData(
            style: OutlinedButton.styleFrom(
              foregroundColor: Color(0xFF4361EE),
              side: BorderSide(color: Color(0xFF4361EE), width: 1.5),
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              textStyle: TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
          ),

          // Bouton flottant
          floatingActionButtonTheme: FloatingActionButtonThemeData(
            backgroundColor: Color(0xFF4361EE),
            foregroundColor: Colors.white,
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),

          // Icones
          iconTheme: IconThemeData(
            color: Color(0xFF4361EE),
            size: 24,
          ),

          // Typographie
          textTheme: TextTheme(
            displayLarge: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Color(0xFF2B2D42),
              letterSpacing: -0.5,
            ),
            displayMedium: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Color(0xFF2B2D42),
            ),
            displaySmall: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              color: Color(0xFF2B2D42),
            ),
            headlineMedium: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Color(0xFF2B2D42),
            ),
            headlineSmall: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Color(0xFF2B2D42),
            ),
            titleLarge: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Color(0xFF2B2D42),
            ),
            titleMedium: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Color(0xFF4A5568),
            ),
            bodyLarge: TextStyle(
              fontSize: 16,
              color: Color(0xFF4A5568),
              height: 1.5,
            ),
            bodyMedium: TextStyle(
              fontSize: 14,
              color: Color(0xFF718096),
              height: 1.5,
            ),
            labelLarge: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Colors.white,
              letterSpacing: 0.5,
            ),
          ),

          // Diviseurs
          dividerTheme: DividerThemeData(
            color: Colors.grey[200],
            thickness: 1,
            space: 0,
          ),

          // SnackBar
          snackBarTheme: SnackBarThemeData(
            backgroundColor: Color(0xFF2B2D42),
            contentTextStyle: TextStyle(color: Colors.white),
            behavior: SnackBarBehavior.floating,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            elevation: 6,
          ),

          // Progress Indicator
          progressIndicatorTheme: ProgressIndicatorThemeData(
            color: Color(0xFF4361EE),
            linearTrackColor: Colors.grey[200],
            circularTrackColor: Colors.grey[200],
          ),

          // Effets visuels
          useMaterial3: true,
        ),

        // Thème sombre simplifié
        darkTheme: ThemeData(
          brightness: Brightness.dark,
          colorScheme: ColorScheme.dark(
            primary: Color(0xFF4CC9F0),
            secondary: Color(0xFF7209B7),
            surface: Color(0xFF1E293B),
            background: Color(0xFF0F172A),
          ),
          appBarTheme: AppBarTheme(
            backgroundColor: Color(0xFF1E293B),
            elevation: 2,
          ),
          cardColor: Color(0xFF1E293B),
        ),

        home: HelloUI(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
