import 'package:flutter/material.dart';


// Screen ###################################################################################################################################################################

class WeatherScreen extends StatelessWidget {
    const WeatherScreen({super.key});

    @override
    Widget build(BuildContext context) {

        return Scaffold(
            appBar: const _WeatherAppBar(),
            body: ListView(
                children: [
                    _CurrentWeatherSection(),
                    _HourlyForecastSection(),
                    _WeatherInfoSection(),
                ],
            ),
        );
    }
}
// Screen ################################################################################################################################################################# END






// Screen sections ############################################################################################################################################################


// App Bar --------------------------------------------------------------------------------------------------------------------------------------------------------------------

class _WeatherAppBar extends StatelessWidget implements PreferredSizeWidget{
    const _WeatherAppBar();

    // to overcome PreferredSizeWidget error :
    @override
    Size get preferredSize => const Size.fromHeight(80);

    @override
    Widget build(BuildContext context) {

        return AppBar(
   
            elevation: 0,
            toolbarHeight: 80,
            titleSpacing: 0,
 
// location button
            title: Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                    padding: const EdgeInsets.fromLTRB(8, 24, 0, 20),
                    child: SizedBox(
                        width: 360,
                        child: TextButton(
                            onPressed: () {
                                Navigator.push(
                                    context, MaterialPageRoute(builder: (_) => const Placeholder(),),
                                );
                            },
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

// action buttons
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

// settings
                Padding(
                    padding: const EdgeInsets.fromLTRB(0, 10, 2, 8),
                    child: IconButton(
                        onPressed: () {
                            Navigator.push(
                                context, MaterialPageRoute(builder: (_) => const Placeholder(),),
                            );
                        },
                        padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
                        icon: const Icon(Icons.settings_rounded),
                        iconSize: 24,
                    ),
                ),
            ],
        );
    }
}


// Body -----------------------------------------------------------------------------------------------------------------------------------------------------------------------

// Title Weather :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
class _CurrentWeatherSection extends StatelessWidget {
    const _CurrentWeatherSection();

    @override
    Widget build(BuildContext context) {
        return Padding(
            padding: const EdgeInsetsGeometry.fromLTRB(16, 8, 16, 8),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
// Current Temp ---------------------------------------------------------------------------------------------------------------------------------------------------------------
                    _CurrentTemperature(),
                    SizedBox(height: 4,),
// Feels Like -----------------------------------------------------------------------------------------------------------------------------------------------------------------
                    _FeelsLikeText(),
                    SizedBox(height: 4,),
// Max Min Temp ---------------------------------------------------------------------------------------------------------------------------------------------------------------
                    _MinMaxTemperature(),
                ],
            ),
        );
    }
}
// Title Weather ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: END

// Hourly Weather ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
class _HourlyForecastSection extends StatelessWidget {
    const _HourlyForecastSection();

    @override
    Widget build(BuildContext context) {
        return(
            Placeholder(fallbackHeight: 140)
        );
    }
}
// Hourly Weather :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: END

// Information Body ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
class _WeatherInfoSection extends StatelessWidget {
    const _WeatherInfoSection();

    @override
    Widget build(BuildContext context) {
        return Container(
            decoration: BoxDecoration(
                color: Color(0xFF282828),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                ),
            ),
            child : Padding(
                padding: EdgeInsetsGeometry.fromLTRB(2, 12, 2, 2),
                child: Column(
                    children: [
// 3 Scrolling Tile ------------------------------------------------------------------------------------------------------------------------------------------------------------
                        _ScrollTipSection(),
// 4 Info Tile -----------------------------------------------------------------------------------------------------------------------------------------------------------------
                        _TileWeatherInfo(),
// 7 Days Row ------------------------------------------------------------------------------------------------------------------------------------------------------------------
                        _NextSevenDays(),
                    ],
                ),
            ),
        );
    }
}
// Information Body :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: END

// Screen sections ######################################################################################################################################################### END




// Secondary Screen Section ####################################################################################################################################################


// Title Weather :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

// Current Temp ---------------------------------------------------------------------------------------------------------------------------------------------------------------
class _CurrentTemperature extends StatelessWidget{
    const _CurrentTemperature();

    @override
    Widget build(BuildContext context) {
        return Text(
            "21\u00B0",                                                                                                                                      // <- variable here
            style: TextStyle(
                color: const Color.fromARGB(255, 221, 221, 221),
                fontSize: 124,
                height: 1,
            ),
        );
    }
}

// Feels Like ------------------------------------------------------------------------------------------------------------------------------------------------------------------
class _FeelsLikeText extends StatelessWidget{
    const _FeelsLikeText();

    @override
    Widget build(BuildContext context) {
        return Text(
            "Feels like 20\u00B0",                                                                                                                           // <- variable here
            style: TextStyle(
                height: 1,
                fontSize: 20,
            ),
        );
    }
}

// Max Min Temp ----------------------------------------------------------------------------------------------------------------------------------------------------------------
class _MinMaxTemperature extends StatelessWidget{
    const _MinMaxTemperature();

    @override
    Widget build(BuildContext context) {
        return Row(
            children: [
                Icon(
                    Icons.arrow_downward_rounded,
                    // size: 24,    
                ),
                // SizedBox(width: 2),
                Text(
                    "16\u00B0",                                                                                                                              // <- variable here
                    style: TextStyle(
                        height: 1,
                        fontSize: 20,
                    ),
                ),
                // SizedBox(width: 4),
                Text(
                    "/",
                    style: TextStyle(
                        height: 1,
                        fontSize: 20,
                    ),
                ),
                // SizedBox(width: 4),
                Icon(
                    Icons.arrow_upward_rounded,
                    // size: 24,    
                ),
                // SizedBox(width: 2),
                Text(
                    "24\u00B0",                                                                                                                              // <- variable here
                    style: TextStyle(
                        height: 1,
                        fontSize: 20,
                    ),
                ),
            ],
        );
    }
}
// Title Weather ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: END


