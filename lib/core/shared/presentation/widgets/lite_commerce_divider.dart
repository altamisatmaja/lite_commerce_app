import 'package:flutter/material.dart';
import 'package:ui_common/ui_common.dart';

import '../../../core.dart';

class LiteCommerceDivider extends StatelessWidget {
  const LiteCommerceDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        color: LiteCommerceColors.backgroundColor,
        boxShadow: [
          BoxShadow(
            blurRadius: 1,
            color: Colors.white54,
            offset: Offset(0, 1),
          ),
        ],
      ),
      child: SizedBox(height: 1.r, width: double.infinity),
    );
  }
}
