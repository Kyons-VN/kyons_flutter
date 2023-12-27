// import 'package:fpdart/fpdart.dart';

// import 'sandbox_api.dart';

// Reader<Api, Future<Either<String, Unit>>> signOut() {
//   return Reader(
//     (api) => _signOut(api).run(),
//   );
// }

// TaskEither<String, Unit> _signOut(Api api) => TaskEither.tryCatch(
//       () => api.signOut(),
//       (err, trace) {
//         return "Error signout";
//       },
//     );