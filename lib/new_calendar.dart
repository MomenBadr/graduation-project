import 'package:flutter/material.dart';

class CalendarScreen extends StatefulWidget {
  const CalendarScreen({super.key});

  @override
  _CalendarScreenState createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  List<bool> attendanceList = List.generate(31, (index) => false);

  void toggleAttendance(int day) {
    setState(() {
      attendanceList[day - 1] = !attendanceList[day - 1];
    });
  }

  int getAbsentCount() {
    return attendanceList.where((attendance) => !attendance).length;
  }

  int getPresentCount() {
    return attendanceList.where((attendance) => attendance).length;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Attendance Calendar'),
      ),
      body: Column(
        children: [
          Text(
            'Absent: ${getAbsentCount()}',
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.red,
            ),
          ),
          Text(
            'Present: ${getPresentCount()}',
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.green,
            ),
          ),
          GridView.count(
            crossAxisCount: 7,
            shrinkWrap: true,
            children: List.generate(31, (index) {
              final day = index + 1;
              return GestureDetector(
                onTap: () {
                  toggleAttendance(day);
                },
                child: Container(
                  margin: const EdgeInsets.all(4.0),
                  decoration: BoxDecoration(
                    color: attendanceList[index] ? Colors.green : Colors.red,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Center(
                    child: Text(
                      '$day',
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}