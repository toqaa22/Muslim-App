import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/azkar.dart';


part 'azkar_state.dart';

class AzkarCubit extends Cubit<AzkarState> {
  AzkarCubit() : super(AzkarInitial());
  static AzkarCubit get(context) => BlocProvider.of(context);
  List<dynamic> contentData1 = azkar[0]['أذكار الصباح'];
  List<dynamic> contentData2 = azkar[0]['أذكار المساء'];
  List<dynamic> contentData3 = azkar[0]['أذكار النوم'];
  List<dynamic> contentData4 = azkar[0]['أذكار الاستيقاظ'];
  List<dynamic> contentData5 = azkar[0]['أدعية قرآنية'];
  List<dynamic> contentData6 = azkar[0]['أدعية الأنبياء'];
}
