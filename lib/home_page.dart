import 'package:flutter/material.dart';
import 'package:flutter_sports/calen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int myindex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black45,
        appBar: AppBar(
          title: const Text('Score Board'),
          actions: <Widget>[
            IconButton(
                onPressed: (() {}), icon: const Icon(Icons.notifications)),
            IconButton(onPressed: (() {}), icon: const Icon(Icons.search)),
          ],
          backgroundColor: Colors.black,
          leading: IconButton(onPressed: (() {}), icon: const Icon(Icons.menu)),
        ),
        body: Column(
          children: [
            
            // Container(
            //   child: const Text(
            //     "LIVE Match",
            //     style: TextStyle(color: Colors.white,),
            //     textAlign: TextAlign.left,
            //   ),
            // ),
            // Padding(
            //   padding: EdgeInsets.all(8),
            //   child: Container(
            //     height: 200,
            //     decoration: const BoxDecoration(
            //         color: Colors.purple,
            //         borderRadius: BorderRadius.all(Radius.circular(20))),
            //   ),
            // ),
          ],
        ),

        // body:
        //  Padding(
        //   padding: EdgeInsets.all(8),

        //   child: Container(
        //     height: 200,
        //     decoration: const BoxDecoration(
        //         color: Colors.purple,
        //         borderRadius: BorderRadius.all(Radius.circular(20))),
        //   ),
        // ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black, // <-- This works for fixed
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          onTap: (index) {
            setState(() {
              myindex = index;
            });
          },
          currentIndex: myindex,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.sports),
              label: 'Matches',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today),
              label: 'schedule',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.play_arrow_rounded),
              label: 'video',
            ),
          ],
        ),
      ),
    );
  }
}
