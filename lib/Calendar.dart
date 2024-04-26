import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class Calendar extends StatefulWidget {
  const Calendar({super.key});

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  DateTime today = DateTime.now();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: IconButton(
        onPressed: () {}, icon: const Icon(Icons.edit), iconSize:40,),
      appBar: AppBar(
        toolbarHeight: 100,
        // leading: IconButton(
        //   icon: const Icon(Icons.home, size: 35,),
        //   onPressed: () {
        //     Navigator.push(
        //         context,
        //         MaterialPageRoute(builder: (context) => const HomeScreen(),));
        //   },
        // ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(25),
              bottomLeft: Radius.circular(25)),
        ),
        title: Column(
          children: [
            Image.asset(
              "assets/images/EARLYED.png",
              width: 150,
              height: 100,
              fit: BoxFit.fill,
            ),
          ],
        ),
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
        actions: const [
          Icon(
              Icons.more_vert_rounded,
              size: 33,
              color: Colors.black

          )
        ],
      ),
      body: Column(
        children: [
          Container(padding: const EdgeInsets.all(20),
            child: const Text(
              "CALENDAR",
              style: TextStyle(
                  fontSize: 30, fontWeight: FontWeight.bold
              ),
            ),
          ),
          const SizedBox(height: 20,),
          TableCalendar(
            lastDay: DateTime.utc(2030, 10, 5),
            firstDay: DateTime.utc(2010, 10, 5),
            focusedDay: today,
          ),
        ],
      ),
    );
  }
}
