import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wiki_flutter_examples/cloning/spotify/bloc/playlist/playlist_event.dart';
import 'package:wiki_flutter_examples/cloning/spotify/bloc/playlist/playlist_state.dart';

import '../../data/repository/playlist_repository.dart';

class PlaylistBloc extends Bloc<PlaylistEvent, PlaylistState> {
  final PLaylistRepository _repository;
  PlaylistBloc(this._repository) : super(PlaylistInitState()) {
    on<PlaylistFetchEvent>((event, emit) async {
      var playlist = await _repository.getList(event.mix);
      emit(PlaylistResponseState(playlist));
    });
  }
}
