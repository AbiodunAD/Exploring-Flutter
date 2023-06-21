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
  //declare property indecount
  int indexCount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
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
          'Buysel Ng',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.green,
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage(
                  "assets/profilepic2.jpg",
                ),
                radius: 30,
              ),
              accountName: Text('Nnena'),
              accountEmail: Text('nnena@buysel.ng'),
            ),
            ListTile(
              title: Text('Home'),
              leading: Icon(Icons.home),
            ),
            Divider(
              color: Colors.black,
              height: 0.0,
            ),
            ListTile(
              title: Text('About'),
              leading: Icon(Icons.info),
            ),
            Divider(
              color: Colors.black,
              height: 0.0,
            ),
            ListTile(
              title: Text('Settings'),
              leading: Icon(Icons.settings),
            ),
            Divider(
              color: Colors.black,
              height: 0.0,
            ),
            ListTile(
              title: Text('Logout'),
              leading: Icon(Icons.logout),
            ),
            Divider(
              color: Colors.black,
              height: 0.0,
            ),
            ListTile(title: Text('App Version: 1.0.0')),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // ignore: avoid_print
          print('Working');
        },
        child: const Icon(Icons.notification_add),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 40.0),
              Image.asset(
                'assets/buysel-splash-logo.png',
                width: 150.0,
                height: 200.0,
              ),
              const SizedBox(height: 80.0),
              const Text(
                'Ready to Buy or Sell?',
                style: TextStyle(
                  // fontFamily: 'Montserrat',
                  // fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
              const SizedBox(height: 15.0),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 60.0, vertical: 15.0),
                  backgroundColor: Colors.orange,
                  shape: const StadiumBorder(),
                  elevation: 0.0,
                ),
                child: const Text(
                  "Register",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    letterSpacing: 1.0,
                  ),
                ),
              ),
              const SizedBox(height: 10.0),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 70.0, vertical: 15.0),
                  backgroundColor: Colors.green,
                  shape: const StadiumBorder(),
                  elevation: 0.0,
                ),
                child: const Text(
                  "Login",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    letterSpacing: 1.0,
                  ),
                ),
              ),
              const SizedBox(height: 15.0),
              const Text(
                'Skip',
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
              const SizedBox(height: 15.0),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Enter your name",
                    hintText: "Type here",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40.0),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      persistentFooterButtons: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {
                // ignore: avoid_print
                print('Home Button Pressed');
              },
              icon: const Icon(Icons.home),
            ),
            IconButton(
              onPressed: () {
                // ignore: avoid_print
                print('Settings Button Pressed');
              },
              icon: const Icon(Icons.settings),
            ),
            IconButton(
              onPressed: () {
                // ignore: avoid_print
                print('Contact Button Pressed');
              },
              icon: const Icon(Icons.contact_phone_rounded),
            ),
          ],
        ),
      ],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: indexCount,
        fixedColor: Colors.orange,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contact_phone),
            label: "Contact",
          ),
        ],
        onTap: (int index) {
          // ignore: avoid_print
          print("Index: $index");
          //update indexCount
          setState(() {
            indexCount = index;
          });
        },
      ),
      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.green,
              ),
              child: Text(
                'Welcome',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                ),
              ),
            ),
            ListTile(
              title: Text('Home'),
              leading: Icon(Icons.home),
            ),
            Divider(
              color: Colors.black,
              height: 0.0,
            ),
            ListTile(
              title: Text('About'),
              leading: Icon(Icons.info),
            ),
            Divider(
              color: Colors.black,
              height: 0.0,
            ),
            ListTile(
              title: Text('Settings'),
              leading: Icon(Icons.settings),
            ),
            Divider(
              color: Colors.black,
              height: 0.0,
            ),
            ListTile(
              title: Text('Logout'),
              leading: Icon(Icons.logout),
            ),
            Divider(
              color: Colors.black,
              height: 0.0,
            ),
            ListTile(title: Text('App Version: 1.0.0')),
          ],
        ),
      ),
    );
  }
}
