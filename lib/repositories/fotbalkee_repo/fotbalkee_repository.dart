import 'package:diplomka/entities/pub_entity.dart';

abstract interface class FotbalkeeRepository {
  getById(int id);
  getAll();
  addPub(PubEntity pub);
  deletePub(int id);
  updatePub(int id);
}
