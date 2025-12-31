import 'package:flutter/material.dart';
import 'package:flutter_application_2/pages/weather_page.dart';

void main() {
	runApp(const WeatherApp());
}

class WeatherApp  extends StatelessWidget{
	const WeatherApp ({super.key});

	@override
	Widget build(BuildContext context) {

		return MaterialApp(
			debugShowCheckedModeBanner: false,
			title: "Strombit",
			theme: ThemeData(
				brightness: Brightness.dark,
				scaffoldBackgroundColor: const Color(0xFF0F0F0F), 
				primaryColor: const Color(0xFFFFFF1E), 
				colorScheme: const ColorScheme.dark(
					primary: Color(0xFFFFFF1E),
					secondary: Color(0xFFFFFF1E),
					// background: Color(0xFF0F0F0F),
					surface: Color(0xFF282828),
					// onBackground: Colors.white,
					onSurface: Colors.white,
				),
				textTheme: const TextTheme(
					bodyLarge: TextStyle(
						fontSize: 16,
						color: Colors.white,
						height: 1.4,
					),
					bodyMedium: TextStyle(
						fontSize: 14,
						color: Colors.white70,
					),
					titleLarge: TextStyle(
						fontSize: 22,
						fontWeight: FontWeight.w600,
						color: Colors.white,
					),
				),
				appBarTheme: const AppBarTheme(
					backgroundColor: Color(0xFF0F0F0F),
					elevation: 0,
					centerTitle: true,
					titleTextStyle: TextStyle(
						fontSize: 18,
						fontWeight: FontWeight.w500,
						color: Colors.white,
					),
					iconTheme: IconThemeData(
						color: Color(0xFFFFFF1E),
					),
				),
				iconTheme: const IconThemeData(
					color: Color(0xFFFFFF1E),
					size: 22,
				),
				elevatedButtonTheme: ElevatedButtonThemeData(
					style: ElevatedButton.styleFrom(
						backgroundColor: const Color(0xFFFFFF1E),
						foregroundColor: Colors.black,
						elevation: 0,
						padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
						shape: RoundedRectangleBorder(
							borderRadius: BorderRadius.circular(10),
						),
					),
				),
				inputDecorationTheme: const InputDecorationTheme(
					filled: true,
					fillColor: Color(0xFF1A1A1A),
					border: OutlineInputBorder(
						borderRadius: BorderRadius.all(Radius.circular(10)),
						borderSide: BorderSide.none,
					),
					hintStyle: TextStyle(color: Colors.white54),
					),
				pageTransitionsTheme: const PageTransitionsTheme(
					builders: {
						TargetPlatform.android: CupertinoPageTransitionsBuilder(),
					},
				),
				visualDensity: VisualDensity.standard,
			),
			home: const WeatherScreen(),

		);
	}
}