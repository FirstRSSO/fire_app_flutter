import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  static String name = "homescreen";
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late final TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // final colors = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Monitoreo del sistema',
        ),
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              // Icons.map_rounded,
              Icons.lightbulb,
              color: Colors.blue,
            ),
          ),
        ],
        bottom: TabBar(
          controller: _tabController,
          tabs: const <Widget>[
            Tab(
              icon: Icon(Icons.cloud_outlined),
            ),
            Tab(
              icon: Icon(Icons.map_rounded),
            ),
            Tab(
              icon: Icon(Icons.analytics),
            ),
          ],
        ),
      ),
      body: _ControllTabBarView(tabController: _tabController),
    );
  }
}

class _ControllTabBarView extends StatefulWidget {
  const _ControllTabBarView({
    required TabController tabController,
  }) : _tabController = tabController;

  final TabController _tabController;

  @override
  State<_ControllTabBarView> createState() => _ControllTabBarViewState();
}

class _ControllTabBarViewState extends State<_ControllTabBarView> {
  @override
  Widget build(BuildContext context) {
    return TabBarView(
      controller: widget._tabController,
      children: <Widget>[
        Column(
          children: [
            Container(
              width: double.infinity,
              height: 150,
              margin: const EdgeInsets.symmetric(vertical: 10),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 213, 236, 255),
                borderRadius: BorderRadius.circular(15),
              ),
              child: FittedBox(
                child: Row(
                  children: [
                    
                    Image.asset('assets/icons/smoke.png',width: 60,height: 60,),
                    SizedBox(width: 10), 
                    Column(
                      children: [
                        Text("Nivel de Humo",style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                        Text("0%",style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold))
                      ],
                    )
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 150,
              margin: const EdgeInsets.symmetric(vertical: 10),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 213, 236, 255),
                borderRadius: BorderRadius.circular(15),
              ),
              child: FittedBox(
                child: Row(
                  children: [
                    Image.asset('assets/icons/temp.png'),
                    SizedBox(width: 20), 
                    Column(
                      children: [
                        Text("Temperatura",style: TextStyle(fontSize: 23.5, fontWeight: FontWeight.bold)),
                        Text("23°",style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold))
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 150,
              margin: const EdgeInsets.symmetric(vertical: 10),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 213, 236, 255),
                borderRadius: BorderRadius.circular(15),
              ),
              child: FittedBox(
                child: Row(
                  children: [
                    Image.asset('assets/icons/humidity.png'),
                    SizedBox(width: 20), 
                    Column(
                      children: [
                        Text("Humedad",style: TextStyle(fontSize: 23.5, fontWeight: FontWeight.bold)),
                        Text("30.0%",style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold))
                      ],
                    )
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 150,
              margin: const EdgeInsets.symmetric(vertical: 10),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 213, 236, 255),
                borderRadius: BorderRadius.circular(15),
              ),
              child: FittedBox(
                child: Row(
                  children: [
                    Image.asset('assets/icons/pressure.png'),
                    SizedBox(width: 20), 
                    Column(
                      children: [
                        Text("Pressure",style: TextStyle(fontSize: 23.5, fontWeight: FontWeight.bold)),
                        Text("1020.0 hPa",style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold))
                      ],
                    )
                    // Icon(Icons.sentiment_very_satisfied),
                  ],
                ),
              ),
            ),
          ],
        ),
        const Center(
          child: Text("It's rainy here"),
        ),
        const Center(
          child: Text("It's rainy here"),
        ),
      ],
    );
  }
}
