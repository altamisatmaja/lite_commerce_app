import 'package:flutter/material.dart';
import 'package:lite_commerce_app/core/theme/lite_commerce_icons.dart';

class LiteCommerceAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const LiteCommerceAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Hero(
        tag: "app-bar-icon-1",
        child: Material(
          type: MaterialType.transparency,
          child: IconButton(
            onPressed: () {},
            icon: const Icon(LiteCommerceIcons.menu),
          ),
        ),
      ),
      actions: [
        Hero(
          tag: "app-bar-icon-2",
          child: Material(
            type: MaterialType.transparency,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(LiteCommerceIcons.search),
            ),
          ),
        ),
        const SizedBox(width: 8),
      ],
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, kToolbarHeight);
}
