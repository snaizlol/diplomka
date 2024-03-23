import 'package:diplomka/entities/pub_entity.dart';

abstract interface class PubsRepository {
  PubEntity getById(int id);
  List<PubEntity> getAll();
}
