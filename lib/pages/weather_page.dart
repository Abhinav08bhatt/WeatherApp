import 'package:flutter/material.dart';
import 'package:flutter_application_2/main.dart';

class WeatherScreen extends StatelessWidget {
	const WeatherScreen({super.key});

	@override
	Widget build(BuildContext context) {
		return Scaffold(
/// app bar
			appBar: AppBar(
				backgroundColor: const Color.fromARGB(0, 255, 255, 255),
				elevation: 0,
				toolbarHeight: 80,
				titleSpacing: 0,
/// location button
				title: Padding(
					padding: const EdgeInsets.fromLTRB(8, 24, 0, 20),
					child: SizedBox(
					width: 360,
						child: TextButton(
							onPressed: () {},
							style: TextButton.styleFrom(
								padding: EdgeInsets.zero,
								alignment: Alignment.centerLeft,
							),
							child: Padding(
								padding: const EdgeInsets.all(16.0),
								child: const Text(
									"Location",
									maxLines: 1,
									overflow: TextOverflow.ellipsis,
									style: TextStyle(
										fontSize: 24,
										color: Colors.white,
									),
								),
							),
						),
					),
				),
/// action buttons
				actions: [
					/// refresh
					Padding(
						padding: const EdgeInsets.fromLTRB(0, 10, 2, 8),
						child: IconButton(
							onPressed: () {},
							padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
							icon: const Icon(Icons.refresh_rounded),
							iconSize: 24,
						),
					),
/// settings
					Padding(
						padding: const EdgeInsets.fromLTRB(0, 10, 2, 8),
						child: IconButton(
							onPressed: () {
								Navigator.push(
									context, MaterialPageRoute(builder: (context) => const Placeholder(),),
								);
							},
							padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
							icon: const Icon(Icons.settings_rounded),
							iconSize: 24,
						),
					),
				],
			),
/// body
			body: Container(
				decoration: BoxDecoration(
					gradient: nightGradient
				),
				child: ListView(
					children: [
					/// main card
						Padding(
							padding: const EdgeInsets.fromLTRB(8, 0, 8, 4),
							child: Container(
								height: 116,
								width: double.infinity,
								margin: const EdgeInsets.all(12),
								child: Align(
									alignment: Alignment.bottomLeft,
									child: Column(
										mainAxisSize: MainAxisSize.min,
										crossAxisAlignment: CrossAxisAlignment.start,
										children: [
/// current temp
											Row(
												crossAxisAlignment: CrossAxisAlignment.center,
												children: const [
													Text(
														"21°",
														style: TextStyle(
															fontSize: 78,
															height: 1,
														),
													),
												],
											),
/// feels like
											const Text(
												"Feels like 20°",
												style: TextStyle(
													fontSize: 24,
												),
											),
/// min / max temp
											Row(
												children: const [
													Icon(
														Icons.arrow_downward_rounded,
														size: 22,
													),
													Text(
														"16°",
														style: TextStyle(fontSize: 24),
													),
													Text(
														"/",
														style: TextStyle(fontSize: 24),
													),
													Icon(
													Icons.arrow_upward_rounded,
														size: 22,
													),
													Text(
														"24°",
														style: TextStyle(fontSize: 24),
													),
												],
											),
										],
									),
								),
							),
						),
						const SizedBox(height: 4),
					
/// weather tip
						Padding(
							padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
							child: glassCard(
								child: Container(
									height: 100,
								),
							),
						),
						const SizedBox(height: 4),
/// weather for of whole day
						Padding(
							padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
							child: glassCard(
								child: Container(
									height: 200,
								),
							),
						),
						const SizedBox(height: 4),
/// next 7 day avg weather list
						Padding(
							padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
							child: glassCard(
								child: Container(
									height: 400,
								),
							),
						),
						const SizedBox(height: 4),
					],
				),
			),
		);
	}
}
