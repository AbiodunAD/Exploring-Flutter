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
            statusBarColor: Colors.green, // <-- SEE HERE
            statusBarIconBrightness:
                Brightness.dark, //<-- For Android SEE HERE (dark icons)
            statusBarBrightness:
                Brightness.light, //<-- For iOS SEE HERE (dark icons)
          ),
          backgroundColor: Colors.green,
          elevation: 0.0,
          centerTitle: true,
          title: const Text(
            'Text Widget',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        body: Center(
          child: Container(
            width: 300,
            height: 200,
            padding: const EdgeInsets.all(10),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
              color: Colors.white,
              elevation: 10,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const ListTile(
                    title: Text(
                      'Product Name',
                      style: TextStyle(fontSize: 20),
                    ),
                    subtitle: Text('Description goes here'),
                    leading: Icon(
                      Icons.album,
                      color: Colors.black,
                      size: 50,
                    ),
                  ),
                  //button
                  ButtonBar(
                    alignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          print('played');
                        },
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 10.0),
                          backgroundColor: Colors.orange,
                          // shape: const StadiumBorder(),
                          elevation: 0.0,
                        ),
                        child: const Text(
                          "Play",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            letterSpacing: 1.0,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          print('paused');
                        },
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 10.0),
                          backgroundColor: Colors.green,
                          // shape: const StadiumBorder(),
                          elevation: 0.0,
                        ),
                        child: const Text(
                          "Pause",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            letterSpacing: 1.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
