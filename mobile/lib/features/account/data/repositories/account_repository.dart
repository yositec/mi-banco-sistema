import 'package:dio/dio.dart';
import '../../domain/models/account_model.dart'; // Asegúrate de tener tu modelo aquí

class AccountRepository {
  final Dio _dio = Dio(BaseOptions(
    baseUrl: 'http://10.0.2.2:8080/api/v1', // 10.0.2.2 es la IP especial del emulador para acceder a tu PC
    connectTimeout: const Duration(seconds: 5),
  ));

  Future<Account> getAccount(String accountNumber) async {
    try {
      final response = await _dio.get('/accounts/$accountNumber');
      return Account.fromJson(response.data);
    } catch (e) {
      throw Exception('Error al obtener la cuenta: $e');
    }
  }
}