import 'package:dailoz_app/gen/colors.gen.dart';
import 'package:dailoz_app/src/presentation/journeys/auth/signup_screen.dart';
import 'package:dailoz_app/src/presentation/journeys/home/home_screen.dart';
import 'package:dailoz_app/src/presentation/themes/theme_text.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.white,
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        // useMaterial3: true,
        scaffoldBackgroundColor: AppColors.white,
        textTheme: const TextTheme(
          displayLarge: AppTextStyle.themeTextDisplayLarge,
          displayMedium: AppTextStyle.themeTextDisplayMedium,
          displaySmall: AppTextStyle.themeTextDisplaySmall,
          headlineLarge: AppTextStyle.themeTextHeadlineLarge,
          headlineMedium: AppTextStyle.themeTextHeadlineMedium,
          headlineSmall: AppTextStyle.themeTextHeadlineSmall,
          titleLarge: AppTextStyle.themeTextTitleLarge,
          titleMedium: AppTextStyle.themeTextTitleMedium,
          titleSmall: AppTextStyle.themeTextTitleSmall,
          bodyLarge: AppTextStyle.themeTextBodyLarge,
          bodyMedium: AppTextStyle.themeTextBodyMedium,
          bodySmall: AppTextStyle.themeTextBodySmall,
          labelLarge: AppTextStyle.themeTextLabelLarge,
          labelMedium: AppTextStyle.themeTextLabelMedium,
          labelSmall: AppTextStyle.themeTextLabelSmall,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            maximumSize: Size(MediaQuery.sizeOf(context).width, 56),
            minimumSize: Size(MediaQuery.sizeOf(context).width, 56),
            backgroundColor: AppColors.indigo,
            foregroundColor: AppColors.white,
            shape: ContinuousRectangleBorder(
              borderRadius: BorderRadius.circular(22),
            ),
          ),
        ),
        iconButtonTheme: IconButtonThemeData(
          style: IconButton.styleFrom(
            backgroundColor: Colors.transparent,
            foregroundColor: AppColors.indigo,
            maximumSize: const Size(48, 48),
            shape: const CircleBorder(
              side: BorderSide(
                color: AppColors.catskillWhite,
              ),
            ),
            padding: const EdgeInsets.all(8),
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            backgroundColor: Colors.transparent,
            foregroundColor: AppColors.indigo,
            textStyle: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        inputDecorationTheme: const InputDecorationTheme(
          border: UnderlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.catskillWhite, // Use the color you want
            ),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.catskillWhite, // Use the color you want
            ),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.catskillWhite, // Use the color you want
            ),
          ),
          errorBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.red, // Use the color you want
            ),
          ),
          floatingLabelStyle: TextStyle(
            color: AppColors.catskillWhite,
          ),
          labelStyle: TextStyle(
            color: AppColors.catskillWhite,
          ),
          helperStyle: TextStyle(
            color: AppColors.catskillWhite,
          ),
          errorStyle: TextStyle(
            color: Colors.red,
          ),
          prefixIconConstraints: BoxConstraints(
            maxWidth: 40,
            maxHeight: 40,
            minWidth: 24,
            minHeight: 24,
          ),
          suffixIconConstraints: BoxConstraints(
            maxWidth: 40,
            maxHeight: 40,
            minWidth: 24,
            minHeight: 24,
          ),
          errorMaxLines: 2,
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
