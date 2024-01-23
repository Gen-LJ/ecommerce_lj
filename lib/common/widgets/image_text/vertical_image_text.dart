
import 'package:flutter/material.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/device/device_utility.dart';

class VerticalIconText extends StatelessWidget {
  const VerticalIconText({
    super.key, required this.title,
    this.backgroundColor ,
    required this.icon,
    this.onPressed,
    this.textColor,
     this.isIcon = true,
  });

  final bool isIcon;
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
              height: 60,
              width: 60,
              padding: const EdgeInsets.all(LJSizes.xs),
              decoration: BoxDecoration(
                  color: backgroundColor ?? (dark? Colors.black : Colors.white),
                  borderRadius: BorderRadius.circular(100)
              ),
              child: isIcon ? Icon(icon,color: dark? Colors.white : Colors.black) : const CircularProgressIndicator(color: Colors.amber,),
            ),
            const SizedBox(height: LJSizes.spaceBtwItems/4,),
            SizedBox(
                width: 60,
                child: Center(child: Text(
                  title,
                  style: Theme.of(context).textTheme.labelSmall!.apply(
                      color: textColor ?? (dark? Colors.black : Colors.white)),
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