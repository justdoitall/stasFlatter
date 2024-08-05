import 'package:flutter/material.dart';
import 'package:flutter_stas/repositories/coins/models/coin.dart';

class OneTile extends StatelessWidget {
  const OneTile({
    super.key,
    required this.coin,
  });

  final Coin coin;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ListTile(
     leading: Image.network(coin.imageURL),
      trailing: const Icon(
        Icons.arrow_forward_ios,
        color: Colors.white,
      ),
      onTap: () {
        Navigator.of(context).pushNamed(
          '/coin',
          arguments: coin,
        );
      },
      title: Text(
        coin.name,
        style: theme.textTheme.bodyMedium,
      ),
      subtitle: Text(
        '${coin.priceInUSD} \$',
        style: theme.textTheme.labelSmall,
      ),
    );
  }
}
