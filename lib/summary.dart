import "package:flutter/material.dart";

class Summary extends StatefulWidget {
  const Summary({super.key});

  @override
  State<Summary> createState() => _SummaryState();
}

class _SummaryState extends State<Summary> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                
                height: 200,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                  color: Color.fromARGB(255, 56, 3, 66),
                ),
               
                
              ),
              Container(
                color: Colors.green,
              ),
            ],
          ),
          Align(
            heightFactor: 1.7,
            alignment: const Alignment(0, 0.5),
            child: SizedBox(
              width: size.width * 0.9,
              height: size.height * 0.3,
              child:  Card(
                shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(25)),
                color: Colors.black,
                elevation: 12,
                child: const Center(
                  child: Text(
                    'CARD',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
