import 'package:diplomka/entities/pub.dart';

abstract interface class PubsRepository {
  Pub getById(int id);
  List<Pub> getAll();
}
