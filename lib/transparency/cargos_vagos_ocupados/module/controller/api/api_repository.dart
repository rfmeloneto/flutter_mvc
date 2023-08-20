import '../../model/positions_model.dart';
import 'api_provider.dart';

class ApiRepository {
  final _apiProvider = ApiProvider();

  Future<Positions> fetchPositions() {
    return _apiProvider.fetchPositions();
  }
}
