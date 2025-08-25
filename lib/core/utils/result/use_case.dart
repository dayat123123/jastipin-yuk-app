abstract interface class UseCase<R, P> {
  Future<R> call(P params);
}

abstract interface class StreamUseCase<R1, R2, P1, P2> {
  Stream<R1> subscribe(P1 params);
  Future<R2> unsubscribe(P2 params);
}
