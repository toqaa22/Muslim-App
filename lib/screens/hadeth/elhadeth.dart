import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:muslim/screens/hadeth/hadethitem.dart';


class hadethScreen extends StatefulWidget {
  const hadethScreen({super.key});

  @override
  State<hadethScreen> createState() => _hadethScreenState();
}

class _hadethScreenState extends State<hadethScreen> {
  @override
  Widget build(BuildContext context) {

    if (allhadeth.isEmpty) loadAHadeth();
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
              'الأحاديث',
              style:
              GoogleFonts.arefRuqaa(fontSize: 20, color: const Color(0xFF071952)),
            ),
            // backgroundColor: Colors.white.withOpacity(0.5),
          ),
          backgroundColor: Colors.transparent,
          body: Column(
            children: [

              Expanded(
                flex: 5,
                child: ListView.builder(
                    itemBuilder: (context, index) => hadethItem(allhadeth[index]),
                    itemCount: allhadeth.length),
              ),
            ],
          ),
        ),
      ]
    );
  }

  List<dataHadeth> allhadeth = [];

  void loadAHadeth() async {
    for (int i = 1; i <= 50; i++) {
      String fileContent =
      await rootBundle.loadString('assets/hadeth/h$i.txt');
      List<String> lines = fileContent.split('\n');
      String title = lines[0];
      String hadeth = '';
      for (int j = 1; j < lines.length; j++) {
        hadeth += lines[j];
      }
      var h = dataHadeth(title, hadeth);
      allhadeth.add(h);
    }
    setState(() {});
  }
}

class dataHadeth {
  String title;
  String hadeth;
  dataHadeth(this.title, this.hadeth);
}