// Hourly Weather ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

// Hourly Weather :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: END


// Information Body ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

// Section ---------------------------------------------------------------------------------------------------------------------------------------------------------------------
class _ScrollTipSection extends StatelessWidget{
    const _ScrollTipSection();

    @override
    Widget build(BuildContext context) {
        return Padding(
            padding: EdgeInsetsGeometry.fromLTRB(8, 0, 8, 10),
            child: SizedBox(
                height: 80,
                child: _ScrollTipSectionTile(),
            ),
        );
    }
}

// 3 Scrolling Tile ------------------------------------------------------------------------------------------------------------------------------------------------------------
class _ScrollTipSectionTile extends StatelessWidget{
    const _ScrollTipSectionTile();

    @override
    Widget build(BuildContext context) {
        return PageView(
            controller: PageController(viewportFraction: 1),
            children: [
// Tile 1 : Weather Tip of The Day !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
                _ScrollTipSectionTileOne(),

// Tile 2 : Rainfall / humidity tip !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
                _ScrollTipSectionTileTwo(),

// Tile 3 : SunSet and SunRise !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
                _ScrollTipSectionTileThree(),
            ],
        );
    }
} 

// 4 Info Tile -----------------------------------------------------------------------------------------------------------------------------------------------------------------
class _TileWeatherInfo extends StatelessWidget{
    const _TileWeatherInfo();

    @override
    Widget build(BuildContext context) {
        return Padding(
            padding: EdgeInsetsGeometry.fromLTRB(8, 0, 8, 10),
        );
    }
}

// 7 Days Row ------------------------------------------------------------------------------------------------------------------------------------------------------------------
class _NextSevenDays extends StatelessWidget{
    const _NextSevenDays();

    @override
    Widget build(BuildContext context) {
        return Padding(
            padding: EdgeInsetsGeometry.fromLTRB(8, 0, 8, 8),
        );
    }
}

// Information Body :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: END




// Section of Secondary Section ################################################################################################################################################


//  Scroll Tile ----------------------------------------------------------------------------------------------------------------------------------------------------------------

// Tile 1 : Weather Tip of The Day !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
class _ScrollTipSectionTileOne extends StatelessWidget{
    const _ScrollTipSectionTileOne();

    @override
    Widget build(BuildContext context) {
        return Container(
            decoration: BoxDecoration(
                color: Colors.white10,
                borderRadius: BorderRadius.circular(36),
            ),
            padding: const EdgeInsets.all(8),
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                    Expanded(
// text section
                        child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                            Padding(
                                padding: const EdgeInsets.fromLTRB(20, 12, 20, 0),
                                    child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: const [
// static text
                                        Text(
                                            "Today : ", 
                                            style: TextStyle(
                                                height: 1,
                                                fontSize: 20,
                                                fontWeight: FontWeight.w800,
                                            ),
                                        ),
// date (variable)
                                        Text(
                                            "31 Dec 2025",                                                                                                   // <- variable here
                                            style: TextStyle(
                                            fontSize: 18,
                                                height: 1,
                                                fontWeight: FontWeight.w600,
                                                color: Color.fromARGB(255, 221, 221, 221),
                                            ),
                                        ),
                                        ],
                                    ),
                                ),
// tip of day
                                Padding(
                                    padding: const EdgeInsets.fromLTRB(20, 8, 20, 8),
                                    child: Text(
                                        "Partially cloudy throughout the day.",                                                                               // <- variable here
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: const TextStyle(
                                            fontSize: 18,
                                            height: 1,
                                        ),
                                    ),
                                ),
                            ], 
                        ),
                    ),
// icon section
                    Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 20, 8),
                        child: Icon(
                            Icons.cloud_outlined,                                                                                                              // <- variable here
                            size: 52,
                        ),
                    ),
                ],
            ),
        );
    } 
}

// Tile 2 : Rainfall / humidity tip !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
class _ScrollTipSectionTileTwo extends StatelessWidget{
    const _ScrollTipSectionTileTwo();

    @override
    Widget build(BuildContext context) {
        return Container(
            margin: const EdgeInsets.symmetric(horizontal: 0),
            decoration: BoxDecoration(
                color: Colors.white12,
                borderRadius: BorderRadius.circular(36),
            ),
            child: Padding(
                padding: const EdgeInsets.fromLTRB(16,10,0,0),
                child: Text(
                        'data',
                ),
            ),
        );
    }
}

// Tile 3 : SunSet and SunRise !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
class _ScrollTipSectionTileThree extends StatelessWidget{
    const _ScrollTipSectionTileThree();

    @override
    Widget build(BuildContext context) {
        return Container(
            margin: const EdgeInsets.symmetric(horizontal: 0),
            decoration: BoxDecoration(
                color: Colors.white12,
                borderRadius: BorderRadius.circular(36),
            ),
            child: Text(
                'data',
            )
        );
    }
}


// #############################################################################################################################################################################





// class _DayForecast extends StatelessWidget {

// }

// class _HourlyWeatherItem extends StatelessWidget {

// }

// extra

// class DayForecast {

// }