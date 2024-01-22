import 'package:flutter/material.dart';

import '../../../../../../Common/widgets/layout/grid_layout.dart';
import '../../../../../../Common/widgets/texts/section_header.dart';
import '../../../../../../common/widgets/brand/brand_show_case.dart';
import '../../../../../../utils/constants/sizes.dart';

class CategoryTab extends StatelessWidget {
   const CategoryTab({
    super.key,
    required this.itemCount,
    // required this.title,
    // required this.brandName,
    // required this.imageUrl,
    required this.itemBuilder, this.imageList, required this.brandTitle, required this.brandThumbnail
  });

  final int itemCount;
  // final String title;
  // final String brandName;
  // final String imageUrl;
  final Widget? Function(BuildContext,int) itemBuilder;
  final List<String>? imageList;
  final String brandTitle;
  final String brandThumbnail;

  @override
  Widget build(BuildContext context) {
    return ListView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: LJSizes.defaultSpace,
                vertical: LJSizes.defaultSpace / 2),
            child: Column(
              children: [
                 BrandShowCase(
                   isNetworkImage: true,
                  images: imageList ?? [],
                   thumbnail: brandThumbnail,
                   title: brandTitle
                  ,
                ),
                const SectionHeader(
                  title: 'You might like',
                  showActionButton: true,
                ),
                GridLayout(
                    itemCount: itemCount,
                    itemBuilder: itemBuilder

                    )
              ],
            ),
          ),
        ]);
  }
}
