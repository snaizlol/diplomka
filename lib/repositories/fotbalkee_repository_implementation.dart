import 'package:diplomka/entities/pub_entity.dart';
import 'package:diplomka/repositories/fotbalkee_repository.dart';
import 'package:diplomka/repositories/mockup_fotbalkee.dart';

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
  updatePub(int id) {
    // TODO: implement updatePub
    throw UnimplementedError();
  }
}
