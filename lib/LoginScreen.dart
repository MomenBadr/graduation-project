import 'package:earlyed/Home_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(color: Colors.cyan),
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/LOGO1.png",
              width: 150,
              height: 140,
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              decoration: const InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  hintText: "Email or Phone",
                  hintStyle: TextStyle(color: Colors.black)),
              style: const TextStyle(color: Colors.black),
            ),
            const SizedBox(
              height: 15,
            ),
            TextFormField(
              decoration: const InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  hintText: "Email or Phone",
                  hintStyle: TextStyle(color: Colors.black)),
              style: const TextStyle(color: Colors.black),
            ),
            const SizedBox(height: 15),
            MaterialButton(
              color: Colors.white12,
              padding:
                  const EdgeInsets.symmetric(vertical: 15, horizontal: 150),
              // fixedSize:Size(350,25)),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomeScreen(),
                    ));
              },
              child:
                  const Text("LOG IN", style: TextStyle(color: Colors.white)),
            )
          ],
        ),
      ),
    );
  }
}
