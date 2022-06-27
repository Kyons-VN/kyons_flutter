import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kyons_flutter/src/knowledge/data/knowledge.dart';

part 'knowledge_dto.freezed.dart';
part 'knowledge_dto.g.dart';

@freezed
class SubjectDto with _$SubjectDto {
  const SubjectDto._();
  const factory SubjectDto({
    required int id,
    required String label,
    required List<ProgramDto> programs,
  }) = _SubjectDto;

  factory SubjectDto.fromJson(Map<String, dynamic> json) => _$SubjectDtoFromJson(json);
  Subject toDomain() => Subject(id: id.toString(), name: label, programs: programs.map((e) => e.toDomain()).toList());
}

@freezed
class ProgramDto with _$ProgramDto {
  const ProgramDto._();
  const factory ProgramDto({
    required int id,
    required String name,
    @JsonKey(name: 'subject_id') required int subjectId,
  }) = _ProgramDto;

  factory ProgramDto.fromJson(Map<String, dynamic> json) => _$ProgramDtoFromJson(json);
  Program toDomain() => Program(id: id.toString(), name: name, subjectId: subjectId.toString());
}
