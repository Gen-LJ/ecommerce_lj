part of 'carousel_bloc.dart';

@immutable
abstract class CarouselState {
  final int carouselIndex;

  const CarouselState({required this.carouselIndex});
}

class CarouselInitial extends CarouselState {
  const CarouselInitial({required super.carouselIndex});


}
