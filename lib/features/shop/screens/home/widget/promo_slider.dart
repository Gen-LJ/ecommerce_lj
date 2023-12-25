import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce_lj/features/shop/screens/home/bloc/carousel_bloc/carousel_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../Common/widgets/container/circular_container.dart';
import '../../../../../Common/widgets/image/rounded_image.dart';
import '../../../../../utils/constants/sizes.dart';

class PromoSlider extends StatefulWidget {
  const PromoSlider({
    super.key, required this.banners,
  });

  final List<String> banners;

  @override
  State<PromoSlider> createState() => _PromoSliderState();
}

class _PromoSliderState extends State<PromoSlider> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
            options: CarouselOptions(
                viewportFraction: 1,
                onPageChanged: (index, _) {
                  BlocProvider.of<CarouselBloc>(context).add(UpdatePage(index));
                }),
            items: List.generate(widget.banners.length, (index) {
              return RoundedImage(imageUrl: widget.banners[index]);
            }).toList()
        ),
        const SizedBox(
          height: LJSizes.spaceBtwItems / 2,
        ),
        Padding(
          padding: const EdgeInsets.only(left: LJSizes.defaultSpace),
          child: BlocConsumer<CarouselBloc, CarouselState>(
            listener: (context, state) {

            },
            builder: (context, state) {
              return Row(mainAxisSize: MainAxisSize.min,
                children: [
                  for (int i = 0; i < widget.banners.length; i++)
                    CircularContainer(
                      backgroundColor: state.carouselIndex == i ? Colors.amber : Colors.grey,
                      height: 4,
                      width: 20,
                      margin: EdgeInsets.only(right: 10),
                      opacity: 1,
                    ),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
