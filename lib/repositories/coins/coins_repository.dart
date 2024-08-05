import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stas/repositories/coins/models/coin.dart';

class CoinsRepository {
  Future<List<Coin>> getCoinsList() async{
    final response = await Dio().get(
      'https://min-api.cryptocompare.com/data/pricemultifull?fsyms=BTC,ETH,BNB&tsyms=USD'
    );

    final data = response.data as Map<String, dynamic>;
    final dataRaw = data['RAW'] as Map<String, dynamic>;
    final dataList = dataRaw.entries.map((e) {
      final usdData = (e.value as Map<String, dynamic>)['USD'] as Map<String, dynamic>;
      final price = usdData['PRICE'];
      final imageURL = usdData['IMAGEURL'];
      return Coin(
          name: e.key,
          priceInUSD: price,
          imageURL: 'https://www.cryptocompare.com/$imageURL',
        );
      }).toList();
        return dataList;
  }
}