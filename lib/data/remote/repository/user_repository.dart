import 'package:e_reciept/data/remote/network/client/api_client.dart';
import 'package:e_reciept/domain/model/user.dart';

import '../network/network_mapper.dart';

class UserRepository {
  final ApiClient apiClient;
  final NetworkMapper networkMapper;

  UserRepository({required this.apiClient, required this.networkMapper});

  Future<List<User>> getUpcomingUsers() async {
    final upcomingUsers = await apiClient.getUpcomingUsers();
    return networkMapper.toUsers(upcomingUsers.results);
  }
}
