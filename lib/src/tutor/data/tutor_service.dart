import 'package:fpdart/fpdart.dart';
import '../../core/data/api.dart';
import '../../tutor/data/tutor_dto.dart';
import '../../tutor/domain/session.dart';
import '../../tutor/domain/tutor.dart';
import 'package:shared_package/shared_package.dart';

Reader<ITutor, Future<Either<ApiFailure, String>>> requestTutor(String learningPointDifficultyId) => Reader(
      (api) => _requestTutor(api, learningPointDifficultyId).run(),
    );

TaskEither<ApiFailure, String> _requestTutor(ITutor api, String learningPointDifficultyId) => TaskEither.tryCatch(
      () => api.requestTutor(learningPointDifficultyId),
      handleError,
    );

Reader<ITutor, Future<Either<ApiFailure, TutorSessionStatus>>> checkSessionStatus(String sessiontId) => Reader(
      (api) => _checkSessionStatus(api, sessiontId).run(),
    );

TaskEither<ApiFailure, TutorSessionStatus> _checkSessionStatus(ITutor api, String sessiontId) => TaskEither.tryCatch(
      () => api.checkSessionStatus(sessiontId),
      handleError,
    );

class Tutor extends ITutor {
  final api = Api.init().api;

  @override
  Future<String> requestTutor(String learningPointDifficultyId) {
    final params = {'learning_point_difficulty_id': learningPointDifficultyId};
    final response = api.post('$serverApi/tutor/request_tutor', data: params);
    return response.then(handleResponseError).then((value) async {
      final sessionId = (value as Map<String, dynamic>)['session_id'].toString();
      return sessionId;
    });
  }

  @override
  Future<TutorSessionStatus> checkSessionStatus(String sessiontId) async {
    final params = {'session_id': sessiontId};
    if (sessiontId.isEmpty) return TutorSessionStatus.empty();
    final response = api.get('$serverApi/tutor/check_class_status', queryParameters: params);
    return response.then(handleResponseError).then((value) async {
      final data = value as Map<String, dynamic>;
      data['meeting_url'] = (value['tutor_info'] ?? {})['meeting_url'] ?? '';
      return TutorSessionStatusDto.fromJson(data).toDomain();
    });
  }
}
