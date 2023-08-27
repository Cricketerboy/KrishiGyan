import 'package:aitra_project/screens/categories.dart';
import 'package:aitra_project/screens/customappbar.dart';
import 'package:aitra_project/screens/map.dart';
import 'package:aitra_project/screens/recommcategories.dart';
import 'package:aitra_project/screens/search.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 1;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.01,
          title: CustomAppBar(),
          backgroundColor: Colors.white,
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.filter_alt_outlined, color: Colors.black38),
            ),
          ],
        ),
        backgroundColor: Colors.green,
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.orange,
          unselectedItemColor: Colors.black38,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined, size: 25),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.location_pin, size: 25),
              label: 'My Station',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.apple, size: 25),
              label: 'Krishi Bazaar',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.square_outlined, size: 25),
              label: 'My farm',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.menu_book_outlined, size: 25),
              label: 'Krishi Gyan',
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
        body: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  MapScreen(),
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      padding: EdgeInsets.all(10.0),
                      child: SearchScreen(),
                    ),
                  ),
                ],
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(23.0),
                topRight: Radius.circular(23.0),
              ),
              child: Container(
                height: 390,
                width: 360,
                color: Colors.white,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 10),
                      Container(
                        margin:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: 70,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 10,
                            itemBuilder: ((context, index) => Category()),
                          ),
                        ),
                      ),
                      Divider(),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 22, vertical: 8),
                        child: Text(
                          'Available Drone Spraying',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Divider(),
                      Container(
                        margin: EdgeInsets.all(5.0),
                        width: 350,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 238, 234, 234),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: ListTile(
                          leading: Image.asset("assets/images/drone.jpg",
                              width: 30, height: 30),
                          title: Text(
                            'Krishakti drones with smart',
                            style: TextStyle(fontSize: 15),
                          ),
                          subtitle: Text(
                            'nozzle spraying starting from 56',
                            style: TextStyle(fontSize: 12),
                          ),
                          trailing: Icon(Icons.arrow_forward),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(5.0),
                        width: 350,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 238, 234, 234),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: ListTile(
                          leading: Image.asset("assets/images/drone.jpg",
                              width: 30, height: 30),
                          title: Text(
                            'Krishakti drones with smart',
                            style: TextStyle(fontSize: 15),
                          ),
                          subtitle: Text(
                            'nozzle spraying starting from 56',
                            style: TextStyle(fontSize: 12),
                          ),
                          trailing: Icon(Icons.arrow_forward),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(5.0),
                        width: 350,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 238, 234, 234),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: ListTile(
                          leading: Image.asset("assets/images/drone.jpg",
                              width: 30, height: 30),
                          title: Text(
                            'Krishakti drones with smart',
                            style: TextStyle(fontSize: 15),
                          ),
                          subtitle: Text(
                            'nozzle spraying starting from 56',
                            style: TextStyle(fontSize: 12),
                          ),
                          trailing: Icon(Icons.arrow_forward),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 22, vertical: 8),
                        child: Text(
                          'Recommended for you',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        margin:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: 70,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 5,
                            itemBuilder: ((context, index) =>
                                Recommendations()),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
