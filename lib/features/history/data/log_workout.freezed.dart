// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'log_workout.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$WorkoutLog {

 int get id; DateTime get beginningTime; DateTime? get endingTime; int get workoutId;
/// Create a copy of WorkoutLog
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WorkoutLogCopyWith<WorkoutLog> get copyWith => _$WorkoutLogCopyWithImpl<WorkoutLog>(this as WorkoutLog, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as WorkoutLog;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WorkoutLog&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.beginningTime, _this.beginningTime) || other.beginningTime == _this.beginningTime)&&(identical(other.endingTime, _this.endingTime) || other.endingTime == _this.endingTime)&&(identical(other.workoutId, _this.workoutId) || other.workoutId == _this.workoutId));
}


@override
int get hashCode {
  final _this = this as WorkoutLog;
  return Object.hash(runtimeType,_this.id,_this.beginningTime,_this.endingTime,_this.workoutId);
}

@override
String toString() {
  final _this = this as WorkoutLog;
  return 'WorkoutLog(id: ${_this.id}, beginningTime: ${_this.beginningTime}, endingTime: ${_this.endingTime}, workoutId: ${_this.workoutId})';
}


}

/// @nodoc
abstract mixin class $WorkoutLogCopyWith<$Res>  {
  factory $WorkoutLogCopyWith(WorkoutLog value, $Res Function(WorkoutLog) _then) = _$WorkoutLogCopyWithImpl;
@useResult
$Res call({
 int id, DateTime beginningTime, DateTime? endingTime, int workoutId
});




}
/// @nodoc
class _$WorkoutLogCopyWithImpl<$Res>
    implements $WorkoutLogCopyWith<$Res> {
  _$WorkoutLogCopyWithImpl(this._self, this._then);

  final WorkoutLog _self;
  final $Res Function(WorkoutLog) _then;

/// Create a copy of WorkoutLog
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? beginningTime = null,Object? endingTime = freezed,Object? workoutId = null,}) {
  return _then(WorkoutLog(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,beginningTime: null == beginningTime ? _self.beginningTime : beginningTime // ignore: cast_nullable_to_non_nullable
as DateTime,endingTime: freezed == endingTime ? _self.endingTime : endingTime // ignore: cast_nullable_to_non_nullable
as DateTime?,workoutId: null == workoutId ? _self.workoutId : workoutId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [WorkoutLog].
extension WorkoutLogPatterns on WorkoutLog {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WorkoutLog value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WorkoutLog() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WorkoutLog value)  $default,){
final _that = this;
switch (_that) {
case _WorkoutLog():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WorkoutLog value)?  $default,){
final _that = this;
switch (_that) {
case _WorkoutLog() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  DateTime beginningTime,  DateTime? endingTime,  int workoutId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WorkoutLog() when $default != null:
return $default(_that.id,_that.beginningTime,_that.endingTime,_that.workoutId);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  DateTime beginningTime,  DateTime? endingTime,  int workoutId)  $default,) {final _that = this;
switch (_that) {
case _WorkoutLog():
return $default(_that.id,_that.beginningTime,_that.endingTime,_that.workoutId);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  DateTime beginningTime,  DateTime? endingTime,  int workoutId)?  $default,) {final _that = this;
switch (_that) {
case _WorkoutLog() when $default != null:
return $default(_that.id,_that.beginningTime,_that.endingTime,_that.workoutId);case _:
  return null;

}
}

}

/// @nodoc


class _WorkoutLog implements WorkoutLog {
  const _WorkoutLog({required this.id, required this.beginningTime, this.endingTime, required this.workoutId});
  

@override final  int id;
@override final  DateTime beginningTime;
@override final  DateTime? endingTime;
@override final  int workoutId;

/// Create a copy of WorkoutLog
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WorkoutLogCopyWith<_WorkoutLog> get copyWith => __$WorkoutLogCopyWithImpl<_WorkoutLog>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _WorkoutLog&&(identical(other.id, id) || other.id == id)&&(identical(other.beginningTime, beginningTime) || other.beginningTime == beginningTime)&&(identical(other.endingTime, endingTime) || other.endingTime == endingTime)&&(identical(other.workoutId, workoutId) || other.workoutId == workoutId));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,beginningTime,endingTime,workoutId);
}

@override
String toString() {
    return 'WorkoutLog(id: $id, beginningTime: $beginningTime, endingTime: $endingTime, workoutId: $workoutId)';
}


}

/// @nodoc
abstract mixin class _$WorkoutLogCopyWith<$Res> implements $WorkoutLogCopyWith<$Res> {
  factory _$WorkoutLogCopyWith(_WorkoutLog value, $Res Function(_WorkoutLog) _then) = __$WorkoutLogCopyWithImpl;
@override @useResult
$Res call({
 int id, DateTime beginningTime, DateTime? endingTime, int workoutId
});




}
/// @nodoc
class __$WorkoutLogCopyWithImpl<$Res>
    implements _$WorkoutLogCopyWith<$Res> {
  __$WorkoutLogCopyWithImpl(this._self, this._then);

  final _WorkoutLog _self;
  final $Res Function(_WorkoutLog) _then;

/// Create a copy of WorkoutLog
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? beginningTime = null,Object? endingTime = freezed,Object? workoutId = null,}) {
  return _then(_WorkoutLog(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,beginningTime: null == beginningTime ? _self.beginningTime : beginningTime // ignore: cast_nullable_to_non_nullable
as DateTime,endingTime: freezed == endingTime ? _self.endingTime : endingTime // ignore: cast_nullable_to_non_nullable
as DateTime?,workoutId: null == workoutId ? _self.workoutId : workoutId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
