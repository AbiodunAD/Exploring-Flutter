import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
          'Container Widget',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      // ignore: avoid_unnecessary_containers
      body: Container(
        width: 350,
        height: 70,
        alignment: Alignment.center,
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black,
            width: 4,
          ),
          borderRadius: BorderRadius.circular(12),
          color: Colors.pink,
          boxShadow: const [
            BoxShadow(
              color: Color.fromRGBO(25, 163, 25, 1),
              offset: Offset(6.0, 6.0),
            ),
          ],
        ),
        child: const Text(
          "Hello World",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
          ),
        ),
      ),
    );
  }
}
