import 'package:postgres/postgres.dart';

class DatabaseConnection {
  late PostgreSQLConnection _connection;

  Future<void> connect() async {
    _connection = PostgreSQLConnection(
      "10.0.2.2", 5432, "drive_license",
      username: "postgres",
      password: "123",
    );
    await _connection.open();
  }

  Future<PostgreSQLResult> executeQuery(String query) async {
    return _connection.query(query);
  }

  Future<void> disconnect() async {
    await _connection.close();
  }
}