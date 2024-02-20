import 'package:Xcelerate/Screens/Addtodos.dart';
import 'package:flutter/material.dart';
import 'package:weather_icons/weather_icons.dart';
import 'package:flutter/src/services/asset_manifest.dart' as asset_manifest;
import 'Screens/MemoPad.dart';
import 'Screens/Addtodos.dart';
import 'Screens/Calendar.dart';
import 'Screens/Timetable.dart';
import 'Screens/Memostorage.dart';
import 'Screens/History.dart';



void main() => runApp(const Todohome());

class Todohome extends StatelessWidget {
  const Todohome({super.key, Key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          backgroundColor: Colors.blue.shade900,
          toolbarHeight: 150, // Set the height here
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Good Morning Devnith',
                style: TextStyle(
                  fontSize: 23,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'ProtestRiot-Regular',
                ),
              ),
              Text(
                "What's on your mind today?",
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'RacingSansOne-Regular',
                  fontStyle: FontStyle.italic,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        body: const Home(),
      ),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key});
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(17.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Card(
            shape: RoundedRectangleBorder(
              borderRadius:
              BorderRadius.circular(21.0), // Adjust the radius as needed
            ),
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ListTile(
                    leading: BoxedIcon(
                      WeatherIcons.day_sunny,
                      size: 40,
                      color: Colors.black,
                    ),
                    title: Text(
                      'Weather Data',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      'Paris, France',
                      textAlign: TextAlign.center,
                      style: TextStyle(),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 12), // Adjust spacing between Card and GridView
          Expanded(
            child: GridView.count(
              primary: false,
              padding: const EdgeInsets.all(20),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 2,
              children: <Widget>[
                GestureDetector( // Using GestureDetector for making Memo Pad clickable
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TasksScreen()), // Navigating to MemoPad.dart
                    );
                  },
                  child: gridItem('Add Todo\'s', Icons.playlist_add),
                ),
                GestureDetector( // Using GestureDetector for making Memo Pad clickable
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Calendar()), // Navigating to MemoPad.dart
                    );
                  },
                  child: gridItem('Calendar', Icons.calendar_today),
                ),
                GestureDetector( // Using GestureDetector for making Memo Pad clickable
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => NotesPage(title: 'Memo Pad')), // Navigating to MemoPad.dart
                    );
                  },
                  child: gridItem('Memo Pad', Icons.notes),
                ),
                GestureDetector( // Using GestureDetector for making Memo Pad clickable
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Timetable()), // Navigating to MemoPad.dart
                    );
                  },
                  child:  gridItem('Time Table', Icons.schedule),
                ),



                GestureDetector( // Using GestureDetector for making Memo Pad clickable
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Memostorage()), // Navigating to MemoPad.dart
                    );
                  },
                  child: gridItem('Memo Storage', Icons.storage),
                ),
                GestureDetector( // Using GestureDetector for making Memo Pad clickable
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => History()), // Navigating to MemoPad.dart
                    );
                  },
                  child: gridItem('History', Icons.history),
                ),


              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget gridItem(String text, IconData iconData) {
    return Container(
      padding: const EdgeInsets.all(8),
      color: Colors.teal[100],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            iconData,
            size: 45,
          ),
          SizedBox(height: 8),
          Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
