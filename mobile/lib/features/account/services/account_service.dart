import 'package:dio/dio.dart';
import '../data/models/account.dart';


class AccountService {
  // 10.0.2.2 es el alias del localhost de tu PC para el emulador Android
  final Dio _dio = Dio(BaseOptions(baseUrl: 'http://10.0.2.2:8080/api/v1'));

  Future<List<Account>> getAccounts() async {
    final response = await _dio.get('/accounts');
    print("Respuesta cruda del servidor: ${response.data}");
    return (response.data as List).map((i) => Account.fromJson(i)).toList();
  }

  Future<void> createAccount(Account account) async {
    await _dio.post('/accounts', data: {
      "accountNumber": account.accountNumber,
      "balance": account.balance,
    });
  }
}