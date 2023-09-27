import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_islamic_icons/flutter_islamic_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:muslim/screens/azkar/azkar_screen.dart';
import 'package:muslim/screens/hadeth/elhadeth.dart';
import 'package:muslim/screens/quraanscreen/quranscreen.dart';
import 'package:muslim/screens/tasbehscreen/tasbeh.dart';

import '../../themecubit/theme_cubit.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const String routeName = 'HomeScreen';

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
          appBar: AppBar(
            elevation: 0,
            leading: InkWell(
              onTap: () {
                _showModalBottomSheet(context);
              },
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                child: Image.asset(
                  "assets/images/theme1.png",
                  height: 10,
                  color: const Color(0xFF071952),
                ),
              ),
            ),
            title: Text(
              "مسلم",
              style: GoogleFonts.arefRuqaa(
                  fontSize: 25, color: const Color(0xFF071952)),
            ),
            centerTitle: true,
          ),
          backgroundColor: Colors.transparent,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        shape: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.18,
                          width: MediaQuery.of(context).size.width * 0.35,
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.6),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                FlutterIslamicIcons.quran2,
                                size: 30,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Flexible(
                                child: Text(
                                  "القران الكريم",
                                  style: GoogleFonts.arefRuqaa(
                                      fontSize: 22,
                                      color: const Color(0xFF071952)),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const QuranPage()));
                    },
                  ),
                  GestureDetector(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        shape: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.18,
                          width: MediaQuery.of(context).size.width * 0.35,
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.6),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                FlutterIslamicIcons.tasbihHand,
                                size: 35,
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Flexible(
                                child: Text(
                                  "التسبيح",
                                  style: GoogleFonts.arefRuqaa(
                                    fontSize: 22,
                                    color: const Color(0xFF071952),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TasbehPage()));
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
                      child: Card(
                        shape: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.18,
                          width: MediaQuery.of(context).size.width * 0.35,
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.6),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                FlutterIslamicIcons.mohammad,
                                size: 35,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Flexible(
                                child: Text(
                                  "الاحاديث",
                                  style: GoogleFonts.arefRuqaa(
                                    fontSize: 22,
                                    color: const Color(0xFF071952),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const hadethScreen()));
                    },
                  ),
                  GestureDetector(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        shape: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.18,
                          width: MediaQuery.of(context).size.width * 0.35,
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.6),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                FlutterIslamicIcons.lantern,
                                size: 30,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Flexible(
                                child: Text(
                                  "اذكار",
                                  style: GoogleFonts.arefRuqaa(
                                    fontSize: 22,
                                    color: const Color(0xFF071952),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AzkarScreen()));
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

void _showModalBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext ctx) {
      return BlocConsumer<ThemeCubit, ThemeState>(
        listener: (context, state) {},
        builder: (context, state) {
          ThemeCubit cubit = ThemeCubit.get(context);
          return SizedBox(
            height: 100,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Card(
                      child: Container(
                        color: Colors.white.withOpacity(0.5),
                        child: ListTile(
                          onTap: () {
                            cubit.changeTheme();
                          },
                          leading: const Icon(
                            Icons.toggle_off_outlined,
                            color: Color(0xFF071952),
                          ),
                          title: const Text("Change Theme",
                              style: TextStyle(color: Color(0xFF071952))),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      );
    },
  );
}
