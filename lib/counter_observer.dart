import 'package:bloc/bloc.dart';

class CounterObserver extends BlocObserver {
  @override
  void onChanged(BlocBase<dynamic> bloc, Change<dynamic> change) {
    super.onChange(bloc, change);
  }
}
