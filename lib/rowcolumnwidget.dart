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
          'Row and Column Widgets',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text(
                    'First Text',
                    style: TextStyle(
                      color: Colors.white,
                      backgroundColor: Colors.amber,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    'Second Text',
                    style: TextStyle(
                      color: Colors.white,
                      backgroundColor: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    'Third Text',
                    style: TextStyle(
                      color: Colors.white,
                      backgroundColor: Colors.red,
                      fontSize: 20,
                    ),
                  ),
                ]),
            const Text('A new line'),
          ],
        ),
      ),
    );
  }
}
