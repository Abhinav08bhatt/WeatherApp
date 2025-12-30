import 'package:flutter/material.dart';
import 'package:flutter_application_2/pages/weather_page.dart';
import 'dart:ui';

const LinearGradient nightGradient = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [
    Color(0xFF0F2027),
    Color(0xFF203A43),
    Color(0xFF2C5364),
  ],
);

const LinearGradient dayGradient = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [
    Color(0xFF56CCF2),
    Color(0xFF2F80ED),
  ],
);

Widget glassCard({
  required Widget child,
  double borderRadius = 16,
}) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(borderRadius),
    child: BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
      child: Container(
        decoration: BoxDecoration(
		  color: const Color.fromRGBO(255, 255, 255, 0.15),
          borderRadius: BorderRadius.circular(borderRadius),
          border: Border.all(
		  color: const Color.fromRGBO(255, 255, 255, 0.2),
          ),
        ),
        child: child,
      ),
    ),
  );
}

void main() {
	runApp(const WeatherApp());
}

class WeatherApp  extends StatelessWidget{
	const WeatherApp ({super.key});

	@override
	Widget build(BuildContext context) {

		return MaterialApp(
			debugShowCheckedModeBanner: false,
			theme: ThemeData.dark(),
			home: const WeatherScreen(),

		);
	}
}

