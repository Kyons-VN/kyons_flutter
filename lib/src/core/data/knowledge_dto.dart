import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kyons_flutter/src/core/domain/knowledge.dart';

part 'knowledge_dto.freezed.dart';
part 'knowledge_dto.g.dart';

@freezed
class SubjectDto with _$SubjectDto {
  const SubjectDto._();
  const factory SubjectDto({
    required String id,
    required String name,
  }) = _SubjectDto;

  factory SubjectDto.fromJson(Map<String, dynamic> json) => _$SubjectDtoFromJson(json);
  Subject toDomain() => Subject(id: id, name: name);
}
