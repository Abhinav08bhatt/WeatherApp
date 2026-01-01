import 'package:flutter/material.dart';

class WeatherPage extends StatelessWidget {
	const WeatherPage({super.key});

	@override
	Widget build(BuildContext context) {
		return Scaffold(
/// app bar
			appBar: AppBar(
				elevation: 0,
				toolbarHeight: 80,
				titleSpacing: 0,
/// location button
				title: Align(
					alignment: Alignment.bottomLeft,
					child: Padding(
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
			body: ListView(
				children: [
/// main card
					Padding(
						padding: const EdgeInsets.fromLTRB(8, 0, 8, 4),
						child: Container(
							height: 132,								// problem (diff in mobile and pc)
							width: double.infinity,
							margin: const EdgeInsets.all(12),
							child: Align(
								alignment: Alignment.bottomLeft,
								child: Row(
									children: [
										Column(
											mainAxisSize: MainAxisSize.min,
											crossAxisAlignment: CrossAxisAlignment.start,
											children: [
/// current temp
												Row(
													crossAxisAlignment: CrossAxisAlignment.center,
													children: const [
														Text(
															"25°",
															style: TextStyle(
																fontSize: 96,
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
									],
								),
							),
						),
					),
					const SizedBox(height: 4,),
// hourly weather
					SizedBox(
						height: 120,
						child: ListView(
							scrollDirection: Axis.horizontal,
							padding: const EdgeInsets.symmetric(horizontal: 16),
							children: [
								for (int index = 0; index < 24; index++)
									_HourlyWeatherItem(
										time: '$index:00',
										temperature: 20 + index % 5,
										icon: Icons.cloud_outlined,
										active: index == 5, 
									),
							],
						),
					),
					const SizedBox(height: 12),
// info
					Container(
						decoration: BoxDecoration(
							color: const Color(0xFF282828),
							borderRadius: BorderRadius.only(
								topLeft: Radius.circular(40),
								topRight: Radius.circular(40),
							)
						),
						child: Padding(
							padding: const EdgeInsets.fromLTRB(2, 12, 2, 2),
								child: Column(
								children: [
/// weather tip of day
									Padding(
										padding: const EdgeInsets.fromLTRB(8, 0, 8, 10),
										child: SizedBox(
											height: 100,
											child: PageView(
												controller: PageController(viewportFraction: 1),
												children: [
													Container(
														margin: const EdgeInsets.symmetric(horizontal: 0),
														decoration: BoxDecoration(
															color: Colors.white12,
															borderRadius: BorderRadius.circular(36),
														),
														child: Padding(
															padding: const EdgeInsets.all(8.0),
															child: Row(
																mainAxisAlignment: MainAxisAlignment.spaceBetween,
																children: [
																	Expanded(
																		child: Column(
																		  children: [
																		    Row(
																				children: [
																					Container(
																						padding: EdgeInsets.fromLTRB(12,8,0,0),
																						alignment: Alignment.topLeft,
																						child: Text(
																							'Today :',
																							style: const TextStyle(
																								fontSize: 24,
																								fontWeight: FontWeight.w600,
																								color: Colors.white70
																							),
																						),
																					),
																					Container(
																						padding: EdgeInsets.fromLTRB(8,12,0,0),
																						alignment: Alignment.bottomLeft,
																						// color: Colors.white,
																						child: Text(
																							'31 December 2025',
																							style: const TextStyle(
																								height: 1,
																								fontSize: 20,
																								fontWeight: FontWeight.w600,
																								color: Colors.white,
																							),
																						),
																					),
																				],
																		    ),
																		    Container(
																		    	padding: EdgeInsets.fromLTRB(12,8,12,0),
																		    	alignment: Alignment.bottomLeft,
																		    	child: Text(
																		    		'Partially cloudy throughout the day.',
																		    		style: const TextStyle(
																						height: 1,
																		    			fontSize: 20,
																		    		),
																		    	),
																		    ),
																		  ],
																		),
																	),
																	Container(
																		padding: EdgeInsets.fromLTRB(0,0,24,0),
																		child: Icon(
																			Icons.cloud_outlined,
																			size: 48,
																		),
																	),
																],
															),
														)
													),
													Container(
														margin: const EdgeInsets.symmetric(horizontal: 0),
														decoration: BoxDecoration(
															color: Colors.white12,
															borderRadius: BorderRadius.circular(36),
														),
														child: Text(
															'data',
														)
													),
													Container(
														margin: const EdgeInsets.symmetric(horizontal: 0),
														decoration: BoxDecoration(
															color: Colors.white12,
															borderRadius: BorderRadius.circular(36),
														),
														child: Text(
															'data',
														)
													),
												],
											),
										),
									),
/// next 7 day avg weather list
									SizedBox(
										// color: Colors.blue,
										height: 946,
										child: Column(
											children: [
// important info (rain humidity aqi and one more )
												LayoutBuilder(
													builder: (context, constraints) {
														final bool isWide = constraints.maxWidth > 600;
														return GridView.count(
															shrinkWrap: true,
															physics: const NeverScrollableScrollPhysics(),
															padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
															crossAxisCount: isWide ? 4 : 2,
															crossAxisSpacing: 8,
															mainAxisSpacing: 8,
															childAspectRatio: 1.20,
															children: [
																Container(
																	decoration: BoxDecoration(
																		color: Colors.white12,
																		borderRadius: BorderRadius.circular(36),
																	),
																),
																Container(
																	decoration: BoxDecoration(
																		color: Colors.white12,
																		borderRadius: BorderRadius.circular(36),
																	),
																),
																Container( 
																	decoration: BoxDecoration(
																		color: Colors.white12,
																		borderRadius: BorderRadius.circular(36),
																	),
																),
																Container(
																	decoration: BoxDecoration(
																		color: Colors.white12,
																		borderRadius: BorderRadius.circular(36),
																	),
																),
															],
														);
													},
												),
// next 7 days avg temp 
												Padding(
													padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
														child: Container(
														height: 536,
														decoration: BoxDecoration(
															color: Colors.white12,
															borderRadius: BorderRadius.circular(36)
														),
														child: Column(
															children: [
// Day 1													
																Padding(
																	padding: const EdgeInsets.fromLTRB(4, 4, 4, 0),
																	child: InkWell(
																		borderRadius: BorderRadius.circular(32),
																		onTap: () {
																			Navigator.push(context,MaterialPageRoute(
																				builder: (context) => const Placeholder(),
																				),
																			);
																		},
																		child: Container(
																			height: 72,
																			padding: const EdgeInsets.symmetric(horizontal: 24),
																			
																			decoration: BoxDecoration(
																				color: const Color(0xFF282828),
																				borderRadius: BorderRadius.circular(32),
																			),
																			child: Row(
																				children: [
																					Expanded(
																						child: Text(
																							'Mon',
																							style: const TextStyle(
																								// color: Colors.white,
																								fontSize: 16,
																							),
																						),
																					),
																					Text(
																						'24°',
																						style: const TextStyle(
																							// color: Colors.white70,
																							fontSize: 16,
																							fontWeight: FontWeight.w800,
																						),
																					),
																					Expanded(
																						child: Align(
																							alignment: Alignment.centerRight,
																							child: Icon(
																								Icons.cloud_outlined,
																								// color: Colors.white70,
																							),
																						),
																					),
																				],
																			),
																		),
																	),
																),
// Day 2															
																Padding(
																	padding: const EdgeInsets.fromLTRB(4, 4, 4, 0),
																	child: InkWell(
																		borderRadius: BorderRadius.circular(32),
																		onTap: () {
																			Navigator.push(context,MaterialPageRoute(
																				builder: (context) => const Placeholder(),
																				),
																			);
																		},
																		child: Container(
																			height: 72,
																			padding: const EdgeInsets.symmetric(horizontal: 24),
																			
																			decoration: BoxDecoration(
																				color: const Color(0xFF282828),
																				borderRadius: BorderRadius.circular(32),
																			),
																			child: Row(
																				children: [
																					Expanded(
																						child: Text(
																							'Tue',
																							style: const TextStyle(
																								// color: Colors.white,
																								fontSize: 16,
																							),
																						),
																					),
																					Text(
																						'24°',
																						style: const TextStyle(
																							// color: Colors.white70,
																							fontSize: 16,
																							fontWeight: FontWeight.w800,
																						),
																					),
																					Expanded(
																						child: Align(
																							alignment: Alignment.centerRight,
																							child: Icon(
																								Icons.light_mode,
																								// color: Colors.white70,
																							),
																						),
																					),
																				],
																			),
																		),
																	),
																),
// Day 3															
																Padding(
																	padding: const EdgeInsets.fromLTRB(4, 4, 4, 0),
																	child: InkWell(
																		borderRadius: BorderRadius.circular(32),
																		onTap: () {
																			Navigator.push(context,MaterialPageRoute(
																				builder: (context) => const Placeholder(),
																				),
																			);
																		},
																		child: Container(
																			height: 72,
																			padding: const EdgeInsets.symmetric(horizontal: 24),
																			
																			decoration: BoxDecoration(
																				color: const Color(0xFF282828),
																				borderRadius: BorderRadius.circular(32),
																			),
																			child: Row(
																				children: [
																					Expanded(
																						child: Text(
																							'Wed',
																							style: const TextStyle(
																								// color: Colors.white,
																								fontSize: 16,
																							),
																						),
																					),
																					Text(
																						'24°',
																						style: const TextStyle(
																							// color: Colors.white70,
																							fontSize: 16,
																							fontWeight: FontWeight.w800,
																						),
																					),
																					Expanded(
																						child: Align(
																							alignment: Alignment.centerRight,
																							child: Icon(
																								Icons.grain_rounded,
																								// color: Colors.white70,
																							),
																						),
																					),
																				],
																			),
																		),
																	),
																),
// Day 4															
																Padding(
																	padding: const EdgeInsets.fromLTRB(4, 4, 4, 0),
																	child: InkWell(
																		borderRadius: BorderRadius.circular(32),
																		onTap: () {
																			Navigator.push(context,MaterialPageRoute(
																				builder: (context) => const Placeholder(),
																				),
																			);
																		},
																		child: Container(
																			height: 72,
																			padding: const EdgeInsets.symmetric(horizontal: 24),
																			
																			decoration: BoxDecoration(
																				color: const Color(0xFF282828),
																				borderRadius: BorderRadius.circular(32),
																			),
																			child: Row(
																				children: [
																					Expanded(
																						child: Text(
																							'Thr',
																							style: const TextStyle(
																								// color: Colors.white,
																								fontSize: 16,
																							),
																						),
																					),
																					Text(
																						'24°',
																						style: const TextStyle(
																							// color: Colors.white70,
																							fontSize: 16,
																							fontWeight: FontWeight.w800,
																						),
																					),
																					Expanded(
																						child: Align(
																							alignment: Alignment.centerRight,
																							child: Icon(
																								Icons.thunderstorm_outlined,
																								// color: Colors.white70,
																							),
																						),
																					),
																				],
																			),
																		),
																	),
																),
																Padding(
																	padding: const EdgeInsets.fromLTRB(4, 4, 4, 0),
																	child: InkWell(
																		borderRadius: BorderRadius.circular(32),
																		onTap: () {
																			Navigator.push(context,MaterialPageRoute(
																				builder: (context) => const Placeholder(),
																				),
																			);
																		},
																		child: Container(
																			height: 72,
																			padding: const EdgeInsets.symmetric(horizontal: 24),
																			
																			decoration: BoxDecoration(
																				color: const Color(0xFF282828),
																				borderRadius: BorderRadius.circular(32),
																			),
																			child: Row(
																				children: [
																					Expanded(
																						child: Text(
																							'Fri',
																							style: const TextStyle(
																								// color: Colors.white,
																								fontSize: 16,
																							),
																						),
																					),
																					Text(
																						'24°',
																						style: const TextStyle(
																							// color: Colors.white70,
																							fontSize: 16,
																							fontWeight: FontWeight.w800,
																						),
																					),
																					Expanded(
																						child: Align(
																							alignment: Alignment.centerRight,
																							child: Icon(
																								Icons.sunny_snowing,
																								// color: Colors.white70,
																							),
																						),
																					),
																				],
																			),
																		),
																	),
																),
																Padding(
																	padding: const EdgeInsets.fromLTRB(4, 4, 4, 0),
																	child: InkWell(
																		borderRadius: BorderRadius.circular(32),
																		onTap: () {
																			Navigator.push(context,MaterialPageRoute(
																				builder: (context) => const Placeholder(),
																				),
																			);
																		},
																		child: Container(
																			height: 72,
																			padding: const EdgeInsets.symmetric(horizontal: 24),
																			
																			decoration: BoxDecoration(
																				color: const Color(0xFF282828),
																				borderRadius: BorderRadius.circular(32),
																			),
																			child: Row(
																				children: [
																					Expanded(
																						child: Text(
																							'Sat',
																							style: const TextStyle(
																								// color: Colors.white,
																								fontSize: 16,
																							),
																						),
																					),
																					Text(
																						'24°',
																						style: const TextStyle(
																							// color: Colors.white70,
																							fontSize: 16,
																							fontWeight: FontWeight.w800,
																						),
																					),
																					Expanded(
																						child: Align(
																							alignment: Alignment.centerRight,
																							child: Icon(
																								Icons.ac_unit,
																								// color: Colors.white70,
																							),
																						),
																					),
																				],
																			),
																		),
																	),
																),
																Padding(
																	padding: const EdgeInsets.fromLTRB(4, 4, 4, 0),
																	child: InkWell(
																		borderRadius: BorderRadius.circular(32),
																		onTap: () {
																			Navigator.push(context,MaterialPageRoute(
																				builder: (context) => const Placeholder(),
																				),
																			);
																		},
																		child: Container(
																			height: 72,
																			padding: const EdgeInsets.symmetric(horizontal: 24),
																			
																			decoration: BoxDecoration(
																				color: const Color(0xFF282828),
																				borderRadius: BorderRadius.circular(32),
																			),
																			child: Row(
																				children: [
																					Expanded(
																						child: Text(
																							'Sun',
																							style: const TextStyle(
																								// color: Colors.white,
																								fontSize: 16,
																							),
																						),
																					),
																					Text(
																						'24°',
																						style: const TextStyle(
																							// color: Colors.white70,
																							fontSize: 16,
																							fontWeight: FontWeight.w800,
																						),
																					),
																					Expanded(
																						child: Align(
																							alignment: Alignment.centerRight,
																							child: Icon(
																								Icons.grain,
																								// color: Colors.white70,
																							),
																						),
																					),
																				],
																			),
																		),
																	),
																),
															],
														),
													),
												),
// mera promotion
												Padding(
													padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
														child: Container(
														height: 56,
														decoration: BoxDecoration(
															color: Colors.white10
														),
													),
												),
											],
										),
									),
								],
							),
						),
					),
					
					const SizedBox(height: 4),

				],
 			),
		);
	}
}


class _HourlyWeatherItem extends StatelessWidget {
  final String time;
  final int temperature;
  final IconData icon;
  final bool active;

  const _HourlyWeatherItem({
    required this.time,
    required this.temperature,
    required this.icon,
    required this.active,
  });

  @override
  Widget build(BuildContext context) {
    final Color backgroundColor =
        active ? const Color(0xFFFFFF1E) : const Color(0xFF282828);

    final Color textColor =
        active ? const Color(0xFF282828) : Colors.white70;
	
    final Color iconColor =
        active ? Color(0xFF282828) : const Color(0xFFFFFF1E);

    return Container(
      width: 72,
      margin: const EdgeInsets.only(right: 12),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(40),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            time,
            style: TextStyle(
              fontSize: 14,
              color: textColor,
            ),
          ),
          const SizedBox(height: 4),
          Icon(
            icon,
            size: 32,
            color: iconColor,
          ),
          const SizedBox(height: 4),
          Text(
            '$temperature°',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: textColor,
            ),
          ),
        ],
      ),
    );
  }
}
