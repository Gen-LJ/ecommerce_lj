part of 'carousel_bloc.dart';

@immutable
abstract class CarouselEvent {}

class UpdatePage extends CarouselEvent{
  final int carouselIndex;

  UpdatePage(this.carouselIndex);
}
