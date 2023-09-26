import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:muslim/screens/tasbehscreen/cubit/tasbeh_cubit.dart';

class TasbehPage extends StatefulWidget {
  const TasbehPage({Key? key}) : super(key: key);

  @override
  State<TasbehPage> createState() => _TasbehPageState();
}

class _TasbehPageState extends State<TasbehPage> {
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
        BlocProvider(
          create: (context) => TasbehCubit(),
          child: BlocConsumer<TasbehCubit, TasbehState>(
            listener: (context, state) {
              // TODO: implement listener
            },
            builder: (context, state) {
              TasbehCubit cubit = TasbehCubit.get(context);
              return Scaffold(
                backgroundColor: Colors.transparent,
                appBar: AppBar(
                  leading: const BackButton(
                    color: Color(0xFF071952),
                  ),
                  elevation: 0,
                  centerTitle: true,
                  title: Text(
                    "السبحة",
                    style: GoogleFonts.arefRuqaa(
                        fontSize: 20, color: const Color(0xFF071952)),
                  ),
                  // backgroundColor: Colors.white.withOpacity(0.5),
                ),
                body: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Center(
                        child: InkWell(
                          onTap: () {
                            cubit.addTasbeh();
                          },
                          child: Card(
                            color: Colors.transparent,
                            elevation: 30,
                            shadowColor: const Color(0xFF071952),
                            shape: const CircleBorder(),
                            child: CircleAvatar(
                              radius: 100,
                              backgroundColor:
                                  const Color(0xFF071952).withOpacity(0.6),
                              child: Center(
                                child: Text(
                                  "${cubit.count}",
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 80,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                            width: 200,
                            decoration: BoxDecoration(
                                border: const Border(),
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.white),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                child: Text(
                                  cubit.tsbehText,
                                  style: GoogleFonts.arefRuqaa(
                                      fontSize: 30,
                                      color: const Color(0xFF071952)),
                                ),
                              ),
                            )),
                      )
                    ]),
              );
            },
          ),
        ),
      ],
    );
  }
}
