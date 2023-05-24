import 'package:booking/bottomnavigation/bottombar.dart';
import 'package:booking/uppernavigation/attraction_Page.dart';
import 'package:booking/uppernavigation/car_rents.dart';
import 'package:booking/uppernavigation/flights.dart';
import 'package:booking/uppernavigation/stay.dart';
import 'package:booking/uppernavigation/taxi.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 5, vsync: this, initialIndex: 0)
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColorDark,
          title: Text("Bookings.com"),
          centerTitle: true,
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.doorbell_outlined),
              onPressed: () {},
            ),
          ],
          bottom: TabBar(
            indicatorColor: Colors.white,
            isScrollable: true,
            //controller: _tabController,
            tabs: [
              Tab(
                child: Row(
                  children: [
                    Icon(Icons.bed),
                    Text("Stays"),
                  ],
                ),
              ),
              Tab(
                child: Row(
                  children: [
                    Icon(Icons.flight_takeoff),
                    Text("Flights"),
                  ],
                ),
              ),
              Tab(
                child: Row(
                  children: [
                    Icon(Icons.car_rental),
                    Text("Car Rental"),
                  ],
                ),
              ),
              Tab(
                child: Row(
                  children: [
                    Icon(Icons.local_taxi),
                    Text("Taxi"),
                  ],
                ),
              ),
              Tab(
                child: Row(
                  children: [
                    Icon(Icons.attractions),
                    Text("Attraction"),
                  ],
                ),
              ),
            ],
          ),
        ),
        body: new TabBarView(children: <Widget>[
          new StayPage(),
          new FlightsPage(),
          new CarRental(),
          new TaxiPage(),
          new AttractionPage(),
        ]),
      ),
    );
  }
}
