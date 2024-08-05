import 'package:flutter/material.dart';

class SingleCoinScreen extends StatefulWidget {
  const SingleCoinScreen({super.key});

  @override
  State<SingleCoinScreen> createState() => _SingleCoinScreenState();
}

class _SingleCoinScreenState extends State<SingleCoinScreen> {
  String? coinName;

  @override
  void didChangeDependencies() {
    final args = ModalRoute.of(context)?.settings.arguments;
    assert(args != null && args is String, 'You must provide String args');

    coinName = args as String;; 
    super.didChangeDependencies();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(coinName ?? '...'),
         ),
    );
  }
}