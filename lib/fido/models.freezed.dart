// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FidoState _$FidoStateFromJson(Map<String, dynamic> json) {
  return _FidoState.fromJson(json);
}

/// @nodoc
class _$FidoStateTearOff {
  const _$FidoStateTearOff();

  _FidoState call({required Map<String, dynamic> info}) {
    return _FidoState(
      info: info,
    );
  }

  FidoState fromJson(Map<String, Object?> json) {
    return FidoState.fromJson(json);
  }
}

/// @nodoc
const $FidoState = _$FidoStateTearOff();

/// @nodoc
mixin _$FidoState {
  Map<String, dynamic> get info => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FidoStateCopyWith<FidoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FidoStateCopyWith<$Res> {
  factory $FidoStateCopyWith(FidoState value, $Res Function(FidoState) then) =
      _$FidoStateCopyWithImpl<$Res>;
  $Res call({Map<String, dynamic> info});
}

/// @nodoc
class _$FidoStateCopyWithImpl<$Res> implements $FidoStateCopyWith<$Res> {
  _$FidoStateCopyWithImpl(this._value, this._then);

  final FidoState _value;
  // ignore: unused_field
  final $Res Function(FidoState) _then;

  @override
  $Res call({
    Object? info = freezed,
  }) {
    return _then(_value.copyWith(
      info: info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
abstract class _$FidoStateCopyWith<$Res> implements $FidoStateCopyWith<$Res> {
  factory _$FidoStateCopyWith(
          _FidoState value, $Res Function(_FidoState) then) =
      __$FidoStateCopyWithImpl<$Res>;
  @override
  $Res call({Map<String, dynamic> info});
}

/// @nodoc
class __$FidoStateCopyWithImpl<$Res> extends _$FidoStateCopyWithImpl<$Res>
    implements _$FidoStateCopyWith<$Res> {
  __$FidoStateCopyWithImpl(_FidoState _value, $Res Function(_FidoState) _then)
      : super(_value, (v) => _then(v as _FidoState));

  @override
  _FidoState get _value => super._value as _FidoState;

  @override
  $Res call({
    Object? info = freezed,
  }) {
    return _then(_FidoState(
      info: info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FidoState extends _FidoState {
  _$_FidoState({required this.info}) : super._();

  factory _$_FidoState.fromJson(Map<String, dynamic> json) =>
      _$$_FidoStateFromJson(json);

  @override
  final Map<String, dynamic> info;

  @override
  String toString() {
    return 'FidoState(info: $info)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FidoState &&
            const DeepCollectionEquality().equals(other.info, info));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(info));

  @JsonKey(ignore: true)
  @override
  _$FidoStateCopyWith<_FidoState> get copyWith =>
      __$FidoStateCopyWithImpl<_FidoState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FidoStateToJson(this);
  }
}

abstract class _FidoState extends FidoState {
  factory _FidoState({required Map<String, dynamic> info}) = _$_FidoState;
  _FidoState._() : super._();

  factory _FidoState.fromJson(Map<String, dynamic> json) =
      _$_FidoState.fromJson;

  @override
  Map<String, dynamic> get info;
  @override
  @JsonKey(ignore: true)
  _$FidoStateCopyWith<_FidoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$PinResultTearOff {
  const _$PinResultTearOff();

  _PinSuccess success() {
    return _PinSuccess();
  }

  _PinFailure failed(int retries, bool authBlocked) {
    return _PinFailure(
      retries,
      authBlocked,
    );
  }
}

/// @nodoc
const $PinResult = _$PinResultTearOff();

/// @nodoc
mixin _$PinResult {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function(int retries, bool authBlocked) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? success,
    TResult Function(int retries, bool authBlocked)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function(int retries, bool authBlocked)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PinSuccess value) success,
    required TResult Function(_PinFailure value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PinSuccess value)? success,
    TResult Function(_PinFailure value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PinSuccess value)? success,
    TResult Function(_PinFailure value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PinResultCopyWith<$Res> {
  factory $PinResultCopyWith(PinResult value, $Res Function(PinResult) then) =
      _$PinResultCopyWithImpl<$Res>;
}

/// @nodoc
class _$PinResultCopyWithImpl<$Res> implements $PinResultCopyWith<$Res> {
  _$PinResultCopyWithImpl(this._value, this._then);

  final PinResult _value;
  // ignore: unused_field
  final $Res Function(PinResult) _then;
}

/// @nodoc
abstract class _$PinSuccessCopyWith<$Res> {
  factory _$PinSuccessCopyWith(
          _PinSuccess value, $Res Function(_PinSuccess) then) =
      __$PinSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$PinSuccessCopyWithImpl<$Res> extends _$PinResultCopyWithImpl<$Res>
    implements _$PinSuccessCopyWith<$Res> {
  __$PinSuccessCopyWithImpl(
      _PinSuccess _value, $Res Function(_PinSuccess) _then)
      : super(_value, (v) => _then(v as _PinSuccess));

  @override
  _PinSuccess get _value => super._value as _PinSuccess;
}

/// @nodoc

class _$_PinSuccess implements _PinSuccess {
  _$_PinSuccess();

  @override
  String toString() {
    return 'PinResult.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _PinSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function(int retries, bool authBlocked) failed,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? success,
    TResult Function(int retries, bool authBlocked)? failed,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function(int retries, bool authBlocked)? failed,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PinSuccess value) success,
    required TResult Function(_PinFailure value) failed,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PinSuccess value)? success,
    TResult Function(_PinFailure value)? failed,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PinSuccess value)? success,
    TResult Function(_PinFailure value)? failed,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _PinSuccess implements PinResult {
  factory _PinSuccess() = _$_PinSuccess;
}

/// @nodoc
abstract class _$PinFailureCopyWith<$Res> {
  factory _$PinFailureCopyWith(
          _PinFailure value, $Res Function(_PinFailure) then) =
      __$PinFailureCopyWithImpl<$Res>;
  $Res call({int retries, bool authBlocked});
}

/// @nodoc
class __$PinFailureCopyWithImpl<$Res> extends _$PinResultCopyWithImpl<$Res>
    implements _$PinFailureCopyWith<$Res> {
  __$PinFailureCopyWithImpl(
      _PinFailure _value, $Res Function(_PinFailure) _then)
      : super(_value, (v) => _then(v as _PinFailure));

  @override
  _PinFailure get _value => super._value as _PinFailure;

  @override
  $Res call({
    Object? retries = freezed,
    Object? authBlocked = freezed,
  }) {
    return _then(_PinFailure(
      retries == freezed
          ? _value.retries
          : retries // ignore: cast_nullable_to_non_nullable
              as int,
      authBlocked == freezed
          ? _value.authBlocked
          : authBlocked // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_PinFailure implements _PinFailure {
  _$_PinFailure(this.retries, this.authBlocked);

  @override
  final int retries;
  @override
  final bool authBlocked;

  @override
  String toString() {
    return 'PinResult.failed(retries: $retries, authBlocked: $authBlocked)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PinFailure &&
            const DeepCollectionEquality().equals(other.retries, retries) &&
            const DeepCollectionEquality()
                .equals(other.authBlocked, authBlocked));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(retries),
      const DeepCollectionEquality().hash(authBlocked));

  @JsonKey(ignore: true)
  @override
  _$PinFailureCopyWith<_PinFailure> get copyWith =>
      __$PinFailureCopyWithImpl<_PinFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function(int retries, bool authBlocked) failed,
  }) {
    return failed(retries, authBlocked);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? success,
    TResult Function(int retries, bool authBlocked)? failed,
  }) {
    return failed?.call(retries, authBlocked);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function(int retries, bool authBlocked)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(retries, authBlocked);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PinSuccess value) success,
    required TResult Function(_PinFailure value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PinSuccess value)? success,
    TResult Function(_PinFailure value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PinSuccess value)? success,
    TResult Function(_PinFailure value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _PinFailure implements PinResult {
  factory _PinFailure(int retries, bool authBlocked) = _$_PinFailure;

  int get retries;
  bool get authBlocked;
  @JsonKey(ignore: true)
  _$PinFailureCopyWith<_PinFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$LockedCollectionTearOff {
  const _$LockedCollectionTearOff();

  _Unknown<T> unknown<T>() {
    return _Unknown<T>();
  }

  _Locked<T> locked<T>() {
    return _Locked<T>();
  }

  _Opened<T> opened<T>(List<T> values) {
    return _Opened<T>(
      values,
    );
  }
}

/// @nodoc
const $LockedCollection = _$LockedCollectionTearOff();

/// @nodoc
mixin _$LockedCollection<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function() locked,
    required TResult Function(List<T> values) opened,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function()? locked,
    TResult Function(List<T> values)? opened,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function()? locked,
    TResult Function(List<T> values)? opened,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unknown<T> value) unknown,
    required TResult Function(_Locked<T> value) locked,
    required TResult Function(_Opened<T> value) opened,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Unknown<T> value)? unknown,
    TResult Function(_Locked<T> value)? locked,
    TResult Function(_Opened<T> value)? opened,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unknown<T> value)? unknown,
    TResult Function(_Locked<T> value)? locked,
    TResult Function(_Opened<T> value)? opened,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LockedCollectionCopyWith<T, $Res> {
  factory $LockedCollectionCopyWith(
          LockedCollection<T> value, $Res Function(LockedCollection<T>) then) =
      _$LockedCollectionCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$LockedCollectionCopyWithImpl<T, $Res>
    implements $LockedCollectionCopyWith<T, $Res> {
  _$LockedCollectionCopyWithImpl(this._value, this._then);

  final LockedCollection<T> _value;
  // ignore: unused_field
  final $Res Function(LockedCollection<T>) _then;
}

/// @nodoc
abstract class _$UnknownCopyWith<T, $Res> {
  factory _$UnknownCopyWith(
          _Unknown<T> value, $Res Function(_Unknown<T>) then) =
      __$UnknownCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$UnknownCopyWithImpl<T, $Res>
    extends _$LockedCollectionCopyWithImpl<T, $Res>
    implements _$UnknownCopyWith<T, $Res> {
  __$UnknownCopyWithImpl(_Unknown<T> _value, $Res Function(_Unknown<T>) _then)
      : super(_value, (v) => _then(v as _Unknown<T>));

  @override
  _Unknown<T> get _value => super._value as _Unknown<T>;
}

/// @nodoc

class _$_Unknown<T> implements _Unknown<T> {
  _$_Unknown();

  @override
  String toString() {
    return 'LockedCollection<$T>.unknown()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Unknown<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function() locked,
    required TResult Function(List<T> values) opened,
  }) {
    return unknown();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function()? locked,
    TResult Function(List<T> values)? opened,
  }) {
    return unknown?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function()? locked,
    TResult Function(List<T> values)? opened,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unknown<T> value) unknown,
    required TResult Function(_Locked<T> value) locked,
    required TResult Function(_Opened<T> value) opened,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Unknown<T> value)? unknown,
    TResult Function(_Locked<T> value)? locked,
    TResult Function(_Opened<T> value)? opened,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unknown<T> value)? unknown,
    TResult Function(_Locked<T> value)? locked,
    TResult Function(_Opened<T> value)? opened,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class _Unknown<T> implements LockedCollection<T> {
  factory _Unknown() = _$_Unknown<T>;
}

/// @nodoc
abstract class _$LockedCopyWith<T, $Res> {
  factory _$LockedCopyWith(_Locked<T> value, $Res Function(_Locked<T>) then) =
      __$LockedCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$LockedCopyWithImpl<T, $Res>
    extends _$LockedCollectionCopyWithImpl<T, $Res>
    implements _$LockedCopyWith<T, $Res> {
  __$LockedCopyWithImpl(_Locked<T> _value, $Res Function(_Locked<T>) _then)
      : super(_value, (v) => _then(v as _Locked<T>));

  @override
  _Locked<T> get _value => super._value as _Locked<T>;
}

/// @nodoc

class _$_Locked<T> implements _Locked<T> {
  _$_Locked();

  @override
  String toString() {
    return 'LockedCollection<$T>.locked()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Locked<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function() locked,
    required TResult Function(List<T> values) opened,
  }) {
    return locked();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function()? locked,
    TResult Function(List<T> values)? opened,
  }) {
    return locked?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function()? locked,
    TResult Function(List<T> values)? opened,
    required TResult orElse(),
  }) {
    if (locked != null) {
      return locked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unknown<T> value) unknown,
    required TResult Function(_Locked<T> value) locked,
    required TResult Function(_Opened<T> value) opened,
  }) {
    return locked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Unknown<T> value)? unknown,
    TResult Function(_Locked<T> value)? locked,
    TResult Function(_Opened<T> value)? opened,
  }) {
    return locked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unknown<T> value)? unknown,
    TResult Function(_Locked<T> value)? locked,
    TResult Function(_Opened<T> value)? opened,
    required TResult orElse(),
  }) {
    if (locked != null) {
      return locked(this);
    }
    return orElse();
  }
}

