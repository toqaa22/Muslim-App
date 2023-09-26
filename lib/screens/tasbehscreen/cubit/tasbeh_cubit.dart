import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'tasbeh_state.dart';

class TasbehCubit extends Cubit<TasbehState> {
  TasbehCubit() : super(TasbehInitial());
  static TasbehCubit get(context) => BlocProvider.of(context);
  int scount = -99;
  int aCount = -33;
  int allaAkbrCount = -66;
  int count = 0;
  String tsbehText = "سبحان الله";

  void addTasbeh() {

      count++;
      aCount++;
      scount++;
      allaAkbrCount++;
      emit(StartTasbeh());
      if (count == 33) {
        count = 0;
        if (aCount == 0) {
          tsbehText = "الحمد لله ";
        }
        emit(SecondTasbeh());
        if (allaAkbrCount == 0) {
          tsbehText = "الله اكبر";
        }
        emit(thirdTasbeh());
        if (scount == 0) {
          tsbehText = "سبحان الله";
          scount = -99;
          aCount = -33;
          allaAkbrCount = -66;
        }
        emit(ReTasbeh());


      }

  }
}
