import 'package:diplomka/entities/pub_entity.dart';

abstract interface class PubsRepository {
  getById(int id);
  getAll();
  addPub(PubEntity pub);
  deletePub(int id);
  getByName(String table);
}
