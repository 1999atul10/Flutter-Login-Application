import 'package:flutter/material.dart';

class EventPage extends StatelessWidget {
  const EventPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("BCIIT Event-Revive Your ChildHood"),
          backgroundColor: Colors.purple,
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 30),
              child: Column(
                children: [
                  Image.asset("assets/312099749_493877739421862_3740541541639478267_n.jpg"),
                  const SizedBox(
                    height: 10,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Image.asset("assets/image2.jpg"),
                  const SizedBox(
                    height: 10,
                  ),
                  Image.asset("assets/image3.jpg"),
                ],

              ),
            ),
          ),
        ),
      ),



    );
  }
}
