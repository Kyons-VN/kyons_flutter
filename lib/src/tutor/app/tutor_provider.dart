// import 'dart:async';

// import 'package:fpdart/fpdart.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';
// import '../../tutor/data/tutor_service.dart' as tutor_service;
// import '../../tutor/data/tutor_service.dart';
// import '../../tutor/domain/session.dart';
// import '../../tutor/domain/tutor.dart';
// import 'package:shared_package/shared_package.dart';

// part 'tutor_provider.freezed.dart';
// part 'tutor_state.dart';

// class TutorNotifier extends StateNotifier<TutorState> {
//   final ITutor tutorApi;
//   late String sessionId;

//   TutorNotifier(this.tutorApi) : super(TutorState.init());

//   Future<void> requestTutor(String learningPointDifficultyId) async {
//     state = TutorState.loading();
//     final Either<ApiFailure, String> failureOrSuccess =
//         await tutor_service.requestTutor(learningPointDifficultyId).run(tutorApi);
//     state = failureOrSuccess.fold(
//       (l) => TutorState.error(l.toString()),
//       (sessionId) {
//         sessionId = sessionId;
//         return TutorState.data(sessionId);
//       },
//     );
//   }

//   StreamSubscription? _sub;
//   void checkSessionStatus(String sessionId) {
//     final Stream<Either<ApiFailure<dynamic>, TutorSessionStatus>> myStream =
//         Stream.periodic(const Duration(seconds: 5)).asyncExpand((event) {
//       return tutor_service.checkSessionStatus(sessionId).run(tutorApi).asStream();
//     });
//     _sub = myStream.listen((failureOrSuccess) {
//       state = failureOrSuccess.fold(
//         (l) {
//           if (_sub != null) unawaited(_sub!.cancel());
//           return TutorState.error(l.toString());
//         },
//         (sessionStatus) {
//           if (sessionStatus.status == SessionStatus.processing) {
//             if (_sub != null) unawaited(_sub!.cancel());
//             return TutorState.complete(sessionStatus);
//           } else {
//             return TutorState.loading();
//           }
//         },
//       );
//     });
//   }

//   @override
//   void dispose() async {
//     if (_sub != null) await _sub!.cancel();
//     super.dispose();
//   }
// }

// final tutor = Provider<Tutor>((ref) => Tutor());

// final tutorNotifierProvider = StateNotifierProvider.autoDispose<TutorNotifier, TutorState>(
//   (ref) => TutorNotifier(ref.read(tutor)),
// );
