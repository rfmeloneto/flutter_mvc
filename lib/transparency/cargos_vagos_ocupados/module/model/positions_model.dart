import 'collection_model.dart';

class Positions {
  final List<CollectionModel> collection;

  Positions({required this.collection});

  static fromJson(Map json) {
    return Positions(collection: CollectionModel.fromJson(json['collection']));
  }
}
