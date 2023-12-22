import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'bot_nav_event.dart';
part 'bot_nav_state.dart';

class BotNavBloc extends Bloc<BotNavEvent, BotNavState> {
  BotNavBloc() : super(BotNavInitial(currentIndex: 0)) {
    on<BotNavEvent>((event, emit) {
if(event is BotNavigate){
  emit(BotNavInitial(currentIndex: event.currentIndex));
}
    });
  }
}
