import 'package:e_reciept/core/core.dart';
import 'package:e_reciept/data/remote/network/client/api_client.dart';
import 'package:e_reciept/data/remote/network/network_mapper.dart';
import 'package:e_reciept/data/remote/repository/user_repository.dart';
import 'package:e_reciept/ui/login_ui.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

class InitialData {
  final List<SingleChildWidget> providers;

  InitialData({required this.providers});
}

Future<void> main() async {
  final data = await _createData();
  runApp(
    MultiProvider(
      providers: data.providers,
      child: MaterialApp(
        home: LoginScreen(data: data),
      ),
    ),
  );
}

Future<InitialData> _createData() async {
  final log = Logger(
    printer: PrettyPrinter(),
    level: kDebugMode ? Level.verbose : Level.nothing,
  );

  final apiClient = ApiClient(baseUrl: apiURL);
  final networkMapper = NetworkMapper(log: log);

  final userRepo = UserRepository(
    apiClient: apiClient,
    networkMapper: networkMapper,
  );

  return InitialData(providers: [
    Provider<Logger>.value(
      value: log,
    ),
    Provider<UserRepository>.value(value: userRepo),
  ]);
}
