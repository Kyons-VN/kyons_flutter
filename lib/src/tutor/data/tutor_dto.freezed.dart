// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

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
      _$TutorSessionStatusDtoCopyWithImpl<$Res>;
  $Res call(
      {String status,
      @JsonKey(name: 'meeting_url', defaultValue: '') String meetingUrl});
}

/// @nodoc
class _$TutorSessionStatusDtoCopyWithImpl<$Res>
    implements $TutorSessionStatusDtoCopyWith<$Res> {
  _$TutorSessionStatusDtoCopyWithImpl(this._value, this._then);

  final TutorSessionStatusDto _value;
  // ignore: unused_field
  final $Res Function(TutorSessionStatusDto) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? meetingUrl = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      meetingUrl: meetingUrl == freezed
          ? _value.meetingUrl
          : meetingUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_TutorSessionStatusDtoCopyWith<$Res>
    implements $TutorSessionStatusDtoCopyWith<$Res> {
  factory _$$_TutorSessionStatusDtoCopyWith(_$_TutorSessionStatusDto value,
          $Res Function(_$_TutorSessionStatusDto) then) =
      __$$_TutorSessionStatusDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String status,
      @JsonKey(name: 'meeting_url', defaultValue: '') String meetingUrl});
}

/// @nodoc
class __$$_TutorSessionStatusDtoCopyWithImpl<$Res>
    extends _$TutorSessionStatusDtoCopyWithImpl<$Res>
    implements _$$_TutorSessionStatusDtoCopyWith<$Res> {
  __$$_TutorSessionStatusDtoCopyWithImpl(_$_TutorSessionStatusDto _value,
      $Res Function(_$_TutorSessionStatusDto) _then)
      : super(_value, (v) => _then(v as _$_TutorSessionStatusDto));

  @override
  _$_TutorSessionStatusDto get _value =>
      super._value as _$_TutorSessionStatusDto;

  @override
  $Res call({
    Object? status = freezed,
    Object? meetingUrl = freezed,
  }) {
    return _then(_$_TutorSessionStatusDto(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      meetingUrl: meetingUrl == freezed
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
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other.meetingUrl, meetingUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(meetingUrl));

  @JsonKey(ignore: true)
  @override
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
