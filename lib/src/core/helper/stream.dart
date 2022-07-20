typedef ComputationFunction<T> = T Function(int computationCount);

Stream<T> periodicInsertFirst<T>(Duration duration, ComputationFunction<T>? callback) async* {
  if (callback != null) yield callback(-1);
  yield* Stream.periodic(duration, callback);
}
