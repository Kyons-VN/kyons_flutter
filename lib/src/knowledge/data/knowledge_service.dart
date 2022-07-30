import 'package:fpdart/fpdart.dart';
import 'package:kyons_flutter/src/authentication/domain/api_failures.dart';
import 'package:kyons_flutter/src/core/data/api.dart';
import 'package:kyons_flutter/src/core/domain/core.dart';
import 'package:kyons_flutter/src/knowledge/data/knowledge.dart';
import 'package:kyons_flutter/src/knowledge/data/knowledge_dto.dart';
import 'package:kyons_flutter/src/knowledge/domain/i_knowledge.dart';
import 'package:kyons_flutter/src/test_knowledge/data/test_knowledge.dart';
import 'package:kyons_flutter/src/test_knowledge/data/test_knowledge_dto.dart';

Reader<IKnowledge, Future<Either<ApiFailure, List<Subject>>>> getSubjects() => Reader(
      (api) => _getSubjects(api).run(),
    );

TaskEither<ApiFailure, List<Subject>> _getSubjects(IKnowledge api) => TaskEither.tryCatch(
      () => api.getSubjects(),
      handleError,
    );

Reader<IKnowledge, Future<Either<ApiFailure, List<Program>>>> getFrogramFromSubject(Subject subject) => Reader(
      (api) => _getPrograms(subject, api).run(),
    );

TaskEither<ApiFailure, List<Program>> _getPrograms(Subject subject, IKnowledge api) => TaskEither.tryCatch(
      () => api.getStudentProgram(),
      handleError,
    );

Reader<IKnowledge, Future<Either<ApiFailure, Unit>>> defaultLearningPath() => Reader(
      (api) => _defaultLearningPath(api).run(),
    );

TaskEither<ApiFailure, Unit> _defaultLearningPath(IKnowledge api) => TaskEither.tryCatch(
      () => api.defaultLearningPath(),
      handleError,
    );

Reader<IKnowledge, Future<Either<ApiFailure, LearningPath>>> getLearningPath() => Reader(
      (api) => _getLearningPath(api).run(),
    );

TaskEither<ApiFailure, LearningPath> _getLearningPath(IKnowledge api) => TaskEither.tryCatch(
      () => api.getLearningPath(),
      handleError,
    );

Reader<IKnowledge, Future<Either<ApiFailure, LessonGroup>>> getLessonGroup(String lessonGroupId) => Reader(
      (api) => _getLessonGroup(api, lessonGroupId).run(),
    );

TaskEither<ApiFailure, LessonGroup> _getLessonGroup(IKnowledge api, String lessonGroupId) => TaskEither.tryCatch(
      () => api.getLessonGroup(lessonGroupId),
      handleError,
    );

Reader<IKnowledge, Future<Either<ApiFailure, List<Program>>>> getStudentProgram() => Reader(
      (api) => _getStudentProgram(api).run(),
    );

TaskEither<ApiFailure, List<Program>> _getStudentProgram(IKnowledge api) => TaskEither.tryCatch(
      () => api.getStudentProgram(),
      handleError,
    );

Reader<IKnowledge, Future<Either<ClientFailure, Unit>>> setCurrentProgram(Program program) => Reader(
      (api) => _setCurrentProgram(api, program).run(),
    );

TaskEither<ClientFailure, Unit> _setCurrentProgram(IKnowledge api, Program program) => TaskEither.tryCatch(
      () => api.setCurrentProgram(program),
      handleClientError,
    );

class Knowledge implements IKnowledge {
  final api = Api.init().api;

  @override
  Future<List<Program>> getStudentProgram() async {
    // final response = api.get('$serverApi/');
    return Future.value([
      Program(
        id: '1',
        name: 'Chương trình quốc gia',
        subjectId: '1',
      ),
    ]);
  }

  @override
  Future<List<Subject>> getSubjects() {
    final response = api.get('$serverApi/subjects');
    return response.then(handleResponseError).then((value) async {
      final data = value as List<dynamic>;
      final result = data.map((json) => SubjectDto.fromJson(json).toDomain()).toList();
      return result;
    });
  }

  @override
  Future<TestContent> getDiagnosticTest() {
    final response = api.get('$serverApi/test/diagostic_test');
    return response.then(handleResponseError).then((value) async {
      final data = value as Map<String, dynamic>;
      final result = TestContentDto.fromJson(data).toDomain();
      return result;
    });
  }

