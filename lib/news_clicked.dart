import 'package:flutter/material.dart';


class NewsClick extends StatelessWidget {
  const NewsClick({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: IconButton(
        onPressed: () {},
        icon: const Icon(Icons.edit),
        iconSize: 40,
      ),
      appBar: AppBar(
        toolbarHeight: 100,

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
      body: Container(
        decoration: const BoxDecoration(color: Colors.white10),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
              alignment: Alignment.center,
              child: const Text(
                "NEWS",
                style: TextStyle(
                  fontSize: 50,
                  color: Colors.black,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(25)),
              child:
                  Image.asset("assets/images/News.png", fit: BoxFit.fitHeight),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.black26)
              ),
              height: 200,
              width: 350,
              child:
              const Text(
                "New Paint Tools has been added to our school lately,"
                    "School management has brought some extra paint tools   ",
                style: TextStyle(fontSize: 20),
              ),
            )
          ],
        ),
      ),
    );
  }
}
