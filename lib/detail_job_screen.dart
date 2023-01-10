import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'custom_theme.dart';

class DetailJobScreen extends StatefulWidget {
  const DetailJobScreen({Key? key}) : super(key: key);

  @override
  State<DetailJobScreen> createState() => _DetailJobScreenState();
}

class _DetailJobScreenState extends State<DetailJobScreen>
    with SingleTickerProviderStateMixin {
  final List<Widget> myTabs = [
    const Tab(text: 'Summary'),
    const Tab(text: 'Activity'),
    const Tab(text: 'About'),
  ];

  late TabController _tabController;

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(_handleTabSelection);
    super.initState();
  }

  _handleTabSelection() {
    if (_tabController.indexIsChanging) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 16),
                height: 42,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.arrow_back),
                    ),
                    Text(
                      'Job Detail',
                      style: GoogleFonts.plusJakartaSans(
                        height: 1.3,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.bookmark_outline),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Flexible(
                child: ListView(
                  children: [
                    const SizedBox(height: 30),
                    Column(
                      children: [
                        Container(
                          constraints:
                              BoxConstraints(maxWidth: 84, maxHeight: 84),
                          padding: const EdgeInsets.all(24),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0xffF8F8FD),
                            //color: const Color(0xffaaaaaa),
                          ),
                          child: Image.asset('assets/pinterest.png'),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          'Pinterest',
                          style: GoogleFonts.plusJakartaSans(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            height: 1.3,
                          ),
                        ),
                        const SizedBox(height: 6),
                        Text(
                          'Senior UI/UX Designer',
                          style: GoogleFonts.plusJakartaSans(
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            height: 1.6,
                            color: grey,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 26),
                    Container(
                      height: 60,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xfff1f1fa)),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const ImageIcon(
                                  AssetImage('assets/location.png'),
                                  color: orange,
                                  size: 20,
                                ),
                                const SizedBox(width: 8),
                                Text(
                                  'California',
                                  style: GoogleFonts.plusJakartaSans(
                                    color: grey,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const ImageIcon(
                                  AssetImage('assets/location.png'),
                                  color: orange,
                                  size: 20,
                                ),
                                const SizedBox(width: 8),
                                Text(
                                  '\$20k ',
                                  style: GoogleFonts.plusJakartaSans(
                                    color: black,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12,
                                  ),
                                ),
                                Text(
                                  '/Mo',
                                  style: GoogleFonts.plusJakartaSans(
                                    color: grey,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const ImageIcon(
                                  AssetImage('assets/bookmark.png'),
                                  color: orange,
                                  size: 20,
                                ),
                                const SizedBox(width: 8),
                                Text(
                                  '210 Saved',
                                  style: GoogleFonts.plusJakartaSans(
                                    color: grey,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 12),
                    // tab bar
                    TabBar(
                      controller: _tabController,
                      indicatorColor: blue,
                      labelColor: blue,
                      labelStyle: GoogleFonts.plusJakartaSans(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          height: 1.6),
                      unselectedLabelStyle: GoogleFonts.plusJakartaSans(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          height: 1.6),
                      unselectedLabelColor: grey,
                      tabs: myTabs,
                    ),
                    const SizedBox(height: 30),
                    SizedBox(
                      child: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // job descriptions
                            Text(
                              'Job Description',
                              style: GoogleFonts.plusJakartaSans(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                height: 1.3,
                              ),
                            ),
                            const SizedBox(height: 20),
                            Text(
                              pinterestDescription,
                              style: GoogleFonts.plusJakartaSans(
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                                height: 1.6,
                                color: grey,
                              ),
                            ),
                            const SizedBox(height: 30),
                            Text(
                              'Responsibilities',
                              style: GoogleFonts.plusJakartaSans(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                height: 1.3,
                              ),
                            ),
                            const SizedBox(height: 20),
                            ListView.separated(
                              shrinkWrap: true,
                              physics: const ClampingScrollPhysics(),
                              itemBuilder: (context, index) => Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 9),
                                    child: Image.asset(
                                        'assets/bullet_point.png',
                                        height: 8),
                                  ),
                                  const SizedBox(width: 10),
                                  Flexible(
                                    child: Text(
                                      responsibilities[index],
                                      style: GoogleFonts.plusJakartaSans(
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                        height: 1.6,
                                        color: grey,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              separatorBuilder: (context, index) =>
                                  const SizedBox(height: 8),
                              itemCount: responsibilities.length,
                            ),
                            const SizedBox(height: 30),
                            Text(
                              'Requirements',
                              style: GoogleFonts.plusJakartaSans(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                height: 1.3,
                              ),
                            ),
                            const SizedBox(height: 20),
                            ListView.separated(
                              shrinkWrap: true,
                              physics: const ClampingScrollPhysics(),
                              itemBuilder: (context, index) => Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 9),
                                    child: Image.asset(
                                        'assets/bullet_point.png',
                                        height: 8),
                                  ),
                                  const SizedBox(width: 10),
                                  Flexible(
                                    child: Text(
                                      requirements[index],
                                      style: GoogleFonts.plusJakartaSans(
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                        height: 1.6,
                                        color: grey,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              separatorBuilder: (context, index) =>
                                  const SizedBox(height: 8),
                              itemCount: responsibilities.length,
                            ),
                            // end of job description to requirements
                          ],
                        ),
                        Column(
                          children: [
                            Text('activity tab'),
                          ],
                        ),
                        Column(
                          children: [
                            Text('about tab'),
                          ],
                        ),
                      ][_tabController.index],
                    ),
                    const SizedBox(height: 30),
                  ],
                ),
              ),
              const SizedBox(height: 10),
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
      ),
    );
  }
}
