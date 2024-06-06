import 'package:flutter/material.dart';

class ForthScreen extends StatefulWidget {
  const ForthScreen({Key? key}) : super(key: key);

  @override
  State<ForthScreen> createState() => _ForthScreenState();
}

class _ForthScreenState extends State<ForthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[200],
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            size: 16,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context, '/first');
          },
        ),
        titleSpacing: 00.0,
        centerTitle: true,
        toolbarHeight: 50.2,
        toolbarOpacity: 0.8,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(25),
              bottomLeft: Radius.circular(25)),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const SizedBox(height: 15),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Learning App',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 28,
                  color: Colors.deepPurple,
                  fontWeight: FontWeight.w700,
                  // fontFamily: 'PTSerif'
                ),
              ),
            ],
          ),
          const SizedBox(height: 30),
          Image(image: AssetImage('assets/forthnew.png')),
        ],
      ),
    );
  }
}
