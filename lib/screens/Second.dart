import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

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
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 20),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(image: AssetImage('assets/main.jpg'), height: 300),
              ],
            ),
            const SizedBox(height: 20),
            Column(
              children: <Widget>[
                const Text(
                  'Online learning platform',
                  style: TextStyle(
                      fontSize: 22,
                      color: Colors.purpleAccent,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                InkWell(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        backgroundColor: Colors.purpleAccent[100],
                        padding: const EdgeInsets.fromLTRB(100, 10, 100, 10),
                        elevation: 5),
                    onPressed: () {
                      Navigator.pushNamed(context, '/third');
                    },
                    child: const Text(
                      'Start Learning',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          wordSpacing: 2,
                          letterSpacing: 1),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
