import 'package:http/http.dart' as http;
import 'dart:convert';

Future<void> loginUser(String email, String password) async {
  final url = Uri.parse(
    'http://10.0.2.2:8080/api/v1/auth/login',
  ); // emulator -> host
  print('Wysyłam request na $url');

  final response = await http.post(
    url,
    headers: {'Content-Type': 'application/json'},
    body: jsonEncode({'email': email, 'password': password}),
  );

  print('statusCode: ${response.statusCode}');
  print('body: ${response.body}');

  if (response.statusCode == 200) {
    final data = jsonDecode(response.body);
    print('Zalogowany, token: ${data['token']}');
  } else {
    print('Login failed: ${response.statusCode}, ${response.body}');
    throw Exception('Nie udało się zalogować');
  }
}
