// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'workout_exercise_entry.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$WorkoutExerciseEntry {

 int get workoutExerciseId; int get exerciseId; String get exerciseName; int get plannedOrder;
/// Create a copy of WorkoutExerciseEntry
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WorkoutExerciseEntryCopyWith<WorkoutExerciseEntry> get copyWith => _$WorkoutExerciseEntryCopyWithImpl<WorkoutExerciseEntry>(this as WorkoutExerciseEntry, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as WorkoutExerciseEntry;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WorkoutExerciseEntry&&(identical(other.workoutExerciseId, _this.workoutExerciseId) || other.workoutExerciseId == _this.workoutExerciseId)&&(identical(other.exerciseId, _this.exerciseId) || other.exerciseId == _this.exerciseId)&&(identical(other.exerciseName, _this.exerciseName) || other.exerciseName == _this.exerciseName)&&(identical(other.plannedOrder, _this.plannedOrder) || other.plannedOrder == _this.plannedOrder));
}


@override
int get hashCode {
  final _this = this as WorkoutExerciseEntry;
  return Object.hash(runtimeType,_this.workoutExerciseId,_this.exerciseId,_this.exerciseName,_this.plannedOrder);
}

@override
String toString() {
  final _this = this as WorkoutExerciseEntry;
  return 'WorkoutExerciseEntry(workoutExerciseId: ${_this.workoutExerciseId}, exerciseId: ${_this.exerciseId}, exerciseName: ${_this.exerciseName}, plannedOrder: ${_this.plannedOrder})';
}


}

/// @nodoc
abstract mixin class $WorkoutExerciseEntryCopyWith<$Res>  {
  factory $WorkoutExerciseEntryCopyWith(WorkoutExerciseEntry value, $Res Function(WorkoutExerciseEntry) _then) = _$WorkoutExerciseEntryCopyWithImpl;
@useResult
$Res call({
 int workoutExerciseId, int exerciseId, String exerciseName, int plannedOrder
});




}
/// @nodoc
class _$WorkoutExerciseEntryCopyWithImpl<$Res>
    implements $WorkoutExerciseEntryCopyWith<$Res> {
  _$WorkoutExerciseEntryCopyWithImpl(this._self, this._then);

  final WorkoutExerciseEntry _self;
  final $Res Function(WorkoutExerciseEntry) _then;

/// Create a copy of WorkoutExerciseEntry
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? workoutExerciseId = null,Object? exerciseId = null,Object? exerciseName = null,Object? plannedOrder = null,}) {
  return _then(WorkoutExerciseEntry(
workoutExerciseId: null == workoutExerciseId ? _self.workoutExerciseId : workoutExerciseId // ignore: cast_nullable_to_non_nullable
as int,exerciseId: null == exerciseId ? _self.exerciseId : exerciseId // ignore: cast_nullable_to_non_nullable
as int,exerciseName: null == exerciseName ? _self.exerciseName : exerciseName // ignore: cast_nullable_to_non_nullable
as String,plannedOrder: null == plannedOrder ? _self.plannedOrder : plannedOrder // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [WorkoutExerciseEntry].
extension WorkoutExerciseEntryPatterns on WorkoutExerciseEntry {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WorkoutExerciseEntry value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WorkoutExerciseEntry() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WorkoutExerciseEntry value)  $default,){
final _that = this;
switch (_that) {
case _WorkoutExerciseEntry():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WorkoutExerciseEntry value)?  $default,){
final _that = this;
switch (_that) {
case _WorkoutExerciseEntry() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int workoutExerciseId,  int exerciseId,  String exerciseName,  int plannedOrder)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WorkoutExerciseEntry() when $default != null:
return $default(_that.workoutExerciseId,_that.exerciseId,_that.exerciseName,_that.plannedOrder);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int workoutExerciseId,  int exerciseId,  String exerciseName,  int plannedOrder)  $default,) {final _that = this;
switch (_that) {
case _WorkoutExerciseEntry():
return $default(_that.workoutExerciseId,_that.exerciseId,_that.exerciseName,_that.plannedOrder);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int workoutExerciseId,  int exerciseId,  String exerciseName,  int plannedOrder)?  $default,) {final _that = this;
switch (_that) {
case _WorkoutExerciseEntry() when $default != null:
return $default(_that.workoutExerciseId,_that.exerciseId,_that.exerciseName,_that.plannedOrder);case _:
  return null;

}
}

}

/// @nodoc


class _WorkoutExerciseEntry implements WorkoutExerciseEntry {
  const _WorkoutExerciseEntry({required this.workoutExerciseId, required this.exerciseId, required this.exerciseName, required this.plannedOrder});
  

@override final  int workoutExerciseId;
@override final  int exerciseId;
@override final  String exerciseName;
@override final  int plannedOrder;

/// Create a copy of WorkoutExerciseEntry
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WorkoutExerciseEntryCopyWith<_WorkoutExerciseEntry> get copyWith => __$WorkoutExerciseEntryCopyWithImpl<_WorkoutExerciseEntry>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _WorkoutExerciseEntry&&(identical(other.workoutExerciseId, workoutExerciseId) || other.workoutExerciseId == workoutExerciseId)&&(identical(other.exerciseId, exerciseId) || other.exerciseId == exerciseId)&&(identical(other.exerciseName, exerciseName) || other.exerciseName == exerciseName)&&(identical(other.plannedOrder, plannedOrder) || other.plannedOrder == plannedOrder));
}


@override
int get hashCode {
    return Object.hash(runtimeType,workoutExerciseId,exerciseId,exerciseName,plannedOrder);
}

@override
String toString() {
    return 'WorkoutExerciseEntry(workoutExerciseId: $workoutExerciseId, exerciseId: $exerciseId, exerciseName: $exerciseName, plannedOrder: $plannedOrder)';
}


}

/// @nodoc
abstract mixin class _$WorkoutExerciseEntryCopyWith<$Res> implements $WorkoutExerciseEntryCopyWith<$Res> {
  factory _$WorkoutExerciseEntryCopyWith(_WorkoutExerciseEntry value, $Res Function(_WorkoutExerciseEntry) _then) = __$WorkoutExerciseEntryCopyWithImpl;
@override @useResult
$Res call({
 int workoutExerciseId, int exerciseId, String exerciseName, int plannedOrder
});




}
/// @nodoc
class __$WorkoutExerciseEntryCopyWithImpl<$Res>
    implements _$WorkoutExerciseEntryCopyWith<$Res> {
  __$WorkoutExerciseEntryCopyWithImpl(this._self, this._then);

  final _WorkoutExerciseEntry _self;
  final $Res Function(_WorkoutExerciseEntry) _then;

/// Create a copy of WorkoutExerciseEntry
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? workoutExerciseId = null,Object? exerciseId = null,Object? exerciseName = null,Object? plannedOrder = null,}) {
  return _then(_WorkoutExerciseEntry(
workoutExerciseId: null == workoutExerciseId ? _self.workoutExerciseId : workoutExerciseId // ignore: cast_nullable_to_non_nullable
as int,exerciseId: null == exerciseId ? _self.exerciseId : exerciseId // ignore: cast_nullable_to_non_nullable
as int,exerciseName: null == exerciseName ? _self.exerciseName : exerciseName // ignore: cast_nullable_to_non_nullable
as String,plannedOrder: null == plannedOrder ? _self.plannedOrder : plannedOrder // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
