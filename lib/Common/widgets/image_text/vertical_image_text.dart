
import 'package:flutter/material.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/device/device_utility.dart';

class VerticalIconText extends StatelessWidget {
  const VerticalIconText({
    super.key, required this.title,
    this.backgroundColor ,
    required this.icon,
    this.onPressed,
    this.textColor ,
  });
  final String title;
  final Color? backgroundColor;
  final Color? textColor;
  final IconData icon;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final dark = LJDeviceUtils.isDarkMode(context);
    return InkWell(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.only(right: 10),
        child: Column(
          children: [
            Container(
              height: 50,
              width: 50,
              padding: EdgeInsets.all(LJSizes.xs),
              decoration: BoxDecoration(
                  color: backgroundColor ?? (dark? Colors.black : Colors.white),
                  borderRadius: BorderRadius.circular(100)
              ),
              child: Icon(icon,color: dark? Colors.white : Colors.black),
            ),
            SizedBox(height: LJSizes.spaceBtwItems/4,),
            SizedBox(
                width: 50,
                child: Center(child: Text(
                  title,
                  style: Theme.of(context).textTheme.labelSmall!.apply(
                      color: textColor ?? (dark? Colors.white : Colors.black)),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,

                )
                )
            ),

          ],
        ),
      ),
    );
  }
}