import 'package:client/screens/employee-hub-view/components/body.dart';
import 'package:flutter/material.dart';


class EmployeeHubView extends StatefulWidget {
  EmployeeHubView({Key key}) : super(key: key);

  @override
  _EmployeeHubViewState createState() => _EmployeeHubViewState();
}

class _EmployeeHubViewState extends State<EmployeeHubView> {
  int _selectedIndex = 0;
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Service Provider Hub"),
        ),
        body: Body(),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Profile'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              title: Text('Services'),
            )
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.blue,
          onTap: _onItemTapped,
        ),
    );
  }
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}