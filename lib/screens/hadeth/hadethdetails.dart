import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:muslim/screens/hadeth/elhadeth.dart';

class hadethDetails extends StatefulWidget {
  static const String routeName = 'hadethDetails';

  const hadethDetails({super.key});

  @override
  State<hadethDetails> createState() => hadethDetailsState();
}

class hadethDetailsState extends State<hadethDetails> {
  @override
  Widget build(BuildContext context) {

    var args = ModalRoute.of(context)!.settings.arguments as dataHadeth;
    return Stack(
      children: [

        Image.asset(
          "assets/images/background.jpg",
          fit: BoxFit.fill,
          height: double.infinity,
          width: double.infinity,
        ),
        Scaffold(
          appBar: AppBar(
            leading: const BackButton(color: Color(0xFF071952),),
            elevation: 0,
            centerTitle: true,
            title: Text(
            args.title,
              style:
              GoogleFonts.arefRuqaa(fontSize: 20, color: const Color(0xFF071952)),
            ),
            // backgroundColor: Colors.white.withOpacity(0.5),
          ),

          backgroundColor: Colors.transparent,
          body: Container(
            width: double.infinity,
            margin: const EdgeInsetsDirectional.all(35),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.4),
              borderRadius: BorderRadius.circular(12),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsetsDirectional.only(top: 15),
                    child: args.hadeth.isEmpty
                        ? const Center(
                        child: CircularProgressIndicator(
                          color: Color(0xFF071952),
                        ))
                        : SingleChildScrollView(
                      child: Container(
                        padding: const EdgeInsetsDirectional.all(10),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            args.hadeth,
                            textAlign: TextAlign.right,
                            style:
                            GoogleFonts.arefRuqaa(fontSize: 25, color: const Color(0xFF071952)),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
