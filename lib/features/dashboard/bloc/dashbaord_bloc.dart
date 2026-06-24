import 'package:flutter_bloc/flutter_bloc.dart';
import '../domain/dashboard_repository.dart';
import 'dashbaord_state.dart';
import 'dashboard_event.dart';

class DashboardBloc
    extends Bloc<DashboardEvent,
        DashboardState> {

  final DashboardRepository repository;

  DashboardBloc(this.repository)
      : super(DashboardInitial()) {

    on<LoadDashboard>(
      _loadDashboard,
    );
  }

  Future<void> _loadDashboard(
      LoadDashboard event,
      Emitter<DashboardState> emit,
      ) async {

    emit(DashboardLoading());

    try {

      final data =
      await repository.getDashboard();

      emit(
        DashboardLoaded(data),
      );

    } catch (e) {

      emit(
        DashboardError(
          e.toString(),
        ),
      );
    }
  }
}