import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class CouponsPage extends StatelessWidget {
  const CouponsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 25),
          Container(
            padding: const EdgeInsets.only(left: 17, right: 17),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border(
                bottom: BorderSide(color: const Color(0xFFE0E0E0), width: 1),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'assets/images/logo.png',
                  height: 80,
                  fit: BoxFit.contain,
                ),

                IconButton(
                  icon: const Icon(Icons.menu, color: Colors.brown),
                  onPressed: () {
                    // open drawer or menu
                  },
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(
              top: 20,
              left: 22,
              right: 22,
              bottom: 18,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border(
                bottom: BorderSide(color: const Color(0xFFE0E0E0), width: 1),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                PhosphorIcon(
                  PhosphorIcons.arrowLeft(),
                  color: Color(0xFF5A5A5A),
                  size: 25,
                ),
                SizedBox(width: 10),
                Text(
                  'Coupons',
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF3F3F3F),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 8,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0x22000000), Color(0x00000000)],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
