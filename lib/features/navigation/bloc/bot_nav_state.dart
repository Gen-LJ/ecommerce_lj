part of 'bot_nav_bloc.dart';

@immutable
abstract class BotNavState {
  final int currentIndex;

   BotNavState({required this.currentIndex});
}

class BotNavInitial extends BotNavState {
  BotNavInitial({required super.currentIndex});

}