abstract class _Locked<T> implements LockedCollection<T> {
  factory _Locked() = _$_Locked<T>;
}

/// @nodoc
abstract class _$OpenedCopyWith<T, $Res> {
  factory _$OpenedCopyWith(_Opened<T> value, $Res Function(_Opened<T>) then) =
      __$OpenedCopyWithImpl<T, $Res>;
  $Res call({List<T> values});
}

/// @nodoc
class __$OpenedCopyWithImpl<T, $Res>
    extends _$LockedCollectionCopyWithImpl<T, $Res>
    implements _$OpenedCopyWith<T, $Res> {
  __$OpenedCopyWithImpl(_Opened<T> _value, $Res Function(_Opened<T>) _then)
      : super(_value, (v) => _then(v as _Opened<T>));

  @override
  _Opened<T> get _value => super._value as _Opened<T>;

  @override
  $Res call({
    Object? values = freezed,
  }) {
    return _then(_Opened<T>(
      values == freezed
          ? _value.values
          : values // ignore: cast_nullable_to_non_nullable
              as List<T>,
    ));
  }
}

/// @nodoc

class _$_Opened<T> implements _Opened<T> {
  _$_Opened(this.values);

  @override
  final List<T> values;

  @override
  String toString() {
    return 'LockedCollection<$T>.opened(values: $values)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Opened<T> &&
            const DeepCollectionEquality().equals(other.values, values));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(values));

  @JsonKey(ignore: true)
  @override
  _$OpenedCopyWith<T, _Opened<T>> get copyWith =>
      __$OpenedCopyWithImpl<T, _Opened<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function() locked,
    required TResult Function(List<T> values) opened,
  }) {
    return opened(values);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function()? locked,
    TResult Function(List<T> values)? opened,
  }) {
    return opened?.call(values);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function()? locked,
    TResult Function(List<T> values)? opened,
    required TResult orElse(),
  }) {
    if (opened != null) {
      return opened(values);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unknown<T> value) unknown,
    required TResult Function(_Locked<T> value) locked,
    required TResult Function(_Opened<T> value) opened,
  }) {
    return opened(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Unknown<T> value)? unknown,
    TResult Function(_Locked<T> value)? locked,
    TResult Function(_Opened<T> value)? opened,
  }) {
    return opened?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unknown<T> value)? unknown,
    TResult Function(_Locked<T> value)? locked,
    TResult Function(_Opened<T> value)? opened,
    required TResult orElse(),
  }) {
    if (opened != null) {
      return opened(this);
    }
    return orElse();
  }
}

