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
}
