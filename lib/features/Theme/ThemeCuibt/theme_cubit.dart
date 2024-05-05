import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(ThemeDark());


  bool Isdark=true;
  bool IsEnglish=true;


  void ChangeTheme(bool val){

    Isdark=val;
    emit(ChangethemeState());
  }
  void Changelang(){

    IsEnglish=!IsEnglish;
    emit(ChangeLangState());
  }


}
