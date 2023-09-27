import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:muslim/screens/azkar/cubit/azkar_cubit.dart';

class Ad3yaQuran extends StatelessWidget {
  const Ad3yaQuran({Key? key}) : super(key: key);

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
          create: (context) => AzkarCubit(),
          child: BlocConsumer<AzkarCubit, AzkarState>(
            listener: (context, state) {},
            builder: (context, state) {
              AzkarCubit cubit = AzkarCubit.get(context);
              return Scaffold(
                  backgroundColor: Colors.transparent,
                  appBar: AppBar(
                    leading: const BackButton(color: Color(0xFF071952),),
                    elevation: 0,
                    centerTitle: true,
                    title: Text(
                      cubit.contentData5[0]['category'],
                      style: GoogleFonts.arefRuqaa(
                          fontSize: 22, color: const Color(0xFF071952)),
                    ),
                    // backgroundColor: Colors.white.withOpacity(0.5),
                  ),
                  body: ListView.builder(
                    itemCount: cubit.contentData5.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          color: Colors.white.withOpacity(0.4),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: ListTile(
                              title: Align(
                                  alignment: Alignment.topRight,
                                  child: Text(
                                    cubit.contentData5[index]['content'],
                                    style: GoogleFonts.amiriQuran(
                                        color: const Color(0xFF071952),
                                        fontSize: 20,fontWeight: FontWeight.bold),
                                  )),
                            ),
                          ),
                        ),
                      );
                    },
                  ));
            },
          ),
        ),
      ],
    );
  }
}
