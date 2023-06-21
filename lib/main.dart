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
  //declare property index count
  int indexCount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
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
        title: const Text(
          'Buysel Ng',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 60.0),
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
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const BuyselRegister()),
                  );
                },
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
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const BuyselLogin()),
                  );
                },
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
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const BuyselHomePage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 70.0, vertical: 15.0),
                  backgroundColor: Colors.white,
                  shape: const StadiumBorder(),
                  elevation: 0.0,
                ),
                child: const Text(
                  "Skip",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    letterSpacing: 1.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//Login Route

class BuyselLogin extends StatefulWidget {
  const BuyselLogin({super.key});

  @override
  State<BuyselLogin> createState() => _BuyselLoginState();
}

class _BuyselLoginState extends State<BuyselLogin> {
  //scaffoldkey
  // final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  //username controller
  final TextEditingController _usernameController = TextEditingController();
  //password controller
  final TextEditingController _passwordController = TextEditingController();

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
          width: 239.0,
          height: 56.0,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 10.0),
            Container(
              width: double.infinity,
              height: 150,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/loginimage.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 40.0),
            Container(
              width: 300,
              alignment: Alignment.center,
              child: const Text(
                'Login to access thousands of products and services from across Nigeria',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 19.0,
                  letterSpacing: 1,
                  height: 1.2,
                ),
              ),
            ),
            const SizedBox(height: 40.0),
            Padding(
              padding: const EdgeInsets.fromLTRB(50.0, 0.0, 50.0, 0.0),
              child: TextField(
                // maxLines: 4,
                controller: _usernameController,
                decoration: const InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(35.0)),
                    borderSide: BorderSide(color: Colors.black, width: 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(35.0)),
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  labelText: 'Enter your email',
                  hintText: 'Email',
                ),
              ),
            ),
            const SizedBox(height: 10.0),
            Padding(
              padding: const EdgeInsets.fromLTRB(50.0, 0.0, 50.0, 0.0),
              child: TextField(
                // maxLines: 4,
                controller: _passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(35.0)),
                    borderSide: BorderSide(color: Colors.black, width: 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(35.0)),
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  labelText: 'Password',
                  hintText: 'Password',
                ),
              ),
            ),
            const SizedBox(height: 10.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const BuyselHomePage()),
                );
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                    horizontal: 125.0, vertical: 20.0),
                backgroundColor: Colors.green,
                shape: const StadiumBorder(),
                elevation: 0.0,
              ),
              child: const Text(
                "Login",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  letterSpacing: 1.0,
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            const Text('OR',
                style: TextStyle(
                  fontSize: 15.0,
                )),
            Padding(
              padding: const EdgeInsets.fromLTRB(100.0, 0.0, 0.0, 0.0),
              child: Align(
                alignment: const Alignment(-1.0, -1.0),
                child: TextButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const BuyselHomePage()),
                    );
                  },
                  icon: Image.asset('assets/fblogin.png'),
                  label: const Text('Login with Facebook',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17.0,
                        letterSpacing: 1,
                      )),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(100.0, 0.0, 0.0, 0.0),
              child: Align(
                alignment: const Alignment(-1.0, -1.0),
                child: TextButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const BuyselHomePage()),
                    );
                  },
                  icon: Image.asset('assets/glogin.png'),
                  label: const Text('Login with Google',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17.0,
                        letterSpacing: 1,
                      )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// RegisterRoute

class BuyselRegister extends StatefulWidget {
  const BuyselRegister({super.key});

  @override
  State<BuyselRegister> createState() => _BuyselRegisterState();
}

class _BuyselRegisterState extends State<BuyselRegister> {
  //scaffoldkey
  // final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  //username controller
  final TextEditingController _usernameController = TextEditingController();
  //password controller
  final TextEditingController _passwordController = TextEditingController();

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
          width: 239.0,
          height: 56.0,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 10.0),
            Container(
              width: double.infinity,
              height: 150,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/registerimage.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 40.0),
            Container(
              width: 300,
              alignment: Alignment.center,
              child: const Text(
                'Here, real sellers meet real buyers! Register to start selling or buying today!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 19.0,
                  letterSpacing: 1,
                  height: 1.2,
                ),
              ),
            ),
            const SizedBox(height: 40.0),
            Padding(
              padding: const EdgeInsets.fromLTRB(50.0, 0.0, 50.0, 0.0),
              child: TextField(
                // maxLines: 4,
                controller: _usernameController,
                decoration: const InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(35.0)),
                    borderSide: BorderSide(color: Colors.black, width: 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(35.0)),
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  labelText: 'Email Address',
                  hintText: 'Email Address',
                ),
              ),
            ),
            const SizedBox(height: 10.0),
            Padding(
              padding: const EdgeInsets.fromLTRB(50.0, 0.0, 50.0, 0.0),
              child: TextField(
                // maxLines: 4,
                controller: _passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(35.0)),
                    borderSide: BorderSide(color: Colors.black, width: 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(35.0)),
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  labelText: 'Password',
                  hintText: 'Password',
                ),
              ),
            ),
            const SizedBox(height: 10.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const BuyselHomePage()),
                );
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                    horizontal: 115.0, vertical: 20.0),
                backgroundColor: Colors.orange,
                shape: const StadiumBorder(),
                elevation: 0.0,
              ),
              child: const Text(
                "Register",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  letterSpacing: 1.0,
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            const Text('OR',
                style: TextStyle(
                  fontSize: 15.0,
                )),
            Padding(
              padding: const EdgeInsets.fromLTRB(80.0, 0.0, 0.0, 0.0),
              child: Align(
                alignment: const Alignment(-1.0, -1.0),
                child: TextButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const BuyselHomePage()),
                    );
                  },
                  icon: Image.asset('assets/fblogin.png'),
                  label: const Text('Register with Facebook',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17.0,
                        letterSpacing: 1,
                      )),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(80.0, 0.0, 0.0, 0.0),
              child: Align(
                alignment: const Alignment(-1.0, -1.0),
                child: TextButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const BuyselHomePage()),
                    );
                  },
                  icon: Image.asset('assets/glogin.png'),
                  label: const Text('Register with Google',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17.0,
                        letterSpacing: 1,
                      )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// CardRoute

class BuyselCard extends StatefulWidget {
  const BuyselCard({super.key});

  @override
  State<BuyselCard> createState() => _BuyselCardState();
}

class _BuyselCardState extends State<BuyselCard> {
  //scaffoldkey
  // final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  //username controller
  // final TextEditingController _usernameController = TextEditingController();
  //password controller
  // final TextEditingController _passwordController = TextEditingController();

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
                          // print('played');
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
                          // print('paused');
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

// HomeRoute

class BuyselHomePage extends StatefulWidget {
  const BuyselHomePage({super.key});

  @override
  State<BuyselHomePage> createState() => _BuyselHomePageState();
}

class _BuyselHomePageState extends State<BuyselHomePage> {
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
        elevation: 1.0,
        centerTitle: true,
        title: Image.asset(
          'assets/inlogo.png',
          width: 200.0,
          height: 56.0,
        ),
        actions: [
          IconButton(
            onPressed: () {
              // print('search');
            },
            icon: Image.asset('assets/search.png'),
          ),
          const SizedBox(width: 13),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 1777,
              // backgroundImage
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/cat.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.black,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset('assets/home.png'),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/saved.png'),
            label: "Saved",
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/post.png'),
            label: "Post An Ad",
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/message.png'),
            label: "Messages",
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/account.png'),
            label: "Account",
          ),
        ],
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
    );
  }
}
