import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/core.dart';

class AirConditionerControlsCard extends StatelessWidget {
  const AirConditionerControlsCard({
    required this.room,
    super.key,
  });

  final SmartRoom room;

  @override
  Widget build(BuildContext context) {
    return LiteCommerceCard(
      childrenPadding: const EdgeInsets.all(12),
      children: [
        _AirSwitcher(room: room),
        const _AirIcons(),
        Column(
          children: [
            Row(
              children: [
                Container(
                  width: 120,
                  height: 50,
                  margin: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(8)),
                    border: Border.all(
                      width: 10,
                      color: Colors.white38,
                    ),
                  ),
                ),
                Expanded(
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Icon(
                          LiteCommerceIcons.waterDrop,
                          color: Colors.white38,
                          size: 20,
                        ),
                        Text(
                          'Air humidity',
                          style: GoogleFonts.montserrat(
                            fontSize: 10,
                            color: Colors.white60,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Text('${room.airHumidity.toInt()}%'),
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        )
      ],
    );
  }
}

class _AirIcons extends StatelessWidget {
  const _AirIcons();

  @override
  Widget build(BuildContext context) {
    return const IconTheme(
      data: IconThemeData(size: 30, color: Colors.white38),
      child: Row(
        children: [
          Icon(LiteCommerceIcons.snowFlake),
          SizedBox(
            width: 8,
          ),
          Icon(LiteCommerceIcons.wind),
          SizedBox(
            width: 8,
          ),
          Icon(LiteCommerceIcons.waterDrop),
          SizedBox(
            width: 8,
          ),
          Icon(LiteCommerceIcons.timer,
              color: LiteCommerceColors.selectedColor),
        ],
      ),
    );
  }
}

class _AirSwitcher extends StatelessWidget {
  const _AirSwitcher({
    required this.room,
  });

  final SmartRoom room;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Air conditioning'),
        const SizedBox(height: 12),
        Row(
          children: [
            Expanded(
              child: LiteCommerceSwitcher(
                icon: const Icon(LiteCommerceIcons.fan),
                value: room.airCondition.isOn,
                onChanged: (value) {},
              ),
            ),
            const Spacer(),
            Text(
              '${room.airCondition.value}˚',
              style: const TextStyle(fontSize: 28),
            )
          ],
        )
      ],
    );
  }
}
