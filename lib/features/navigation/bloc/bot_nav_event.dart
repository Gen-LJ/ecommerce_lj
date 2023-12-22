part of 'bot_nav_bloc.dart';

@immutable
abstract class BotNavEvent {
}

class BotNavigate extends BotNavEvent{
  final int currentIndex;

  BotNavigate(this.currentIndex);
}


