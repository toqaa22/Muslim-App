import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:muslim/screens/hadeth/elhadeth.dart';
import 'package:muslim/screens/hadeth/hadethdetails.dart';

class hadethItem extends StatelessWidget {
  dataHadeth datahadeth;
  hadethItem(this.datahadeth, {super.key});
  @override
  Widget build(BuildContext context) {

    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, hadethDetails.routeName,
            arguments: datahadeth);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Card(
          elevation: 5,
          child: Container(
            color: Colors.white.withOpacity(0.8),
            margin: const EdgeInsetsDirectional.only(top: 5),
            child: ListTile(
              trailing: Text(
                datahadeth.title,
                style: GoogleFonts.arefRuqaa(fontSize: 22, color: const Color(0xFF071952)),
              ),
            )
          ),
        ),
      ),
    );
  }
}