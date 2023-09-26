
import 'package:flutter_bloc/flutter_bloc.dart';


part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(ThemeInitial());
  static ThemeCubit get(context) => BlocProvider.of(context);
  bool isDark = false;
  bool get isdark => isDark;
  void changeTheme (){
    isDark = !isDark;
    emit(ChangeTheme());
  }
}