abstract class _Opened<T> implements LockedCollection<T> {
  factory _Opened(List<T> values) = _$_Opened<T>;

  List<T> get values;
  @JsonKey(ignore: true)
  _$OpenedCopyWith<T, _Opened<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

Fingerprint _$FingerprintFromJson(Map<String, dynamic> json) {
  return _Fingerprint.fromJson(json);
}

/// @nodoc
class _$FingerprintTearOff {
  const _$FingerprintTearOff();

  _Fingerprint call(String templateId, String? name) {
    return _Fingerprint(
      templateId,
      name,
    );
  }

  Fingerprint fromJson(Map<String, Object?> json) {
    return Fingerprint.fromJson(json);
  }
}

/// @nodoc
const $Fingerprint = _$FingerprintTearOff();

/// @nodoc
mixin _$Fingerprint {
  String get templateId => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FingerprintCopyWith<Fingerprint> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FingerprintCopyWith<$Res> {
  factory $FingerprintCopyWith(
          Fingerprint value, $Res Function(Fingerprint) then) =
      _$FingerprintCopyWithImpl<$Res>;
  $Res call({String templateId, String? name});
}

/// @nodoc
class _$FingerprintCopyWithImpl<$Res> implements $FingerprintCopyWith<$Res> {
  _$FingerprintCopyWithImpl(this._value, this._then);

  final Fingerprint _value;
  // ignore: unused_field
  final $Res Function(Fingerprint) _then;

  @override
  $Res call({
    Object? templateId = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      templateId: templateId == freezed
          ? _value.templateId
          : templateId // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$FingerprintCopyWith<$Res>
    implements $FingerprintCopyWith<$Res> {
  factory _$FingerprintCopyWith(
          _Fingerprint value, $Res Function(_Fingerprint) then) =
      __$FingerprintCopyWithImpl<$Res>;
  @override
  $Res call({String templateId, String? name});
}

/// @nodoc
class __$FingerprintCopyWithImpl<$Res> extends _$FingerprintCopyWithImpl<$Res>
    implements _$FingerprintCopyWith<$Res> {
  __$FingerprintCopyWithImpl(
      _Fingerprint _value, $Res Function(_Fingerprint) _then)
      : super(_value, (v) => _then(v as _Fingerprint));

  @override
  _Fingerprint get _value => super._value as _Fingerprint;

  @override
  $Res call({
    Object? templateId = freezed,
    Object? name = freezed,
  }) {
    return _then(_Fingerprint(
      templateId == freezed
          ? _value.templateId
          : templateId // ignore: cast_nullable_to_non_nullable
              as String,
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Fingerprint extends _Fingerprint {
  _$_Fingerprint(this.templateId, this.name) : super._();

  factory _$_Fingerprint.fromJson(Map<String, dynamic> json) =>
      _$$_FingerprintFromJson(json);

  @override
  final String templateId;
  @override
  final String? name;

  @override
  String toString() {
    return 'Fingerprint(templateId: $templateId, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Fingerprint &&
            const DeepCollectionEquality()
                .equals(other.templateId, templateId) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(templateId),
      const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$FingerprintCopyWith<_Fingerprint> get copyWith =>
      __$FingerprintCopyWithImpl<_Fingerprint>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FingerprintToJson(this);
  }
}

abstract class _Fingerprint extends Fingerprint {
  factory _Fingerprint(String templateId, String? name) = _$_Fingerprint;
  _Fingerprint._() : super._();

  factory _Fingerprint.fromJson(Map<String, dynamic> json) =
      _$_Fingerprint.fromJson;

  @override
  String get templateId;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$FingerprintCopyWith<_Fingerprint> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$FingerprintEventTearOff {
  const _$FingerprintEventTearOff();

  _EventCapture capture(int remaining) {
    return _EventCapture(
      remaining,
    );
  }

  _EventComplete complete(Fingerprint fingerprint) {
    return _EventComplete(
      fingerprint,
    );
  }

  _EventError error(int code) {
    return _EventError(
      code,
    );
  }
}

/// @nodoc
const $FingerprintEvent = _$FingerprintEventTearOff();

/// @nodoc
mixin _$FingerprintEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int remaining) capture,
    required TResult Function(Fingerprint fingerprint) complete,
    required TResult Function(int code) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int remaining)? capture,
    TResult Function(Fingerprint fingerprint)? complete,
    TResult Function(int code)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int remaining)? capture,
    TResult Function(Fingerprint fingerprint)? complete,
    TResult Function(int code)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventCapture value) capture,
    required TResult Function(_EventComplete value) complete,
    required TResult Function(_EventError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EventCapture value)? capture,
    TResult Function(_EventComplete value)? complete,
    TResult Function(_EventError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventCapture value)? capture,
    TResult Function(_EventComplete value)? complete,
    TResult Function(_EventError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FingerprintEventCopyWith<$Res> {
  factory $FingerprintEventCopyWith(
          FingerprintEvent value, $Res Function(FingerprintEvent) then) =
      _$FingerprintEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$FingerprintEventCopyWithImpl<$Res>
    implements $FingerprintEventCopyWith<$Res> {
  _$FingerprintEventCopyWithImpl(this._value, this._then);

  final FingerprintEvent _value;
  // ignore: unused_field
  final $Res Function(FingerprintEvent) _then;
}

/// @nodoc
abstract class _$EventCaptureCopyWith<$Res> {
  factory _$EventCaptureCopyWith(
          _EventCapture value, $Res Function(_EventCapture) then) =
      __$EventCaptureCopyWithImpl<$Res>;
  $Res call({int remaining});
}

/// @nodoc
class __$EventCaptureCopyWithImpl<$Res>
    extends _$FingerprintEventCopyWithImpl<$Res>
    implements _$EventCaptureCopyWith<$Res> {
  __$EventCaptureCopyWithImpl(
      _EventCapture _value, $Res Function(_EventCapture) _then)
      : super(_value, (v) => _then(v as _EventCapture));

  @override
  _EventCapture get _value => super._value as _EventCapture;

  @override
  $Res call({
    Object? remaining = freezed,
  }) {
    return _then(_EventCapture(
      remaining == freezed
          ? _value.remaining
          : remaining // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_EventCapture implements _EventCapture {
  _$_EventCapture(this.remaining);

  @override
  final int remaining;

  @override
  String toString() {
    return 'FingerprintEvent.capture(remaining: $remaining)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EventCapture &&
            const DeepCollectionEquality().equals(other.remaining, remaining));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(remaining));

  @JsonKey(ignore: true)
  @override
  _$EventCaptureCopyWith<_EventCapture> get copyWith =>
      __$EventCaptureCopyWithImpl<_EventCapture>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int remaining) capture,
    required TResult Function(Fingerprint fingerprint) complete,
    required TResult Function(int code) error,
  }) {
    return capture(remaining);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int remaining)? capture,
    TResult Function(Fingerprint fingerprint)? complete,
    TResult Function(int code)? error,
  }) {
    return capture?.call(remaining);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int remaining)? capture,
    TResult Function(Fingerprint fingerprint)? complete,
    TResult Function(int code)? error,
    required TResult orElse(),
  }) {
    if (capture != null) {
      return capture(remaining);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventCapture value) capture,
    required TResult Function(_EventComplete value) complete,
    required TResult Function(_EventError value) error,
  }) {
    return capture(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EventCapture value)? capture,
    TResult Function(_EventComplete value)? complete,
    TResult Function(_EventError value)? error,
  }) {
    return capture?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventCapture value)? capture,
    TResult Function(_EventComplete value)? complete,
    TResult Function(_EventError value)? error,
    required TResult orElse(),
  }) {
    if (capture != null) {
      return capture(this);
    }
    return orElse();
  }
}

