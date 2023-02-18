// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tutor_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TutorSessionStatusDto _$TutorSessionStatusDtoFromJson(
    Map<String, dynamic> json) {
  return _TutorSessionStatusDto.fromJson(json);
}

/// @nodoc
mixin _$TutorSessionStatusDto {
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'meeting_url', defaultValue: '')
  String get meetingUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TutorSessionStatusDtoCopyWith<TutorSessionStatusDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TutorSessionStatusDtoCopyWith<$Res> {
  factory $TutorSessionStatusDtoCopyWith(TutorSessionStatusDto value,
          $Res Function(TutorSessionStatusDto) then) =
      _$TutorSessionStatusDtoCopyWithImpl<$Res, TutorSessionStatusDto>;
  @useResult
  $Res call(
      {String status,
      @JsonKey(name: 'meeting_url', defaultValue: '') String meetingUrl});
}

/// @nodoc
class _$TutorSessionStatusDtoCopyWithImpl<$Res,
        $Val extends TutorSessionStatusDto>
    implements $TutorSessionStatusDtoCopyWith<$Res> {
  _$TutorSessionStatusDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? meetingUrl = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      meetingUrl: null == meetingUrl
          ? _value.meetingUrl
          : meetingUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TutorSessionStatusDtoCopyWith<$Res>
    implements $TutorSessionStatusDtoCopyWith<$Res> {
  factory _$$_TutorSessionStatusDtoCopyWith(_$_TutorSessionStatusDto value,
          $Res Function(_$_TutorSessionStatusDto) then) =
      __$$_TutorSessionStatusDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String status,
      @JsonKey(name: 'meeting_url', defaultValue: '') String meetingUrl});
}

/// @nodoc
class __$$_TutorSessionStatusDtoCopyWithImpl<$Res>
    extends _$TutorSessionStatusDtoCopyWithImpl<$Res, _$_TutorSessionStatusDto>
    implements _$$_TutorSessionStatusDtoCopyWith<$Res> {
  __$$_TutorSessionStatusDtoCopyWithImpl(_$_TutorSessionStatusDto _value,
      $Res Function(_$_TutorSessionStatusDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? meetingUrl = null,
  }) {
    return _then(_$_TutorSessionStatusDto(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      meetingUrl: null == meetingUrl
          ? _value.meetingUrl
          : meetingUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TutorSessionStatusDto extends _TutorSessionStatusDto {
  const _$_TutorSessionStatusDto(
      {required this.status,
      @JsonKey(name: 'meeting_url', defaultValue: '') required this.meetingUrl})
      : super._();

  factory _$_TutorSessionStatusDto.fromJson(Map<String, dynamic> json) =>
      _$$_TutorSessionStatusDtoFromJson(json);

  @override
  final String status;
  @override
  @JsonKey(name: 'meeting_url', defaultValue: '')
  final String meetingUrl;

  @override
  String toString() {
    return 'TutorSessionStatusDto(status: $status, meetingUrl: $meetingUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TutorSessionStatusDto &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.meetingUrl, meetingUrl) ||
                other.meetingUrl == meetingUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, meetingUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TutorSessionStatusDtoCopyWith<_$_TutorSessionStatusDto> get copyWith =>
      __$$_TutorSessionStatusDtoCopyWithImpl<_$_TutorSessionStatusDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TutorSessionStatusDtoToJson(
      this,
    );
  }
}

abstract class _TutorSessionStatusDto extends TutorSessionStatusDto {
  const factory _TutorSessionStatusDto(
      {required final String status,
      @JsonKey(name: 'meeting_url', defaultValue: '')
          required final String meetingUrl}) = _$_TutorSessionStatusDto;
  const _TutorSessionStatusDto._() : super._();

  factory _TutorSessionStatusDto.fromJson(Map<String, dynamic> json) =
      _$_TutorSessionStatusDto.fromJson;

  @override
  String get status;
  @override
  @JsonKey(name: 'meeting_url', defaultValue: '')
  String get meetingUrl;
  @override
  @JsonKey(ignore: true)
  _$$_TutorSessionStatusDtoCopyWith<_$_TutorSessionStatusDto> get copyWith =>
      throw _privateConstructorUsedError;
}
