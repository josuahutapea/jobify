import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'custom_theme.dart';
import 'detail_job_screen.dart';

enum Status {
  Pending,
  Approved,
  Rejected,
}

extension StatusExtension on Status {
  Color get color {
    switch (this) {
      case Status.Pending:
        return const Color(0xffFFC757);
      case Status.Approved:
        return const Color(0xff4CD963);
      case Status.Rejected:
        return const Color(0xffFF6E47);
      default:
        return Colors.grey;
    }
  }
}

class JobCardApplied extends StatefulWidget {
  const JobCardApplied({
    Key? key,
    required this.company,
    required this.logo,
    required this.role,
    required this.location,
    required this.salary,
    required this.description,
    required this.status,
  }) : super(key: key);

  @override
  State<JobCardApplied> createState() => _JobCardAppliedState();

  final String company;
  final String logo;
  final String role;
  final String location;
  final String salary;
  final String description;
  final Status status;
}

class _JobCardAppliedState extends State<JobCardApplied> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const DetailJobScreen()));
      },
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          //color: Colors.grey,
          color: white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(12),
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xffF8F8FD),
                  ),
                  child: Image.asset(widget.logo),
                ),
                const SizedBox(width: 14),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      widget.company,
                      style: GoogleFonts.plusJakartaSans(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: black,
                      ),
                    ),
                    const SizedBox(height: 6),
                    Text(
                      widget.role,
                      style: GoogleFonts.plusJakartaSans(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: grey,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                  decoration: BoxDecoration(
                    color: widget.status.color.withOpacity(0.15),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Text(
                    widget.status.name,
                    style: GoogleFonts.plusJakartaSans(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: widget.status.color),
                  ),
                )
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                const ImageIcon(
                  AssetImage('assets/location.png'),
                  size: 20,
                  color: grey,
                ),
                const SizedBox(width: 8),
                Text(
                  widget.location,
                  style: GoogleFonts.plusJakartaSans(
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                    color: grey,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            Row(
              children: [
                const ImageIcon(
                  AssetImage('assets/salary.png'),
                  size: 20,
                  color: grey,
                ),
                const SizedBox(width: 8),
                Text(
                  widget.salary,
                  style: GoogleFonts.plusJakartaSans(
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                    color: black,
                  ),
                ),
                Text(
                  ' /Month',
                  style: GoogleFonts.plusJakartaSans(
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                    color: grey,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Text(
              widget.description,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: GoogleFonts.plusJakartaSans(
                fontWeight: FontWeight.normal,
                fontSize: 12,
                color: grey,
                height: 1.6,
              ),
            ),
            const SizedBox(height: 20),
            Container(
              width: double.infinity,
              height: 38,
              decoration: BoxDecoration(
                color: white,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: blue, width: 1.5),
              ),
              child: TextButton(
                style: TextButton.styleFrom(
                  elevation: 0,
                ),
                onPressed: () {},
                child: Text(
                  'Apply Now',
                  style: GoogleFonts.plusJakartaSans(
                    color: blue,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
