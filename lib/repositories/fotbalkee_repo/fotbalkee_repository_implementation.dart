import 'package:diplomka/entities/pub_entity.dart';
import 'package:diplomka/repositories/fotbalkee_repo/fotbalkee_repository.dart';
import 'package:diplomka/repositories/fotbalkee_repo/mockup_fotbalkee.dart';

class FotbalkeeRepositoryImplementation implements FotbalkeeRepository {
  FotbalkeeRepositoryImplementation(this.repo);
  final PubMockupRepository repo;
  @override
  getById(int id) {
    final pub = repo.listOfPubs.where((element) => element.id == id).first;
    return pub;
  }

  @override
  addPub(PubEntity pub) {
    repo.listOfPubs.add(pub);
  }

  @override
  deletePub(int id) {
    repo.listOfPubs.removeWhere((element) => element.id == id);
  }

  @override
  getAll() {
    final data = repo.listOfPubs;
    return data;
  }

  @override
  getByName(String tableName) {
    List<PubEntity> tables = [];
    for (var table in repo.listOfPubs) {
      if (table.fotbalek.brand == tableName) {
        tables.add(table);
      }
    }
  }
}
