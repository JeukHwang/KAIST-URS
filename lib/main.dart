import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: 'KAIST URS+',
    home: MainPage(),
  ));
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Main Page'),
      // ),
      body: NavigationWidget(),
    );
  }
}

class NavigationWidget extends StatefulWidget {
  const NavigationWidget({super.key});

  @override
  State<NavigationWidget> createState() => _NavigationWidgetState();
}

class _NavigationWidgetState extends State<NavigationWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    MyReservationPage(),
    NewReservationPage(),
    SettingPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '나의 예약',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month_rounded),
            label: '예약',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: '설정',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue[800],
        onTap: _onItemTapped,
      ),
    );
  }
}

class MyReservationPage extends StatelessWidget {
  const MyReservationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('My Reservation'),
        ),
        body: DefaultTabController(
          length: 3,
          child: Scaffold(
            appBar: AppBar(
              bottom: TabBar(
                tabs: [
                  Tab(text: '전체'),
                  Tab(text: '예정'),
                  Tab(text: '과거'),
                ],
              ),
            ),
            body: TabBarView(
              physics: NeverScrollableScrollPhysics(),
              children: [
                Text("hehe"),
                Text("flutter"),
                Text("fun=>fun=>kotlin")
              ],
            ),
          ),
          // child: ElevatedButton(
          //   child: const Text('Open route'),
          //   onPressed: () {
          //     Navigator.push(
          //       context,
          //       MaterialPageRoute(builder: (context) => const SecondRoute()),
          //     );
          //   },
          // )
        ));
  }
}

class NewReservationPage extends StatelessWidget {
  const NewReservationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('New Reservation Page'),
        ),
        body: Center(
            child: ElevatedButton(
          child: const Text('QR 예약'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const QRPage()),
            );
          },
        )));
  }
}

class QRPage extends StatelessWidget {
  const QRPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("QR 예약"),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text('좌석이나 방의 QR을 스캔해주세요'),
            Icon(
              Icons.fullscreen_exit_rounded,
              color: Colors.black,
              size: 100.0,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("촬영하기"),
            ),
          ],
        )));
  }
}

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Setting Page'),
      ),
      body: Text("You don't need any setting HEHE"),
    );
  }
}
