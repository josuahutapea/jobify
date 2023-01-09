import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jobify/custom_theme.dart';
import 'package:jobify/custom_text_field.dart';
import 'package:jobify/job_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
                Image.asset('assets/header_background.png'),
                SafeArea(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      children: [
                        const SizedBox(height: 30),
                        Row(
                          children: [
                            Image.asset(
                              'assets/jobify_logo.png',
                              height: 29,
                            ),
                            const Spacer(),
                            Material(
                              color: Colors.transparent,
                              shape: const CircleBorder(),
                              clipBehavior: Clip.hardEdge,
                              child: IconButton(
                                icon: const ImageIcon(
                                  AssetImage('assets/notification.png'),
                                  color: white,
                                  size: 24,
                                ),
                                onPressed: () {},
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
                        Container(
                          width: double.infinity,
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              //color: Colors.greenAccent,
                              color: white,
                              borderRadius: BorderRadius.circular(12)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomTextField(
                                prefixImage: Image.asset('assets/search.png'),
                                hint: 'Search job, company etc',
                              ),
                              const SizedBox(height: 20),
                              Container(height: 2, color: lightGrey),
                              const SizedBox(height: 20),
                              CustomTextField(
                                prefixImage: Image.asset('assets/location.png'),
                                hint: 'Location',
                              ),
                              const SizedBox(height: 20),
                              Container(
                                width: double.infinity,
                                height: 46,
                                decoration: BoxDecoration(
                                  color: blue,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: TextButton(
                                  style: TextButton.styleFrom(
                                    elevation: 0,
                                  ),
                                  onPressed: () {},
                                  child: Text(
                                    'Search',
                                    style: GoogleFonts.plusJakartaSans(
                                        color: white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 24),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Suggested Job',
                              style: GoogleFonts.plusJakartaSans(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'See all',
                              style: GoogleFonts.plusJakartaSans(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: grey),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        const JobCard(
                          company: 'Pinterest',
                          logo: 'assets/pinterest.png',
                          role: 'Senior UI/UX Designer',
                          location: 'California, Freelance, WFO',
                          salary: '\$25,000',
                          description: pinterestDescription,
                        ),
                        const SizedBox(height: 20),
                        const JobCard(
                          company: 'Discord',
                          logo: 'assets/discord.png',
                          role: 'Junior UI Designer',
                          location: 'Purwokerto, Freelance, WFO',
                          salary: '\$50,000',
                          description: discordDescription,
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