abstract class _EventCapture implements FingerprintEvent {
  factory _EventCapture(int remaining) = _$_EventCapture;

  int get remaining;
  @JsonKey(ignore: true)
  _$EventCaptureCopyWith<_EventCapture> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$EventCompleteCopyWith<$Res> {
  factory _$EventCompleteCopyWith(
          _EventComplete value, $Res Function(_EventComplete) then) =
      __$EventCompleteCopyWithImpl<$Res>;
  $Res call({Fingerprint fingerprint});

  $FingerprintCopyWith<$Res> get fingerprint;
}

/// @nodoc
class __$EventCompleteCopyWithImpl<$Res>
    extends _$FingerprintEventCopyWithImpl<$Res>
    implements _$EventCompleteCopyWith<$Res> {
  __$EventCompleteCopyWithImpl(
      _EventComplete _value, $Res Function(_EventComplete) _then)
      : super(_value, (v) => _then(v as _EventComplete));

  @override
  _EventComplete get _value => super._value as _EventComplete;

  @override
  $Res call({
    Object? fingerprint = freezed,
  }) {
    return _then(_EventComplete(
      fingerprint == freezed
          ? _value.fingerprint
          : fingerprint // ignore: cast_nullable_to_non_nullable
              as Fingerprint,
    ));
  }

  @override
  $FingerprintCopyWith<$Res> get fingerprint {
    return $FingerprintCopyWith<$Res>(_value.fingerprint, (value) {
      return _then(_value.copyWith(fingerprint: value));
    });
  }
}

/// @nodoc

class _$_EventComplete implements _EventComplete {
  _$_EventComplete(this.fingerprint);

