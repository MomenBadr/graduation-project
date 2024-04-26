import 'package:earlyed/LoginScreen.dart';
import 'package:flutter/material.dart';
import 'package:circular_profile/circular_profile.dart';

class StudentInfo extends StatelessWidget {
  const StudentInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        // leading: IconButton(
        //   icon: const Icon(
        //     Icons.home,
        //     size: 35,
        //   ),
        //   onPressed: () {
        //     Navigator.push(
        //         context,
        //         MaterialPageRoute(
        //           builder: (context) => const HomeScreen(),
        //         ));
        //   },
        // ),
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
          Icon(Icons.more_vert_rounded, size: 33, color: Colors.black)
        ],
      ),
      body: Container(
        color: Colors.lightBlue,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
              alignment: Alignment.center,
              child: const Text(
                "STUDENT INFO",
                style: TextStyle(color: Colors.white, fontSize: 36),
              ),
            ),
            Container(
                margin: const EdgeInsets.all(10),
                width: 200,
                height: 200,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(100)),
                child: const CircularProfile(
                  image: AssetImage("assets/images/student.jpg"),
                )),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
              alignment: Alignment.center,
              child: const Text(
                "EMILIA SMITH",
                style: TextStyle(color: Colors.white, fontSize: 36),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
              alignment: Alignment.center,
              child: const Text(
                "12 YEARS OLD",
                style: TextStyle(color: Colors.white, fontSize: 33),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
              alignment: Alignment.center,
              child: const Text(
                "SIX GRADE",
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 70),
              // height:100 ,
              alignment: Alignment.bottomCenter,
              child: FilledButton(
                child: const Text(
                  "LOG OUT",
                  style: TextStyle(fontSize: 40),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginScreen(),
                      ));
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
