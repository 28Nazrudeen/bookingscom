// import 'package:booking/bottomnavigation/bookings.dart';
// import 'package:booking/bottomnavigation/profile.dart';
// import 'package:booking/bottomnavigation/saved.dart';
// import 'package:booking/bottomnavigation/search.dart';
// import 'package:flutter/material.dart';
//
// class Bottombar extends StatefulWidget {
//   const Bottombar({Key? key}) : super(key: key);
//
//   @override
//   State<Bottombar> createState() => _BottombarState();
// }
//
// class _BottombarState extends State<Bottombar> {
//   int selectedIndex = 0;
//
//   List pages = [
//     SearchPage(),
//     SavedPage(),
//     BookingsPage(),
//     ProfilePage(),
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // body: pages[selectedIndex],
//       bottomNavigationBar: BottomNavigationBar(
//         type: BottomNavigationBarType.fixed,
//         currentIndex: selectedIndex,
//         selectedItemColor: Colors.black,
//         unselectedItemColor: Colors.black38,
//         //pressing
//         onTap: (index) => setState(() {
//           selectedIndex = index;
//         }),
//         items: const [
//           BottomNavigationBarItem(
//             label: "",
//             icon: Icon(Icons.search),
//           ),
//           BottomNavigationBarItem(
//             label: "",
//             icon: Icon(Icons.heart_broken_outlined),
//           ),
//           BottomNavigationBarItem(
//             label: (""),
//             icon: Icon(Icons.shopping_bag_outlined),
//           ),
//           BottomNavigationBarItem(
//             label: (""),
//             icon: Icon(Icons.person),
//           ),
//         ],
//       ),
//     );
//   }
// }
