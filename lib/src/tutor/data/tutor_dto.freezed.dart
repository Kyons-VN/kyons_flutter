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
abstract class _$$TutorSessionStatusDtoImplCopyWith<$Res>
    implements $TutorSessionStatusDtoCopyWith<$Res> {
  factory _$$TutorSessionStatusDtoImplCopyWith(
          _$TutorSessionStatusDtoImpl value,
          $Res Function(_$TutorSessionStatusDtoImpl) then) =
      __$$TutorSessionStatusDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String status,
      @JsonKey(name: 'meeting_url', defaultValue: '') String meetingUrl});
}

/// @nodoc
class __$$TutorSessionStatusDtoImplCopyWithImpl<$Res>
    extends _$TutorSessionStatusDtoCopyWithImpl<$Res,
        _$TutorSessionStatusDtoImpl>
    implements _$$TutorSessionStatusDtoImplCopyWith<$Res> {
  __$$TutorSessionStatusDtoImplCopyWithImpl(_$TutorSessionStatusDtoImpl _value,
      $Res Function(_$TutorSessionStatusDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? meetingUrl = null,
  }) {
    return _then(_$TutorSessionStatusDtoImpl(
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
class _$TutorSessionStatusDtoImpl extends _TutorSessionStatusDto {
  const _$TutorSessionStatusDtoImpl(
      {required this.status,
      @JsonKey(name: 'meeting_url', defaultValue: '') required this.meetingUrl})
      : super._();

  factory _$TutorSessionStatusDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$TutorSessionStatusDtoImplFromJson(json);

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
            other is _$TutorSessionStatusDtoImpl &&
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
  _$$TutorSessionStatusDtoImplCopyWith<_$TutorSessionStatusDtoImpl>
      get copyWith => __$$TutorSessionStatusDtoImplCopyWithImpl<
          _$TutorSessionStatusDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TutorSessionStatusDtoImplToJson(
      this,
    );
  }
}

abstract class _TutorSessionStatusDto extends TutorSessionStatusDto {
  const factory _TutorSessionStatusDto(
      {required final String status,
      @JsonKey(name: 'meeting_url', defaultValue: '')
      required final String meetingUrl}) = _$TutorSessionStatusDtoImpl;
  const _TutorSessionStatusDto._() : super._();

  factory _TutorSessionStatusDto.fromJson(Map<String, dynamic> json) =
      _$TutorSessionStatusDtoImpl.fromJson;

  @override
  String get status;
  @override
  @JsonKey(name: 'meeting_url', defaultValue: '')
  String get meetingUrl;
  @override
  @JsonKey(ignore: true)
  _$$TutorSessionStatusDtoImplCopyWith<_$TutorSessionStatusDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
