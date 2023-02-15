import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'nike_store_state.dart';

class NikeStoreCubit extends Cubit<NikeStoreState> {
  NikeStoreCubit() : super(NikeStoreInitial.init());
}
