import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/size/kHeight.dart';
import '../../core/size/kWidth.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _counter = 0;
  String _warningMessage = '';

  void _incrementCounter() {
    setState(() {
      _counter++;
      _warningMessage = '';
    });
  }

  void _decrementCounter() {
    setState(() {
      setState(() {
        if (_counter > 0) {
          _counter--;
        }
        if (_counter == 0) {
          _warningMessage = 'Cannot go below 0';
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Counter: $_counter',
            style: TextStyle(
                fontSize: 58.sp,
                fontWeight: FontWeight.bold,
                color: Colors.black),
          ),
          kHeight20,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: _incrementCounter,
                child: const Text('Increment'),
              ),
              kWidth20,
              ElevatedButton(
                onPressed: _decrementCounter,
                child: const Text('Decrement'),
              ),
            ],
          ),
          kHeight20,
          Text(
            _warningMessage,
            style: TextStyle(
                color: Colors.red,
                fontSize: 40.sp,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    ));
  }
}
