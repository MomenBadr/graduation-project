import 'package:earlyed/Home_screen.dart';
import 'package:flutter/material.dart';

class Grades extends StatelessWidget {
  const Grades({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        // leading: IconButton(
        //   icon: const Icon(Icons.home,size: 35,),
        //   onPressed: () {
        //     Navigator.push(
        //         context, MaterialPageRoute(builder: (context) => HomeScreen(),));
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
          Icon(Icons.more_vert_rounded, size: 33, color: Colors.black)
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 0),
            alignment: Alignment.center,
            child: const Text(
              "GRADES",
              style: TextStyle(
                fontSize: 40,
                color: Colors.black,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(20),
            width: 280,
            height: 80,
            padding: const EdgeInsets.all(15),
            alignment: Alignment.topCenter,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(100)),
              border: Border.all(color: Colors.blueAccent),
            ),
            child: const Text(
              "Math    50/50",
              style: TextStyle(
                fontSize: 35,
                color: Colors.black,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(20),
            width: 280,
            height: 80,
            padding: const EdgeInsets.all(15),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(100)),
              border: Border.all(color: Colors.blueAccent),
            ),
            child: const Text(
              "Science   50/50",
              style: TextStyle(
                fontSize: 35,
                color: Colors.black,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(20),
            width: 280,
            height: 80,
            padding: const EdgeInsets.all(15),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(100)),
              border: Border.all(color: Colors.blueAccent),
            ),
            child: const Text(
              "English    50/50",
              style: TextStyle(
                fontSize: 35,
                color: Colors.black,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(20),
            width: 280,
            height: 80,
            padding: const EdgeInsets.all(15),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(100)),
              border: Border.all(color: Colors.blueAccent),
            ),
            child: const Text(
              "Arabic   47/50",
              style: TextStyle(
                fontSize: 35,
                color: Colors.black,
              ),
            ),
          ),
          Row(
            children: [
              Container(
                alignment: Alignment.bottomLeft,
                width: 100,
                height: 200,
                child: IconButton(
                  style: ButtonStyle(iconSize: MaterialStateProperty.all(60)),
                  onPressed: () {},
                  icon: const Icon(Icons.message_sharp),
                  alignment: Alignment.bottomLeft,
                ),
              ),
              Container(
                alignment: Alignment.bottomRight,
                width: 300,
                height: 200,
                child: IconButton(
                  style: ButtonStyle(iconSize: MaterialStateProperty.all(60)),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomeScreen(),
                        ));
                  },
                  icon: const Icon(Icons.arrow_circle_right_sharp),
                  alignment: Alignment.bottomRight,
                  iconSize: 60,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
