import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/repository/album_repository.dart';
import 'album_event.dart';
import 'album_state.dart';

class AlbumBloc extends Bloc<AlbumEvent, AlbumState> {
  final AlbumRepository _albumRepository;
  AlbumBloc(this._albumRepository) : super(AlbumInitState()) {
    on<AlbumListEvent>(
          (event, emit) async {
        var album = await _albumRepository.albumList(event.singer);
        emit(AlbumListResponseState(album));
      },
    );
  }
}