  @override
  Future<Unit> defaultLearningPath() {
    final response = api.get('$serverApi/test/skip_diagnostic_test');
    return response.then((res) {
      if (res.statusCode != 200) {
        return Future.error(const ApiFailure.serverError());
      }
      return unit;
    });
  }

  @override
  Future<LearningPath> getLearningPath() {
    final response = api.get('$serverApi/lesson/list');
    return response.then(handleResponseError).then((value) async {
      final data = {
        'lessonsDto': (value as List<dynamic>).map((lessonJson) {
          lessonJson['new'] = lessonJson['new'] ?? false;
          return lessonJson;
        }).toList()
      };
      final result = LearningPathDto.fromJson(data).toDomain();
      return result;
    });
  }

  @override
  Future<LessonGroup> getLessonGroup(String lessonGroupId) {
    final response = api.get('$serverApi/lesson/$lessonGroupId');
    return response.then(handleResponseError).then((value) async {
      // final value = [
      //   {
      //     "category_id": 2,
      //     "category_name": "Grammar",
      //     "topic_id": 1,
      //     "topic_name": "Topic name",
      //     "lessons": [
      //       {
      //         "id": 418,
      //         "content":
      //             "1. Khái niệm câu tường thuật \n- Câu tường thuật được dùng để tường thuật, nói lại những gì người khác nói bằng câu từ của mình, còn được gọi là câu gián tiếp. Còn khi nói lại những gì người khác nói bằng đúng câu từ của họ thì đó là câu trực tiếp, xuất hiện trong dấu ngoặc kép. \n- Khi tường thuật những gì người khác nói bằng câu từ của mình, sẽ có những thay đổi về thì, đại từ, hạn định từ, từ chỉ thời gian và nơi chốn, và một số yếu tố khác. \n\n2. Lùi thì \n- Động từ tường thuật (reporting verb) là những động từ được dùng để bắt đầu một mệnh đề tường thuật. Vi dụ: say, tell, ask,… Khi động từ tường thuật ở thì quá khứ, chúng ta thường lùi thì động từ trong mệnh đề tường thuật. \n- Các trường hợp lùi thì: \na. Hiện tại đơn → Quá khứ đơn \nVí dụ: \"He plays well,\" she said. → She said that he played well. \n\nb. Hiện tại tiếp diễn → Quá khứ tiếp diễn \nVí dụ: \"He is playing well,\" she said. → She said that he was playing well. \n\nc. Hiện tại hoàn thành → Quá khứ hoàn thành \nVí dụ: \"He has played well,\" she said. → She said that he had played well. \n\nd. Hiện tại hoàn thành tiếp diễn → Quá khứ hoàn thành tiếp diễn \nVí dụ: \"He has been playing well,\" she said. → She said that he had been playing well. \n\ne. Quá khứ đơn → Quá khứ hoàn thành \nVí dụ: \"He played well,\" she said. → She said that he had played well. \n\nf. Quá khứ tiếp tiếp diễn → Quá khứ hoàn thành tiếp diễn \nVí dụ: \"He was playing well,\" she said. → She said that he had been playing well. \n\ng. am/is/are going to → was/were going to \nVí dụ: \"He is going to play well,\" she said. → She said that he was going to play well. \n\nh. will → would \nVí dụ: \"He will play well,\" she said. → She said that he would play well. \n\n- Nếu động từ trong câu trực tiếp ở thì quá khứ hoàn thành và quá khứ hoàn thành tiếp diễn thì không cần lùi thì trong câu tường thuật. \nVí dụ: \"He had played well,\" she said. → She said that he had played well.",
      //         "difficulty_level": 1,
      //         "learning_point_difficulty_id": 1,
      //         "learning_point_id": 25,
      //         "name": "Reported speech: Backshift"
      //       },
      //       {
      //         "id": 419,
      //         "content":
      //             "1. Thay đổi đại từ xưng hô và định từ sở hữu \n- Cũng giống như trong tiếng Việt, khi đổi từ câu trực tiếp sang câu tường thuật, đại từ sẽ bị thay đổi. \nVí dụ: \"I've lost my credit card,\" said Tim. → Tim said he had lost his credit card. \nĐại từ \"I\" trong câu trực tiếp chỉ \"Tim\", sang câu tường thuật người nói không phải là \"Tim\" nên được đổi thành \"he\" để chỉ \"Tim\". Tương tự như vậy \"my\" được đổi thành \"his\". \n\n2. Thay đổi với this/that/these/those \n- this/that → that \nVí dụ 1: \"I love this sweater,\" said Tim. → Tim said he loved that sweater. \nVí dụ 2: \"This is a lovely sweater,\" said Tim. → Tim said that was a lovely sweater. \n- these/those → those \nVí dụ 1: \"I love those sweaters,\" said Tim. → Tim said he loved those sweaters. \nVí dụ 2: \"These are lovely sweaters,\" said Tim. → Tim said those were lovely sweaters. \n\n4. Thay đổi từ chỉ thời gian và nơi chốn \n- here → there \nVí dụ: \"I usually shop here,\" said Tim. → Tim said he usually shopped there. \n- now (với nghĩa là \"bây giờ\") / at the moment → then / at that moment \nVí dụ: \"I'm shopping now,\" said Tim. → Tim said he was shopping then. \n- now (vói nghĩa là \"ngay lập tức\") → immediately / at once / right away \nVí dụ: \"I have to go now,\" said Tim. → Tim said he had to go immediately. \n- tomorrow → the next/following day \nVí dụ: \"I'm going shopping tomorrow,\" said Tim. → Tim said he was going shopping the next day. \n- tonight → that night \nVí dụ: \"I'm going shopping tonight,\" said Tim. → Tim said he was going shopping that night. \n- next week/month/year → the following week/month/year \nVí dụ: \"I'm going shopping next week,\" said Tim. → Tim said he was going shopping the following week. \n- yesterday → the previous day / the day before\nVí dụ: \"I went shopping yesterday,\" said Tim. → Tim said he had gone shopping the previous day. \n- last week/month/year → the previous week/month/year hoặc the week/month/year before \nVí dụ: \"I went shopping last week,\" said Tim. → Tim said he had gone shopping the week before. \n- ago → before/previously\nVí dụ: \"I went shopping two days ago,\" said Tim. → Tim said he had gone shopping two days before.",
      //         "difficulty_level": 1,
      //         "learning_point_difficulty_id": 2,
      //         "learning_point_id": 26,
      //         "name": "Reported speech: Changes of pronouns, determiners, and adverbs of time and place"
      //       },
      //       {
      //         "id": 420,
      //         "content":
      //             "Cả 3 động từ đều có thể được hiểu là \"nói\", nhưng cách dùng của mỗi động từ lại khác nhau. \n\n1. Cách dùng động từ \"say\" \n- Động từ \"say\" là động từ bất quy tắc: say - said - said. \n- Cấu trúc: \na. say (that) + S + V \nVí dụ: \"I will help you,\" he said. → He said (that) he would help me. \nb. say + to-infinitive \nVí dụ: Mum said to be home by 10 o'clock. \n\n2. Cách dùng động từ \"tell\" \n- Động từ \"tell\" là động từ bất quy tắc: tell - told - told. \n- Cấu trúc: \na. tell sb (that) + S + V \nVí dụ: \"I will help you,\" he said. → He told me (that) he would help me. \nb. tell sb about sth \nVí dụ: She told us about her adventures. \nc. tell sb to do sth \nVí dụ: He told me to help him. \n\n3. Cách dùng động từ \"talk\" \n- Động từ \"talk\" là động từ có quy tắc: talk - talked - talked. \n- Cấu trúc: talk about sth \nVí dụ: She talked about her adventures",
      //         "difficulty_level": 2,
      //         "learning_point_difficulty_id": 3,
      //         "learning_point_id": 27,
      //         "name": "Reported speech: Reporting verbs"
      //       },
      //       {
      //         "id": 427,
      //         "content":
      //             "A. Khái niệm câu bị động \n- Khi đối tượng A tác động đến đối tượng B, chúng ta có 2 cách để mô tả việc này. Nếu chúng ta lấy đối tượng A (tác nhân thực hiện hành động) làm chủ ngữ, chúng ta sẽ có một câu chủ động. Ví dụ: They built this house in 1486. (Họ xây ngôi nhà này vào năm 1486.) Đây là câu chủ động vì \"they\" đối tượng thực hiện hành động. \n- Còn nếu chúng ta lấy đối tượng B (đối tượng bị tác động) làm chủ ngữ, chúng ta sẽ có một câu bị động. Ví dụ: This house was built in 1486. (Ngôi nhà này được xây vào năm 1486.) Đây là câu bị động vì \"this house\" là đối tượng bị tác động. Nếu muốn nhắc đến đối tượng, chúng ta sẽ dùng giới từ \"by\", ví dụ: This house was built by them in 1846. \n\nB. Điều kiện cần có để dùng câu bị động \n- Có thể thấy được chủ ngữ (subject) của câu bị động là tân ngữ (object) của câu chủ động. Do đó, câu chủ động nào không có tân ngữ đi sau động từ thì câu đó không chuyển sang câu bị động được. \n\nC. Cấu trúc câu bị động tương ứng với các thì: \n1. Hiện tại đơn \n- S + am/is/are + V_ed/3 \nVí dụ: English is spoken here. (Tiếng Anh được sử dụng ở đây.) \n\n2. Hiện tại tiếp diễn \n- S + am/is/are + being + V_ed/3 \nVí dụ: The house is being painted. (Căn nhà đang được sơn.) \n\n3. Hiện tại hoàn thành \n- S + have/has + been + V_ed/3 \nVí dụ: Has Emily been told? (Emily đã được nói cho biết chưa?) \n\n4. Quá khứ đơn \n- S + was/were + V_ed/3. \nVí dụ: I wasnˈt invited. (Tôi đã không được mời.) \n\n5. Quá khứ tiếp diễn \n- S + was/were + being + V_ed/3 \nVí dụ: I was being watched. (Lúc đó tôi đang bị theo dõi.) \n\n6. Quá khứ hoàn thành \n- S + had been + V_ed/3 \nVí dụ: I knew why I had been chosen. (Tôi biết tại sao tôi được chọn.) \n\n7. Dạng tương lai đơn \n- S + will be + V_ed/3 \nVí dụ: Youˈll be told soon enough. (Bạn sẽ sớm được báo cho biết.) \n\n8. Dạng tương lai hoàn thành \n- S + will have been + V_ed/3 \nVí dụ: Everything will have been done by Tuesday. (Mọi thứ sẽ được hoàn tất vào trước thứ Ba.) \n\nLưu ý, các thì sau không được dùng trong câu bị động: hiện tại hoàn thành tiếp diễn, quá khứ hoàn thành tiếp diễn, tương lai hoàn thành tiếp diễn, tương lai tiếp diễn.",
      //         "difficulty_level": 1,
      //         "learning_point_difficulty_id": 4,
      //         "learning_point_id": 33,
      //         "name": "Passive voice: Passive forms"
      //       },
      //       {
      //         "id": 428,
      //         "content":
      //             "1. Dấu hiệu nhận biết câu bị động dễ thấy nhất là nếu trong câu có cấu trúc \"be + V_ed/3\" thì đó là câu bị động. \n\n2. Các lỗi thường gặp. \n- Hiểu sai nghĩa dẫn đến sai cấu trúc. Ví dụ: John was bitten by the dog. (John bị cắn bởi con chó.) Câu này chỉ được dùng thái bị động, do nếu dùng thái chủ động thì nghĩa sẽ không phù hợp: \"John bit by the dog.\" (John cắn bởi con chó.) \n- Dùng không đúng cấu trúc \"be + V_ed/3\". Có thể là do thiếu động từ \"be\" hoặc không dùng V_ed/3 Ví dụ: \nHe was called. (Đây là câu bị động ở thì quá khứ đơn.) \nHe was calling. (Đây là câu chủ động ở thì quá khứ tiếp diễn.) \nHe has called. (Đây là câu chủ động ở thì hiện tại hoàn thành.)",
      //         "difficulty_level": 2,
      //         "learning_point_difficulty_id": 5,
      //         "learning_point_id": 33,
      //         "name": "Passive voice: Passive forms"
      //       }
      //     ]
      //   }
      // ];
      final data = {
        'id': lessonGroupId,
        'lessonInfos': (value as List<dynamic>).map((lessonGroupJson) {
          lessonGroupJson['category'] = {
            'id': lessonGroupJson['category_id'],
            'name': lessonGroupJson['category_name'],
          };
          lessonGroupJson['topic'] = {
            'id': lessonGroupJson['topic_id'],
            'name': lessonGroupJson['topic_name'],
          };
          return lessonGroupJson;
        }).toList()
      };
      final result = LessonGroupDto.fromJson(data).toDomain();
      return result;
    });
  }

  @override
  Future<Program> getCurrentProgram() {
    // TODO: implement getCurrentProgram
    throw UnimplementedError();
  }

  @override
  Future<Unit> setCurrentProgram(Program program) {
    // TODO: implement setCurrentProgram
    throw UnimplementedError();
  }
}
