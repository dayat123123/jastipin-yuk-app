part 'success.dart';
part 'failed.dart';

sealed class Result<T> {
  const Result();

  const factory Result.success(T value) = Success<T>;
  const factory Result.failed(String message) = Failed<T>;

  bool get isSuccess => this is Success<T>;
  bool get isFailed => this is Failed<T>;

  T? get resultValue => isSuccess ? (this as Success<T>).value : null;
  String? get errorMessage => isFailed ? (this as Failed<T>).message : null;

  R when<R>({
    required R Function(T value) success,
    required R Function(String message) failed,
  }) {
    if (this is Success<T>) {
      return success((this as Success<T>).value);
    } else if (this is Failed<T>) {
      return failed((this as Failed<T>).message);
    }
    throw Exception('Unhandled case in Result.when');
  }
}
