import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_sports/calen.dart';
import 'package:flutter_sports/https/services.dart';
import 'package:flutter_sports/models/live_score_model.dart';
import 'package:flutter_sports/summary.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    Services().getLiveScore();
  }

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
            FutureBuilder(
              future: Services().getLiveScore(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(
                    child: CircularProgressIndicator.adaptive(),
                  );
                } else if (snapshot.connectionState == ConnectionState.done &&
                    snapshot.hasData) {
                  return SizedBox(
                    height: 200,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: snapshot.data!.result.length,
                      itemBuilder: (context, index) {
                        var result = snapshot.data!.result[index];
                        return LiveMatchCard(result: result);
                      },
                    ),
                  );
                } else {
                  return Text('No Data Available');
                }
              },
            ),
            const SizedBox(
              height: 10,
            ),
            const ListTile(
              iconColor: Colors.white,
              textColor: Colors.white,
              leading: Icon(Icons.cabin),
              title: Text('Today match'),
              trailing: Icon(Icons.navigate_next_outlined),
            ),
            FutureBuilder(
              future: Services().getLiveScore(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(
                    child: CircularProgressIndicator.adaptive(),
                  );
                } else if (snapshot.connectionState == ConnectionState.done &&
                    snapshot.hasData) {
                  return Expanded(
                    child: ListView.builder(
                      itemCount: snapshot.data!.result.length,
                      itemBuilder: (context, index) {
                        var result = snapshot.data!.result[index];
                        return TodayMatchWidget(result: result);
                      },
                    ),
                  );
                } else {
                  return Text('No Data Available');
                }
              },
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
    required this.result,
  });

  final Result result;

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
            SizedBox(
              width: 50,
              child: Text(
                result.eventHomeTeam,
                style:
                    const TextStyle(fontSize: 10, overflow: TextOverflow.clip),
              ),
            ),
            CircleAvatar(
              backgroundImage: NetworkImage(
                result.homeTeamLogo,
              ),
              backgroundColor: Colors.transparent,
              radius: 20,
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.green.shade600, width: 2),
                  color: Colors.green.shade400,
                  borderRadius: BorderRadius.circular(20)),
              child: Text(result.eventTime),
            ),
            CircleAvatar(
              backgroundImage: NetworkImage(
                result.awayTeamLogo,
              ),
              backgroundColor: Colors.transparent,
              radius: 20,
            ),
            SizedBox(
              width: 50,
              child: Text(
                result.eventAwayTeam,
                style:
                    const TextStyle(fontSize: 10, overflow: TextOverflow.clip),
              ),
            ),
          ],
        ));
  }
}

class LiveMatchCard extends StatelessWidget {
  const LiveMatchCard({
    super.key,
    required this.result,
  });
  final Result result;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Summary()),
            );
      },
      child: Container(
        padding: const EdgeInsets.all(15),
        margin: const EdgeInsets.all(10),
        height: 200,
        width: MediaQuery.of(context).size.width * .9,
        decoration: BoxDecoration(
            color: Colors.purple.shade400,
            image: const DecorationImage(
                alignment: Alignment.bottomCenter,
                opacity: 0.3,
                image: AssetImage('assets/lion.png')),
            borderRadius: const BorderRadius.all(Radius.circular(20))),
        child: Column(
          children: [
            Text(result.leagueName),
            Text(result.leagueRound),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 100,
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                          result.homeTeamLogo,
                        ),
                        backgroundColor: Colors.transparent,
                        radius: 30,
                      ),
                      Text(result.eventHomeTeam),
                      const Text('Home')
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      result.eventFinalResult,
                      textAlign: TextAlign.center,
                    ),
                    Container(
                      width: 60,
                      decoration: BoxDecoration(
                          border:
                              Border.all(color: Colors.green.shade600, width: 2),
                          color: Colors.green.shade400,
                          borderRadius: BorderRadius.circular(20)),
                      child: Text(
                        result.eventStatus == 'Finished'
                            ? '90'
                            : result.eventStatus,
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: 100,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                          result.awayTeamLogo,
                        ),
                        backgroundColor: Colors.transparent,
                        radius: 30,
                      ),
                      Text(
                        result.eventAwayTeam,
                        textAlign: TextAlign.center,
                      ),
                      const Text('Away')
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
