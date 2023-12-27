// part of 'tutor_provider.dart';

// @freezed
// class TutorState with _$TutorState {
//   const factory TutorState({
//     required Option<String> sessionId,
//     required Option<TutorSessionStatus> sessionStatus,
//     required bool loading,
//     required bool hasError,
//   }) = _TutorState;

//   factory TutorState.init() => TutorState(
//         sessionId: none(),
//         sessionStatus: none(),
//         loading: false,
//         hasError: false,
//       );
//   factory TutorState.loading() => TutorState(
//         sessionId: none(),
//         sessionStatus: none(),
//         loading: true,
//         hasError: false,
//       );
//   factory TutorState.data(String sessionId) => TutorState(
//         sessionId: some(sessionId),
//         sessionStatus: none(),
//         loading: true,
//         hasError: false,
//       );
//   factory TutorState.complete(TutorSessionStatus sessionStatus) => TutorState(
//         sessionId: none(),
//         sessionStatus: some(sessionStatus),
//         loading: false,
//         hasError: false,
//       );
//   factory TutorState.error([String? error]) => TutorState(
//         sessionId: none(),
//         sessionStatus: none(),
//         loading: false,
//         hasError: true,
//       );
// }
