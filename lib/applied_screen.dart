import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jobify/job_card_applied.dart';

import 'custom_theme.dart';

class AppliedScreen extends StatelessWidget {
  const AppliedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(color: backgroundWhite),
        ListView(
          padding: EdgeInsets.zero,
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 146,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/header_background.png'),
                      fit: BoxFit.fitWidth,
                      alignment: FractionalOffset.topCenter,
                    ),
                  ),
                ),
                SafeArea(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      children: [
                        const SizedBox(height: 30),
                        Row(
                          children: [
                            Text(
                              'Job Applied',
                              style: GoogleFonts.plusJakartaSans(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                              ),
                            ),
                            const Spacer(),
                            Material(
                              color: Colors.transparent,
                              shape: const CircleBorder(),
                              clipBehavior: Clip.hardEdge,
                              child: Stack(
                                children: [
                                  IconButton(
                                    icon: const ImageIcon(
                                      AssetImage('assets/notification.png'),
                                      color: white,
                                      size: 24,
                                    ),
                                    onPressed: () {},
                                  ),
                                  Positioned(
                                    top: 14,
                                    right: 14,
                                    child: Container(
                                      width: 10,
                                      height: 10,
                                      decoration: BoxDecoration(
                                        color: orange,
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                            color: const Color(0xff252A3F),
                                            width: 1.5),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 15),
                            Material(
                              color: cyan,
                              shape: const CircleBorder(),
                              clipBehavior: Clip.hardEdge,
                              child: InkWell(
                                child: Ink.image(
                                  image: const AssetImage(
                                    'assets/display_picture.png',
                                  ),
                                  height: 42,
                                  width: 42,
                                ),
                                onTap: () {},
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 30),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'My Application',
                              style: GoogleFonts.plusJakartaSans(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                height: 1.3,
                              ),
                            ),
                            Spacer(),
                            Text(
                              'All',
                              style: GoogleFonts.plusJakartaSans(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: grey),
                            ),
                            const Icon(Icons.expand_more, color: grey)
                          ],
                        ),
                        const SizedBox(height: 20),
                        const JobCardApplied(
                          company: 'Pinterest',
                          logo: 'assets/pinterest.png',
                          role: 'Senior UI/UX Designer',
                          location: 'California, Freelance, WFO',
                          salary: '\$25,000',
                          description: pinterestDescription,
                          status: Status.Pending,
                        ),
                        const SizedBox(height: 20),
                        const JobCardApplied(
                          company: 'Discord',
                          logo: 'assets/discord.png',
                          role: 'Junior UI Designer',
                          location: 'Purwokerto, Freelance, WFO',
                          salary: '\$10,000',
                          description: discordDescription,
                          status: Status.Approved,
                        ),
                        const SizedBox(height: 20),
                        const JobCardApplied(
                          company: 'Discord',
                          logo: 'assets/discord.png',
                          role: 'Tech Lead',
                          location: 'California, Freelance, WFO',
                          salary: '\$50,000',
                          description: discordDescription2,
                          status: Status.Rejected,
                        ),
                        const SizedBox(height: 50),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ],
    );
  }
}
