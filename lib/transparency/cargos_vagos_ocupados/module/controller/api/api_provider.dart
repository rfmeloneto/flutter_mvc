import 'package:dio/dio.dart';
import '../../model/positions_model.dart';

class ApiProvider {
  final _dio = Dio();
  final _baseUrl = 'http://api.npoint.io/fac5d9952672f587e1c1';

  Future<Positions> fetchPositions() async {
    try {
      Response response = await _dio.get(_baseUrl);
      return Positions.fromJson(response.data);
    } catch (e, stackTrace) {
      throw Exception("error $e , satckTrace $stackTrace");
    }
  }
}
