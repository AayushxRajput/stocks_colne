import 'package:flutter/material.dart';

class MutualFunds extends StatefulWidget {
  const MutualFunds({super.key});

  @override
  State<MutualFunds> createState() => _MutualFundsState();
}

class _MutualFundsState extends State<MutualFunds> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyanAccent,

      body: Container(
        color: const Color(0xffC4DFCB),
        child: Center(
          child: Text(
            "MutualFunds",
            style: TextStyle(
              color: Colors.green[900],
              fontSize: 45,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
