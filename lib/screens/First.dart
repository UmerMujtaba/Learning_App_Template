import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[300],
      appBar: AppBar(
        backgroundColor: Colors.purple[300],
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(elevation: 5),
                    onPressed: () {
                      Navigator.pushNamed(context, '/second');
                    },
                    child: const Text(
                      'Skip',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
      body: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Text(
              'Learning App',
              style: TextStyle(
                fontSize: 30,
                letterSpacing: 2,
                color: Colors.white,
                fontWeight: FontWeight.w500,
                wordSpacing: 4
              ),
            ),
          )
        ],
      ),
    );
  }
}
