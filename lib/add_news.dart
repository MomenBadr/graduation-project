import 'package:flutter/material.dart';

class AddNews extends StatelessWidget {
  const AddNews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return Container(
                        padding: const EdgeInsets.all(10),
                        height: 150,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Choose your Image",
                              style: TextStyle(fontSize: 20, ),),
                            InkWell(
                                onTap: () {},
                                child: Container(
                                  width: double.infinity,
                                  padding: const EdgeInsets.all(10),
                                  child: const Row(
                                    children: [
                                      Icon(Icons.photo),
                                      Text(
                                        "From Gallery",
                                        style: TextStyle(fontSize: 20),
                                      )
                                    ],
                                  ),
                                )),
                            InkWell(
                                onTap: () {},
                                child: Container(
                                  width: double.infinity,
                                  padding: const EdgeInsets.all(10),
                                  child: const Row(
                                    children: [
                                      Icon(Icons.camera_alt_outlined),
                                      Text(
                                        "From Camera",
                                        style: TextStyle(fontSize: 20),
                                      )
                                    ],
                                  ),
                                )),
                          ],
                        ),
                      );
                    },
                  );
                },
                child: const Text("Upload Image")),
            TextFormField(
              minLines: 1,
              maxLines: 8,
              decoration: const InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: "type here",
              ),
            )
          ],
        ),
      ),
    );
  }

// modelBottomSheet() {
//    showModalBottomSheet(
//       context:context,
//       builder: (BuildContext context) {
//         return Container(
//           padding: const EdgeInsets.all(10),
//           height: 100,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               const Text("Choose your Image"),
//               InkWell(
//                   onTap: () {},
//                   child: Container(
//                     width: double.infinity,
//                     padding: const EdgeInsets.all(10),
//                     child: const Row(
//                       children: [
//                         Icon(Icons.photo),
//                         Text("From Gallery", style: TextStyle(
//                             fontSize: 20
//                         ),)
//                       ],
//                     ),
//                   )),
//               InkWell(
//                   onTap: () {},
//                   child: Container(
//                     width: double.infinity,
//                     padding: const EdgeInsets.all(10),
//                     child: const Row(
//                       children: [
//                         Icon(Icons.camera_alt_outlined),
//                         Text("From Camera", style: TextStyle(
//                             fontSize: 20
//                         ),)
//                       ],
//                     ),
//                   )),
//             ],
//           ),
//         );
//       });
// }
}
