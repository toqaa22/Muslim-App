import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:muslim/core/sura_details.dart';
import 'package:muslim/screens/quraanscreen/sorascreen.dart';

class QuranPage extends StatelessWidget {
  const QuranPage({Key? key}) : super(key: key);

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
            leading: const BackButton(
              color: Color(0xFF071952),
            ),
            elevation: 0,
            centerTitle: true,
            title: Text(
              "القران الكريم",
              style: GoogleFonts.arefRuqaa(
                  fontSize: 22, color: const Color(0xFF071952)),
            ),
            // backgroundColor: Colors.white.withOpacity(0.5),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Image.asset("assets/images/quranpage-icon.png"),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    color: Colors.transparent.withOpacity(0.08),
                    height: MediaQuery.of(context).size.height * 0.5,
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        children: [
                          Table(
                            border:
                                TableBorder.all(color: const Color(0xFF071952)),
                            children: [
                              TableRow(children: [
                                Center(
                                    child: Text("رقم السورة",
                                        style: GoogleFonts.arefRuqaa(
                                          fontSize: 20,
                                          color: const Color(0xFF071952),
                                        ))),
                                Center(
                                    child: Text("اسم السورة",
                                        style: GoogleFonts.arefRuqaa(
                                            fontSize: 20,
                                            color: const Color(0xFF071952)))),
                              ])
                            ],
                          ),
                          Flexible(
                            child: ListView.builder(
                              itemCount: QuranDetails.length,
                              itemBuilder: (context, index) {
                                return InkWell(
                                  onTap: () {
                                    Navigator.pushNamed(
                                        context, QuranDetailsScreen.routeName,
                                        arguments: QuranModel(
                                          index,
                                          QuranDetails[index]['name'],
                                        ));
                                  },
                                  child: Table(
                                    border: TableBorder.all(
                                        color: const Color(0xFF071952)),
                                    children: [
                                      TableRow(children: [
                                        Center(
                                            child: Text(
                                          QuranDetails[index]["id"].toString(),
                                          style: GoogleFonts.arefRuqaa(
                                              fontSize: 17,
                                              color: const Color(0xFF071952)
                                                  .withOpacity(0.6)),
                                        )),
                                        Center(
                                            child: Text(
                                          QuranDetails[index]["name"]
                                              .toString(),
                                          style: GoogleFonts.arefRuqaa(
                                              fontSize: 17,
                                              color: const Color(0xFF071952)
                                                  .withOpacity(0.6)),
                                        )),
                                      ])
                                    ],
                                  ),
                                );
                              },
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
