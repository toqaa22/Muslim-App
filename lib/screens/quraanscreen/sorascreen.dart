import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class QuranDetailsScreen extends StatefulWidget {
  const QuranDetailsScreen({
    super.key,
  });
  static const String routeName = 'quranDetailsScreen';

  @override
  State<QuranDetailsScreen> createState() => _QuranDetailsScreenState();
}

class _QuranDetailsScreenState extends State<QuranDetailsScreen> {
  List<String> quranDetails = [];

  @override
  Widget build(BuildContext context) {
    var quran = ModalRoute.of(context)?.settings.arguments as QuranModel;
    if (quranDetails.isEmpty) {
      loadFile(quran.index);
    }
    return Stack(
      children: [
        Image.asset(
          'assets/images/surabackground3.jpg', width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            leading: const BackButton(
              color: Color(0xFF071952),
            ),
            title: Text(
              " سورة ${quran.name} ",
              style: GoogleFonts.arefRuqaa(
                fontSize: 22,
                color: const Color(0xFF071952),
              ),
            ),
            centerTitle: true,

            elevation: 0,
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35.0,vertical: 10),
            child: ListView.builder(

              // separatorBuilder: (context, index) =>Icon(Icons.circle_outlined),
              itemCount: quranDetails.length,
              itemBuilder: (context, index) {
                return Text(
                  quranDetails[index],
                  textAlign: TextAlign.center,
                  style:  GoogleFonts.amiriQuran(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: const Color(0xFF071952),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
  void loadFile(int index) async {
    String file = await rootBundle.loadString("assets/quran_files/${index + 1}.txt");
    List<String> suraLines = file.split("\n");

    quranDetails = [];
    for (int i = 0; i < suraLines.length; i++) {
      String line = suraLines[i];
      String modifiedLine = "${line.trimRight()} 【${1 + i}】";
      quranDetails.add(modifiedLine);
    }
    setState(() {});
  }
}




class QuranModel {
  int index;
  String name;
  QuranModel(this.index,this.name);
}