import 'package:flutter/material.dart';
import 'package:mobile/features/account/presentation/widgets/balance_card.dart';
import '../data/models/account.dart';
import '../services/account_service.dart';

class AccountTestScreen extends StatefulWidget {
  @override
  _AccountTestScreenState createState() => _AccountTestScreenState();
}

class _AccountTestScreenState extends State<AccountTestScreen> {
  final AccountService _service = AccountService();
  List<Account> _accounts = [];
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _fetchAccounts();
  }

  Future<void> _fetchAccounts() async {
    try {
      final data = await _service.getAccounts();
      setState(() {
        _accounts = data;
        _isLoading = false;
      });
      print("¡Éxito! Cuentas recibidas: ${data.length}");
    } catch (e) {
      print("Error de conexión: $e");
      setState(() => _isLoading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Prueba de Conexión")),
      body: _isLoading
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: _accounts.length,
              itemBuilder: (context, index) {
                return BalanceCard(
                  balance: _accounts[index].balance,
                  accountNumber: _accounts[index].accountNumber,
                );
              },
            ),
    );
  }
}