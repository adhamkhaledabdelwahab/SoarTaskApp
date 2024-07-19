import 'package:soar_task_app/src/core/network/error_model/error_model.dart';

abstract class DataState<T> {
  final T? data;
  final ErrorModel? error;

  const DataState({this.data, this.error});
}

class DataSuccess<T> extends DataState<T> {
  const DataSuccess(T data) : super(data: data);
}

class DataFailed<T> extends DataState<T> {
  const DataFailed(ErrorModel error) : super(error: error);
}
