import 'package:flutter/material.dart';

class SelectedButton extends StatefulWidget {
  const SelectedButton({super.key});

  @override
  _SelectedButtonState createState() => _SelectedButtonState();
}

class _SelectedButtonState extends State<SelectedButton> {
  String _selectedButton = '';

  void _onButtonPressed(String buttonText) {
    setState(() {
      _selectedButton = buttonText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: OutlinedButton(
                onPressed: () => _onButtonPressed('Beginner'),
                style: OutlinedButton.styleFrom(
                  backgroundColor: _selectedButton == 'Beginner' ? Colors.purple : Colors.transparent,
                  side: const BorderSide(color: Colors.purple, width: 1),
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                ),
                child: Text(
                  'Beginner',
                  style: TextStyle(
                    color: _selectedButton == 'Beginner' ? Colors.white : Colors.deepPurple,
                    fontSize: 12,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: OutlinedButton(
                onPressed: () => _onButtonPressed('Intermediate'),
                style: OutlinedButton.styleFrom(
                  backgroundColor: _selectedButton == 'Intermediate' ? Colors.purple : Colors.transparent,
                  side: const BorderSide(color: Colors.purple, width: 1),
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                ),
                child: Text(
                  'Intermediate',
                  style: TextStyle(
                    color: _selectedButton == 'Intermediate' ? Colors.white : Colors.deepPurple,
                    fontSize: 12,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: OutlinedButton(
                onPressed: () => _onButtonPressed('Expert'),
                style: OutlinedButton.styleFrom(
                  backgroundColor: _selectedButton == 'Expert' ? Colors.purple : Colors.transparent,
                  side: const BorderSide(color: Colors.purple, width: 1),
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                ),
                child: Text(
                  'Expert',
                  style: TextStyle(
                    color: _selectedButton == 'Expert' ? Colors.white : Colors.deepPurple,
                    fontSize: 12,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}