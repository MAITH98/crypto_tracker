import 'package:flutter/material.dart';

class CryptoCard extends StatelessWidget {
  final String name;
  final String image;
  final double priceChangePercentage24H;
  final double currentPrice;
  final String symbol;

  const CryptoCard({
    super.key,
    required this.name,
    required this.image,
    required this.priceChangePercentage24H,
    required this.currentPrice,
    required this.symbol,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            width: double.infinity,
            height: 140,
            decoration: BoxDecoration(
                gradient: const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromARGB(
                        128, 255, 255, 255), // Pastel Peach with 50% opacity
                    Color(0x301fabf1), // Pastel Light Blue with 50% opacity
                  ],
                  stops: [0.0, 1.0],
                ),
                color: Colors.white,
                border: Border.all(
                  color: const Color(0x301fabf1),
                ),
                borderRadius: BorderRadius.circular(24)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(3),
                            child: Image.network(image),
                          ),
                        ),
                        const SizedBox(width: 16),
                        Text(
                          symbol.toUpperCase(),
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'Current Price',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          '${(currentPrice * 0.38).toStringAsFixed(3)} OMR',
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                        const SizedBox(height: 8),
                        Container(
                          padding: const EdgeInsets.all(6),
                          decoration: BoxDecoration(
                            color: priceChangePercentage24H < 0
                                ? const Color.fromARGB(40, 244, 67, 54)
                                : const Color.fromARGB(40, 76, 175, 79),
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(
                              color: priceChangePercentage24H < 0
                                  ? Colors.red
                                  : Colors.green,
                            ),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              // Icon for increase or decrease
                              Icon(
                                priceChangePercentage24H < 0
                                    ? Icons.arrow_downward
                                    : Icons.arrow_upward,
                                color: priceChangePercentage24H < 0
                                    ? Colors.red[800]
                                    : Colors.green[800],
                                size: 16, // Adjust icon size
                              ),
                              const SizedBox(
                                  width: 4), // Spacer between icon and text
                              // Text displaying the price change percentage
                              Text(
                                '${priceChangePercentage24H < 0 ? priceChangePercentage24H.toStringAsFixed(2) : '+${priceChangePercentage24H.toStringAsFixed(2)}'} %',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall
                                    ?.copyWith(
                                      color: priceChangePercentage24H < 0
                                          ? Colors.red[800]
                                          : Colors.green[800],
                                    ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
