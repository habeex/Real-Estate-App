import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:realestateapp/model/faker.dart';
import 'package:realestateapp/ui/common/profile_avater.dart';
import 'package:realestateapp/ui/home/widget/apartments.dart';
import 'package:realestateapp/ui/home/widget/buy_offer.dart';
import 'package:realestateapp/ui/home/widget/location.dart';
import 'package:realestateapp/ui/home/widget/rent_offer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  User get user => Faker.getUser;
  Offers get offer => Faker.getOffers;
  List<Apartment> get apartments => Faker.getApartments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFFFFF8EF),
                  Color(0xFFF6E8D8),
                  Color(0xFFFFF8EF),
                  Colors.orangeAccent,
                ], // Define colors
                begin: Alignment.topLeft, // Start point
                end: Alignment.bottomRight,
              ),
            ),
          ),
          SafeArea(
            bottom: false,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 24,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          LocationCard(location: user.location),
                          ProfileAvatar(
                            url: user.avater,
                          )
                        ],
                      ),
                      const SizedBox(height: 16),
                      Text(
                        'Hi ${user.firstName}',
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                      ).animate().fadeIn(),
                      _perfectPlaceText(),
                    ],
                  ),
                ),
                Expanded(
                  child: CustomScrollView(
                    slivers: [
                      SliverAppBar(
                        backgroundColor: Colors.transparent,
                        expandedHeight: 200.0,
                        floating: false,
                        pinned: false,
                        flexibleSpace: FlexibleSpaceBar(
                          background: Padding(
                            padding: const EdgeInsets.only(right: 16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: BuyOffer(offer: offer.buyOffer),
                                ),
                                const SizedBox(width: 16),
                                Expanded(
                                  child: RentOffer(offer: offer.rentOffer),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      DecoratedSliver(
                        decoration: const BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(16),
                            topRight: Radius.circular(16),
                          ),
                        ),
                        position: DecorationPosition.background,
                        sliver: SliverPadding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 8,
                          ),
                          sliver: Apartments(apartments: apartments),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  _perfectPlaceText() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: AnimateList(
          interval: 400.ms,
          effects: [
            FadeEffect(delay: 800.ms, duration: 300.ms),
          ],
          children: [
            Text(
              "Let\'s select your",
              style: GoogleFonts.poppins(
                fontSize: 36,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              "perfect place",
              style: GoogleFonts.poppins(
                fontSize: 36,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      );
}
