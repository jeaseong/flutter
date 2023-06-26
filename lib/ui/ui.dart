import 'package:flutter/material.dart';
import 'package:my_app/ui/widgets/button.dart';
import 'package:my_app/ui/widgets/currency_card.dart';

class UiScreen extends StatelessWidget {
  const UiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF181818),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 70,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Text(
                      "Hey, jaeseong!!!!",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Welcome back",
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.5),
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Text(
              'Total Balance',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white.withOpacity(0.5),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              '\$4 194 482',
              style: TextStyle(
                fontSize: 42,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Button(
                    text: 'Transfer',
                    bgColor: Colors.amber,
                    textColor: Colors.black),
                Button(
                    text: "Request",
                    bgColor: Color(0xFF1F2123),
                    textColor: Colors.white)
              ],
            ),
            const SizedBox(
              height: 100,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Text(
                  'Wallets',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text('View All',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.5),
                    )),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const CurrencyCard(
              name: 'Euro',
              code: 'EUR',
              amount: '4 284',
              icon: Icons.euro_rounded,
              isInverted: false,
              order: 0,
            ),
            const CurrencyCard(
              name: 'Bitcoin',
              code: 'BTC',
              amount: '9 785',
              icon: Icons.currency_bitcoin,
              isInverted: true,
              order: 1,
            ),
            const CurrencyCard(
              name: 'Dollar',
              code: 'USD',
              amount: '4 284',
              icon: Icons.attach_money_outlined,
              isInverted: false,
              order: 2,
            ),
          ],
        ),
      ),
      // bottomNavigationBar: const BottomNavigationBarExampleApp(),
    );
  }
}
