part of 'bot_nav_bloc.dart';

@immutable
abstract class BotNavState {
  final int currentIndex;

   const BotNavState({required this.currentIndex});
}

class BotNavInitial extends BotNavState {
  const BotNavInitial({required super.currentIndex});

}
