import 'package:get_it/get_it.dart';

import '../data/datasource/album_datasource.dart';
import '../data/repository/album_repository.dart';

var locator = GetIt.instance;

void initServiceLocator() {
  locator.registerSingleton<AlbumDatasource>(AlbumLocalDatasource());
  locator.registerSingleton<AlbumRepository>(AlbumLocalRepository());
}