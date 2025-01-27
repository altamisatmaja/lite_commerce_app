import 'package:flutter/material.dart';

import '../../../core/core.dart';

class LightIntensitySliderCard extends StatelessWidget {
  const LightIntensitySliderCard({
    required this.room,
    super.key,
  });

  final SmartRoom room;

  @override
  Widget build(BuildContext context) {
    return LiteCommerceCard(
      childrenPadding: const EdgeInsets.all(12),
      children: [
        _LightSwitcher(room: room),
        Row(
          children: [
            const Icon(LiteCommerceIcons.lightMin),
            Expanded(
              child: Slider(
                value: .2,
                onChanged: (value) {},
              ),
            ),
            const Icon(LiteCommerceIcons.lightMax),
          ],
        )
      ],
    );
  }
}

class _LightSwitcher extends StatelessWidget {
  const _LightSwitcher({
    required this.room,
  });

  final SmartRoom room;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Flexible(
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text('Light intensity'),
          ),
        ),
        Flexible(
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              '${room.lights.value}%',
              style: const TextStyle(fontSize: 20),
            ),
          ),
        ),
        LiteCommerceSwitcher(
          value: room.lights.isOn,
          onChanged: (value) {},
        ),
      ],
    );
  }
}
