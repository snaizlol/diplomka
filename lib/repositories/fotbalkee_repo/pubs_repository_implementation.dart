import 'package:diplomka/repositories/fotbalkee_repo/pubs_repository.dart';
import 'package:diplomka/repositories/fotbalkee_repo/mockup_pubs.dart';

class PubsRepositoryImplementation implements PubsRepository {
  PubsRepositoryImplementation(this.repo);
  final PubMockupRepository repo;
  @override
  getById(int id) {
    final pub = PubMockupRepository.listOfPubs
        .where((element) => element.id == id)
        .first;
    return pub;
  }

  @override
  getAll() {
    final data = PubMockupRepository.listOfPubs;
    return data;
  }
}
