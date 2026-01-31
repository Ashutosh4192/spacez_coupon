import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class CouponCard extends StatelessWidget {
  const CouponCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              width: 70,
              color: const Color(0xFFB86A3E),
              child: const Center(
                child: RotatedBox(
                  quarterTurns: 3,
                  child: Text(
                    '₹6,900',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),

            Expanded(
              child: Stack(
                children: [
                  Container(
                    color: const Color(0xFFFFFBF7),
                    padding: const EdgeInsets.all(16),
                    child: _RightContent(),
                  ),

                  Positioned(
                    left: 0,
                    top: 0,
                    bottom: 0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List.generate(
                        9,
                        (_) => Container(
                          width: 3,
                          height: 14,
                          color: const Color(0xFF9E5C32),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _RightContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'LONGSTAY',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xFF4A4A4A),
              ),
            ),
            InkWell(
              onTap: () {
                // TODO: handle apply action
              },
              borderRadius: BorderRadius.circular(4),
              child: Row(
                children: [
                  Transform.rotate(
                    angle: math.pi / 2,
                    child: PhosphorIcon(
                      PhosphorIcons.tag(),
                      size: 18,
                      color: Color(0xFF9E5C32),
                    ),
                  ),

                  SizedBox(width: 6),
                  Text(
                    'Apply',
                    style: TextStyle(
                      color: Color(0xFF9E5C32),
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 8),
        Text(
          '15% off when you book for 5 days or more and '
          '20% off when you book for 30 days or more.',
          style: TextStyle(color: Color(0xFF7A7A7A), height: 1.4),
        ),
        SizedBox(height: 12),
        Divider(color: Color(0xFFE0E0E0)),
        SizedBox(height: 8),
        Text(
          'Read more',
          style: TextStyle(
            color: Color(0xFF8A8A8A),
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