  @override
  final Fingerprint fingerprint;

  @override
  String toString() {
    return 'FingerprintEvent.complete(fingerprint: $fingerprint)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EventComplete &&
            const DeepCollectionEquality()
                .equals(other.fingerprint, fingerprint));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(fingerprint));

  @JsonKey(ignore: true)
  @override
  _$EventCompleteCopyWith<_EventComplete> get copyWith =>
      __$EventCompleteCopyWithImpl<_EventComplete>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int remaining) capture,
    required TResult Function(Fingerprint fingerprint) complete,
    required TResult Function(int code) error,
  }) {
    return complete(fingerprint);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int remaining)? capture,
    TResult Function(Fingerprint fingerprint)? complete,
    TResult Function(int code)? error,
  }) {
    return complete?.call(fingerprint);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int remaining)? capture,
    TResult Function(Fingerprint fingerprint)? complete,
    TResult Function(int code)? error,
    required TResult orElse(),
  }) {
    if (complete != null) {
      return complete(fingerprint);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventCapture value) capture,
    required TResult Function(_EventComplete value) complete,
    required TResult Function(_EventError value) error,
  }) {
    return complete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EventCapture value)? capture,
    TResult Function(_EventComplete value)? complete,
    TResult Function(_EventError value)? error,
  }) {
    return complete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventCapture value)? capture,
    TResult Function(_EventComplete value)? complete,
    TResult Function(_EventError value)? error,
    required TResult orElse(),
  }) {
    if (complete != null) {
      return complete(this);
    }
    return orElse();
  }
}

