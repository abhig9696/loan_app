
import '../domain/dashboard_entity.dart';
import '../domain/dashboard_repository.dart';
import 'dashbaord_model.dart';
import 'dashboard_local_datasource.dart';

class DashboardRepositoryImpl
    implements DashboardRepository {

  final DashboardLocalDataSource
  datasource =
  DashboardLocalDataSource();

  @override
  Future<DashboardEntity>
  getDashboard() async {

    final json =
    await datasource.getDashboardData();

    return DashboardModel.fromJson(
      json,
    );
  }
}