import 'package:flutter/material.dart';

class BalanceCard extends StatelessWidget {
  final double balance;
  final String accountNumber;

  const BalanceCard({
    super.key,
    required this.balance,
    required this.accountNumber,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(25),
      decoration: BoxDecoration(
        color: const Color(0xFF0D47A1), // Navy profesional
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Saldo Disponible", style: TextStyle(color: Colors.white70, fontSize: 16)),
          const SizedBox(height: 10),
          Text("\$${balance.toStringAsFixed(2)}",
              style: const TextStyle(color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold)),
          const SizedBox(height: 20),
          Text("Cuenta: $accountNumber", style: const TextStyle(color: Colors.white54, fontSize: 14)),
        ],
      ),
    );
  }
}