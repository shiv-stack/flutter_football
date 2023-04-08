import 'package:flutter/material.dart';
import 'package:flutter_sports/calen.dart';
import 'package:intl/intl.dart';

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
            DatePickerCustom(),
            Container(
              margin: const EdgeInsets.only(left: 20),
              alignment: Alignment.centerLeft,
              child: const Text(
                "LIVE Match",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (context, index) {
                  return LiveMatchCard();
                },
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ListTile(
              iconColor: Colors.white,
              textColor: Colors.white,
              leading: Icon(Icons.cabin),
              title: Text('Today match'),
              trailing: Icon(Icons.navigate_next_outlined),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 4,
                itemBuilder: (context, index) {
                  return TodayMatchWidget();
                },
              ),
            ),
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

class TodayMatchWidget extends StatelessWidget {
  const TodayMatchWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(15),
        margin: const EdgeInsets.all(10),
        height: 80,
        width: MediaQuery.of(context).size.width * .9,
        decoration: const BoxDecoration(
            color: Colors.white12,
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('N Forest'),
            Icon(Icons.trending_neutral),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.green.shade600, width: 2),
                  color: Colors.green.shade400,
                  borderRadius: BorderRadius.circular(20)),
              child: const Text('06:30'),
            ),
            Icon(Icons.nat_outlined),
            Text('Liverpool'),
          ],
        ));
  }
}

class LiveMatchCard extends StatelessWidget {
  const LiveMatchCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.all(10),
      height: 200,
      width: MediaQuery.of(context).size.width * .9,
      decoration: const BoxDecoration(
          color: Colors.purple,
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Column(
        children: [
          Text('Stamford Bridge'),
          Text('week 10'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [Icon(Icons.tab), Text('Chelsea'), Text('Home')],
              ),
              Column(
                children: [
                  Text('1 : 1'),
                  Container(
                    decoration: BoxDecoration(
                        border:
                            Border.all(color: Colors.green.shade600, width: 2),
                        color: Colors.green.shade400,
                        borderRadius: BorderRadius.circular(20)),
                    child: const Text('90+4'),
                  )
                ],
              ),
              Column(
                children: [Icon(Icons.tab), Text('Man Utd'), Text('Away')],
              ),
            ],
          )
        ],
      ),
    );
  }
}