abstract class _EventComplete implements FingerprintEvent {
  factory _EventComplete(Fingerprint fingerprint) = _$_EventComplete;

  Fingerprint get fingerprint;
  @JsonKey(ignore: true)
  _$EventCompleteCopyWith<_EventComplete> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$EventErrorCopyWith<$Res> {
  factory _$EventErrorCopyWith(
          _EventError value, $Res Function(_EventError) then) =
      __$EventErrorCopyWithImpl<$Res>;
  $Res call({int code});
}

/// @nodoc
class __$EventErrorCopyWithImpl<$Res>
    extends _$FingerprintEventCopyWithImpl<$Res>
    implements _$EventErrorCopyWith<$Res> {
  __$EventErrorCopyWithImpl(
      _EventError _value, $Res Function(_EventError) _then)
      : super(_value, (v) => _then(v as _EventError));

  @override
  _EventError get _value => super._value as _EventError;

  @override
  $Res call({
    Object? code = freezed,
  }) {
    return _then(_EventError(
      code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_EventError implements _EventError {
  _$_EventError(this.code);

  @override
  final int code;

  @override
  String toString() {
    return 'FingerprintEvent.error(code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EventError &&
            const DeepCollectionEquality().equals(other.code, code));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(code));

  @JsonKey(ignore: true)
  @override
  _$EventErrorCopyWith<_EventError> get copyWith =>
      __$EventErrorCopyWithImpl<_EventError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int remaining) capture,
    required TResult Function(Fingerprint fingerprint) complete,
    required TResult Function(int code) error,
  }) {
    return error(code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int remaining)? capture,
    TResult Function(Fingerprint fingerprint)? complete,
    TResult Function(int code)? error,
  }) {
    return error?.call(code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int remaining)? capture,
    TResult Function(Fingerprint fingerprint)? complete,
    TResult Function(int code)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventCapture value) capture,
    required TResult Function(_EventComplete value) complete,
    required TResult Function(_EventError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EventCapture value)? capture,
    TResult Function(_EventComplete value)? complete,
    TResult Function(_EventError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventCapture value)? capture,
    TResult Function(_EventComplete value)? complete,
    TResult Function(_EventError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _EventError implements FingerprintEvent {
  factory _EventError(int code) = _$_EventError;

  int get code;
  @JsonKey(ignore: true)
  _$EventErrorCopyWith<_EventError> get copyWith =>
      throw _privateConstructorUsedError;
}

FidoCredential _$FidoCredentialFromJson(Map<String, dynamic> json) {
  return _FidoCredential.fromJson(json);
}

/// @nodoc
class _$FidoCredentialTearOff {
  const _$FidoCredentialTearOff();

  _FidoCredential call(
      {required String rpId,
      required String credentialId,
      required String userId,
      required String userName}) {
    return _FidoCredential(
      rpId: rpId,
      credentialId: credentialId,
      userId: userId,
      userName: userName,
    );
  }

  FidoCredential fromJson(Map<String, Object?> json) {
    return FidoCredential.fromJson(json);
  }
}

/// @nodoc
const $FidoCredential = _$FidoCredentialTearOff();

/// @nodoc
mixin _$FidoCredential {
  String get rpId => throw _privateConstructorUsedError;
  String get credentialId => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FidoCredentialCopyWith<FidoCredential> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FidoCredentialCopyWith<$Res> {
  factory $FidoCredentialCopyWith(
          FidoCredential value, $Res Function(FidoCredential) then) =
      _$FidoCredentialCopyWithImpl<$Res>;
  $Res call({String rpId, String credentialId, String userId, String userName});
}

/// @nodoc
class _$FidoCredentialCopyWithImpl<$Res>
    implements $FidoCredentialCopyWith<$Res> {
  _$FidoCredentialCopyWithImpl(this._value, this._then);

  final FidoCredential _value;
  // ignore: unused_field
  final $Res Function(FidoCredential) _then;

  @override
  $Res call({
    Object? rpId = freezed,
    Object? credentialId = freezed,
    Object? userId = freezed,
    Object? userName = freezed,
  }) {
    return _then(_value.copyWith(
      rpId: rpId == freezed
          ? _value.rpId
          : rpId // ignore: cast_nullable_to_non_nullable
              as String,
      credentialId: credentialId == freezed
          ? _value.credentialId
          : credentialId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$FidoCredentialCopyWith<$Res>
    implements $FidoCredentialCopyWith<$Res> {
  factory _$FidoCredentialCopyWith(
          _FidoCredential value, $Res Function(_FidoCredential) then) =
      __$FidoCredentialCopyWithImpl<$Res>;
  @override
  $Res call({String rpId, String credentialId, String userId, String userName});
}

/// @nodoc
class __$FidoCredentialCopyWithImpl<$Res>
    extends _$FidoCredentialCopyWithImpl<$Res>
    implements _$FidoCredentialCopyWith<$Res> {
  __$FidoCredentialCopyWithImpl(
      _FidoCredential _value, $Res Function(_FidoCredential) _then)
      : super(_value, (v) => _then(v as _FidoCredential));

  @override
  _FidoCredential get _value => super._value as _FidoCredential;

  @override
  $Res call({
    Object? rpId = freezed,
    Object? credentialId = freezed,
    Object? userId = freezed,
    Object? userName = freezed,
  }) {
    return _then(_FidoCredential(
      rpId: rpId == freezed
          ? _value.rpId
          : rpId // ignore: cast_nullable_to_non_nullable
              as String,
      credentialId: credentialId == freezed
          ? _value.credentialId
          : credentialId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FidoCredential implements _FidoCredential {
  _$_FidoCredential(
      {required this.rpId,
      required this.credentialId,
      required this.userId,
      required this.userName});

  factory _$_FidoCredential.fromJson(Map<String, dynamic> json) =>
      _$$_FidoCredentialFromJson(json);

  @override
  final String rpId;
  @override
  final String credentialId;
  @override
  final String userId;
  @override
  final String userName;

  @override
  String toString() {
    return 'FidoCredential(rpId: $rpId, credentialId: $credentialId, userId: $userId, userName: $userName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FidoCredential &&
            const DeepCollectionEquality().equals(other.rpId, rpId) &&
            const DeepCollectionEquality()
                .equals(other.credentialId, credentialId) &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality().equals(other.userName, userName));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(rpId),
      const DeepCollectionEquality().hash(credentialId),
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(userName));

  @JsonKey(ignore: true)
  @override
  _$FidoCredentialCopyWith<_FidoCredential> get copyWith =>
      __$FidoCredentialCopyWithImpl<_FidoCredential>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FidoCredentialToJson(this);
  }
}

abstract class _FidoCredential implements FidoCredential {
  factory _FidoCredential(
      {required String rpId,
      required String credentialId,
      required String userId,
      required String userName}) = _$_FidoCredential;

  factory _FidoCredential.fromJson(Map<String, dynamic> json) =
      _$_FidoCredential.fromJson;

  @override
  String get rpId;
  @override
  String get credentialId;
  @override
  String get userId;
  @override
  String get userName;
  @override
  @JsonKey(ignore: true)
  _$FidoCredentialCopyWith<_FidoCredential> get copyWith =>
      throw _privateConstructorUsedError;
}
