import 'package:crypto_tracker/features/home/view_model/coin_controller.dart';
import 'package:crypto_tracker/shared/components/header.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:crypto_tracker/features/home/widgets/crypto_card.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final CoinController controller = Get.put(CoinController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 248, 250, 252),
      body: Column(
        children: [
          const CustomAppBar(),
          Expanded(
            // Use Expanded to let ListView.builder take available space and scroll properly
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Obx(
                () => controller.isLoading.value
                    ? const Center(
                        child: CircularProgressIndicator(),
                      )
                    : ListView.builder(
                        itemCount: controller.coinList.length,
                        itemBuilder: (context, index) {
                          return CryptoCard(
                            name: controller.coinList[index].name,
                            image: controller.coinList[index].image,
                            priceChangePercentage24H: controller
                                .coinList[index].priceChangePercentage24H,
                            currentPrice:
                                controller.coinList[index].currentPrice,
                            symbol: controller.coinList[index].symbol,
                          );
                        },
                      ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
