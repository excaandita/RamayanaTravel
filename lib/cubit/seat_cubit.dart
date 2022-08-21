import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'seat_state.dart';

class SeatCubit extends Cubit<SeatState> {
  SeatCubit() : super(SeatInitial());
}
