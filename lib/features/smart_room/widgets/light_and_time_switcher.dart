import 'package:flutter/material.dart';

import '../../../core/core.dart';

class LightsAndTimerSwitchers extends StatelessWidget {
  const LightsAndTimerSwitchers({
    required this.room,
    super.key,
  });

  final SmartRoom room;

  @override
  Widget build(BuildContext context) {
    return LiteCommerceCard(
      childrenPadding: const EdgeInsets.all(12),
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Lights'),
            const SizedBox(height: 8),
            LiteCommerceSwitcher(
              value: room.lights.isOn,
              onChanged: (value) {},
              icon: const Icon(LiteCommerceIcons.lightBulbOutline),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              children: [
                Text('Timer'),
                Spacer(),
                BlueLightDot(),
              ],
            ),
            const SizedBox(height: 8),
            LiteCommerceSwitcher(
              icon: room.timer.isOn
                  ? const Icon(LiteCommerceIcons.timer)
                  : const Icon(LiteCommerceIcons.timerOff),
              value: room.timer.isOn,
              onChanged: (value) {},
            ),
          ],
        ),
      ],
    );
  }
}
