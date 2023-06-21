// import 'package:flutter/gestures.dart';
// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';

void main() {
  runApp(const BuySel());
}

class BuySel extends StatelessWidget {
  const BuySel({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Buysel.ng",
      home: BuyselHome(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class BuyselHome extends StatefulWidget {
  const BuyselHome({super.key});

  @override
  State<BuyselHome> createState() => _BuyselHomeState();
}

class _BuyselHomeState extends State<BuyselHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.white, // <-- SEE HERE
          statusBarIconBrightness:
              Brightness.dark, //<-- For Android SEE HERE (dark icons)
          statusBarBrightness:
              Brightness.light, //<-- For iOS SEE HERE (dark icons)
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        title: Image.asset(
          'assets/inlogo.png',
          width: 200.0,
          height: 56.0,
        ),
        actions: [
          IconButton(
            onPressed: () {
              print('search');
            },
            icon: Image.asset('assets/search.png'),
          ),
          const SizedBox(width: 13),
        ],
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 250,
            // backgroundImage
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/loginimage.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomRight,
                  colors: [
                    Colors.black.withOpacity(.9),
                    Colors.black.withOpacity(.5)
                  ],
                ),
              ),
              padding: const EdgeInsets.all(15),
              child: const Align(
                  alignment: Alignment.bottomLeft,
                  child: Text("An header text goes here for a blog home page",
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 26,
                        color: Colors.white,
                        height: 1.2,
                        fontWeight: FontWeight.w900,
                      ))),
            ),
          ),
          //body
          Card(
            child: Row(
              children: [
                //image
                Container(
                  width: 100,
                  height: 100,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/p1.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      //titke
                      Text("Mercedes Benz Toyota Car Dealler"),
                      Text("Foreign Used"),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
