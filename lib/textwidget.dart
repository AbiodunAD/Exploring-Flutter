import 'package:flutter/gestures.dart';
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
      body: Column(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
            height: 100,
            child: const Text(
              'A simple text kept at the center of the page originally by the center widget. The height specified fon the container widget limits the volumn of text displayable withing the container widget.',
              textAlign: TextAlign.left,
              textDirection: TextDirection.ltr,
              maxLines: 2,
              style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontSize: 20.0,
                fontWeight: FontWeight.normal,
                letterSpacing: 0,
                fontFamily: 'Montserrat',
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          RichText(
            text: TextSpan(
              style: const TextStyle(
                color: Colors.black,
                fontSize: 15.0,
              ),
              text: "Don't have an account?",
              children: [
                const WidgetSpan(
                  child: Icon(Icons.account_box),
                ),
                TextSpan(
                    text: " Sign Up",
                    style: const TextStyle(
                      color: Colors.blue,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        // ignore: avoid_print
                        print('SignUp');
                      }),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
