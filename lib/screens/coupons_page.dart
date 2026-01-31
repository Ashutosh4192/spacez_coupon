import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:spacez/widgets/coupon_card.dart';
import 'package:spacez/widgets/show_menu_dialog.dart';
import 'package:spacez/widgets/show_reserved_dialog.dart';
import 'package:spacez/widgets/show_simple_dialog.dart';

class CouponsPage extends StatelessWidget {
  const CouponsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
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
                      showMenuDialog(context, 'Menu clicked');
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
                  InkWell(
                    onTap: () {
                      showSimpleDialog(context, 'Page not available');
                    },
                    child: PhosphorIcon(
                      PhosphorIcons.arrowLeft(),
                      color: Color(0xFF5A5A5A),
                      size: 25,
                    ),
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
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: 18, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CouponCard(),
                    SizedBox(height: 20),
                    CouponCard(),
                    SizedBox(height: 40),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        'Payment offers:',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF4A4A4A),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    CouponCard(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),

      bottomNavigationBar: SafeArea(
        top: false,
        child: Container(
          decoration: BoxDecoration(color: Colors.white),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 4),
                color: const Color(0xFF2E7D32),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    PhosphorIcon(
                      PhosphorIcons.sealPercent(PhosphorIconsStyle.fill),
                      size: 16,
                      color: Colors.white,
                    ),
                    SizedBox(width: 6),
                    const Text(
                      'Book now & Unlock exclusive rewards!',
                      style: TextStyle(
                        color: Colors.white,
                        height: 1,
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 12,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            children: const [
                              Text(
                                '₹ 19,500',
                                style: TextStyle(
                                  height: 1,
                                  color: Color(0xFFB86A3E),
                                  decoration: TextDecoration.lineThrough,
                                  decorationColor: Color(0xFFD32F2F),
                                ),
                              ),
                              SizedBox(width: 8),
                              Text(
                                '₹16,000',
                                style: TextStyle(
                                  color: Color(0xFF2E2E2E),
                                  fontSize: 18,
                                  height: 1,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              SizedBox(width: 4),
                              Text(
                                'for 2 nights',
                                style: TextStyle(
                                  color: Color(0xFF6F6F6F),
                                  height: 1,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 4),
                          InkWell(
                            onTap: () {
                              // TODO: open date / guest selector
                            },
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const Text(
                                  '24 Apr - 26 Apr | 8 guests',
                                  style: TextStyle(
                                    fontSize: 13,
                                    height: 1,
                                    color: Color(0xFF4A4A4A),
                                    decoration: TextDecoration.underline,
                                    decorationColor: Color(0xFF4A4A4A),
                                    decorationThickness: 1.2,
                                  ),
                                ),
                                const SizedBox(width: 6),
                                InkWell(
                                  onTap: () {
                                    showSimpleDialog(
                                      context,
                                      'Edit dates & guests',
                                    );
                                  },
                                  child: PhosphorIcon(
                                    PhosphorIcons.notePencil(),
                                    size: 15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(
                      height: 44,
                      child: ElevatedButton(
                        onPressed: () {
                          showReservedDialog(context);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFC46D3C),
                          padding: const EdgeInsets.symmetric(horizontal: 28),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(3),
                          ),
                          elevation: 0,
                        ),
                        child: const Text(
                          'Reserve',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
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
      ),
    );
  }
}
