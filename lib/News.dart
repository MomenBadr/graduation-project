import 'package:earlyed/add_news.dart';
import 'package:earlyed/news_clicked.dart';
import 'package:flutter/material.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

  final bool isAdmin = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: IconButton(
        //only if Admin
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const AddNews(),
              ));
        },
        icon: const Icon(Icons.add_circle),
        iconSize: 40,
      ),
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
          Icon(Icons.more_vert_rounded, size: 33, color: Colors.black)
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(color: Colors.white10),
          child: Column(
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                alignment: Alignment.center,
                child: const Text(
                  "NEWS",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 30,
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
                child: Image.asset("assets/images/News.png",
                    fit: BoxFit.fitHeight),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text(
                    "New Paint Tools   ",
                    style: TextStyle(fontSize: 20),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const NewsClick(),
                            ));
                      },
                      child: const Text("Read more.."))
                ],
              ),
              Container(
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(25)),
                child: Image.asset("assets/images/News.png",
                    fit: BoxFit.fitHeight),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text(
                    "New Paint Tools   ",
                    style: TextStyle(fontSize: 20),
                  ),
                  TextButton(
                      onPressed: () {}, child: const Text("Read more..")),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
