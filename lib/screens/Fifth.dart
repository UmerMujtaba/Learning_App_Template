import 'package:flutter/material.dart';

class FifthScreen extends StatelessWidget {
  const FifthScreen({Key? key}) : super(key: key);

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
        title: const Text(
          'Home',
          style: TextStyle(
              color: Colors.deepPurple,
              fontSize: 18,
              fontWeight: FontWeight.w600,
              fontFamily: 'PTSerif'),
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
      body: Padding(
        padding: const EdgeInsets.only(left: 14.0),
        child: Column(
          children: <Widget>[
            const SizedBox(height: 30),
            const Padding(
              padding: EdgeInsets.only( top: 12),
              child: Row(
                children: [
                  Text(
                    'Welcome Back',
                    style: TextStyle(color: Colors.deepPurple, fontSize: 34),
                  ),
                ],
              ),
            ),
            const Row(
              children: [
                Text(
                  'John Doe',
                  style: TextStyle(color: Colors.deepPurple, fontSize: 30),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 14),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        backgroundColor: Colors.purple[300],
                        elevation: 5),
                    onPressed: () {},
                    child: const Text(
                      'Book Class',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      backgroundColor: Colors.purple[300],
                      elevation: 5),
                  onPressed: () {},
                  child: const Text(
                    'My Courses',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 50),
            const Row(
              children: [
                Text('Last Classes', style: TextStyle(
                  color: Colors.deepPurple,
                  fontSize: 26
                ),),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
