import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:muslim/screens/azkar/ad3yaanbyaa.dart';
import 'package:muslim/screens/azkar/ad3yaquran.dart';
import 'package:muslim/screens/azkar/azkar%20el%20masaa.dart';
import 'package:muslim/screens/azkar/azkar%20el%20sabah.dart';
import 'package:muslim/screens/azkar/azkarelestykaz.dart';
import 'package:muslim/screens/azkar/azkarelnom.dart';

class AzkarScreen extends StatelessWidget {
  const AzkarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          "assets/images/background.jpg",
          fit: BoxFit.fill,
          height: double.infinity,
          width: double.infinity,
        ),
        Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              leading: const BackButton(color: Color(0xFF071952),),
              elevation: 0,
              centerTitle: true,
              title: Text(
                "الاذكار",
                style: GoogleFonts.arefRuqaa(
                    fontSize: 22, color: const Color(0xFF071952)),
              ),
              // backgroundColor: Colors.white.withOpacity(0.5),
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.18,
                          width: MediaQuery.of(context).size.width * 0.35,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                                opacity: 0.4,
                                fit: BoxFit.fill,
                                image:
                                    AssetImage("assets/images/6.jpg")),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: Text(
                              "اذكار الصباح",
                              style: GoogleFonts.arefRuqaa(
                                fontSize: 22,
                                color: const Color(0xFF071952),
                              ),
                            ),
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const AzkarElSabah()));
                      },
                    ),
                    GestureDetector(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.18,
                          width: MediaQuery.of(context).size.width * 0.35,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                                opacity: 0.3,
                                fit: BoxFit.fill,
                                image: AssetImage("assets/images/3.jpg")),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: Text(
                              "اذكار المساء",
                              style: GoogleFonts.arefRuqaa(
                                fontSize: 22,
                                color: const Color(0xFF071952),
                              ),
                            ),
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const AzkarElMassa()));
                      },
                    ),
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.18,
                          width: MediaQuery.of(context).size.width * 0.35,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                                opacity: 0.3,
                                fit: BoxFit.fill,
                                image: AssetImage("assets/images/2.jpg")),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: Text(
                              "اذكار النوم",
                              style: GoogleFonts.arefRuqaa(
                                fontSize: 22,
                                color: const Color(0xFF071952),
                              ),
                            ),
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) =>const AzkarElNoom(),));

                      },
                    ),
                    GestureDetector(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.18,
                          width: MediaQuery.of(context).size.width * 0.35,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                                opacity: 0.4,
                                fit: BoxFit.fill,
                                image:
                                    AssetImage("assets/images/1.jpg")),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: Text(
                                " اذكار الاستيقاظ",
                                style: GoogleFonts.arefRuqaa(
                                  fontSize: 20,
                                  color: const Color(0xFF071952),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const AzkarElEstykaz()));
                      },
                    ),
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.18,
                          width: MediaQuery.of(context).size.width * 0.35,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                                opacity: 0.3,
                                fit: BoxFit.fill,
                                image:
                                    AssetImage("assets/images/5.jpg")),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: Text(
                              "أدعية قرآنية",
                              style: GoogleFonts.arefRuqaa(
                                fontSize: 22,
                                color: const Color(0xFF071952),
                              ),
                            ),
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Ad3yaQuran()));
                      },
                    ),
                    GestureDetector(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.18,
                          width: MediaQuery.of(context).size.width * 0.35,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                                opacity: 0.3,
                                fit: BoxFit.fill,
                                image:
                                    AssetImage("assets/images/4.jpg")),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: Text(
                              "أدعية الأنبياء",
                              style: GoogleFonts.arefRuqaa(
                                fontSize: 22,
                                color: const Color(0xFF071952),
                              ),
                            ),
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Ad3yaAnbyaa()));
                      },
                    ),
                  ],
                ),
              ],
            )),
      ],
    );
  }
}
