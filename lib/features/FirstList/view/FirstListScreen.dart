import 'package:flutter/material.dart';
import 'package:flutter_stas/features/FirstList/widgets/widgets.dart';
import 'package:flutter_stas/repositories/coins/coins_repository.dart';
import 'package:flutter_stas/repositories/coins/models/coin.dart';


class FirstList extends StatefulWidget {
  const FirstList({super.key});

  
  @override
  State<FirstList> createState() => _FirstListState();
}

class _FirstListState extends State<FirstList> {

  List<Coin>? _coinsList;

  @override
  void initState() {
    loadCoins();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Onetwo')),
      ),
      body: _coinsList == null 
      ? const Center(child: CircularProgressIndicator()) 
      : ListView.separated(
        padding: const EdgeInsets.only(top: 16),
        itemCount: _coinsList!.length,
        separatorBuilder: (context, index) => const Divider(),
        itemBuilder: (context, i) {
          final coin = _coinsList![i];
          return OneTile(coin: coin);
        },
        ),
       
    );
  }

  Future<void> loadCoins() async {
    _coinsList = await CoinsRepository().getCoinsList();
    setState(() {
      
    });
  }
}

