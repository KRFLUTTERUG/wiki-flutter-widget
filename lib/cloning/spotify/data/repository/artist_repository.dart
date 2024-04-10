

import '../../di/service_locator.dart';
import '../datasource/artist_datasource.dart';
import '../model/artist.dart';

abstract class ArtistRepository {
  Future<List<Artist>> artistList();
}

class ArtistLocalRepository extends ArtistRepository {
  final ArtistDatasource _datasource = locator.get();
  @override
  Future<List<Artist>> artistList() async {
    return await _datasource.getArtistList();
  }
}
