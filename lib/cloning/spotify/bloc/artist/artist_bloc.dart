import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/repository/artist_repository.dart';
import 'artist_event.dart';
import 'artist_state.dart';

class ArtistBloc extends Bloc<ArtistEvent, ArtistState> {
  final ArtistRepository _artistRepository;
  ArtistBloc(this._artistRepository) : super(ArtistInitState()) {
    on<ArtistListEvent>((event, emit) async {
      var artitstList = await _artistRepository.artistList();
      emit(ArtistListState(artitstList));
    });
  }
}
