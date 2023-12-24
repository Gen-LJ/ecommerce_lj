
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'carousel_event.dart';
part 'carousel_state.dart';

class CarouselBloc extends Bloc<CarouselEvent, CarouselState> {
  CarouselBloc() : super(CarouselInitial(carouselIndex: 0)) {
    on<CarouselEvent>((event, emit) {
if(event is UpdatePage){
  emit(CarouselInitial(carouselIndex: event.carouselIndex));
}
    });
  }
}
