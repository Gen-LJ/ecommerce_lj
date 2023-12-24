part of 'carousel_bloc.dart';

@immutable
abstract class CarouselState {
  final int carouselIndex;

  CarouselState({required this.carouselIndex});
}

class CarouselInitial extends CarouselState {
  CarouselInitial({required super.carouselIndex});


}
