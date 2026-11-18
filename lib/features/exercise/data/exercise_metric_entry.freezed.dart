// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exercise_metric_entry.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ExerciseMetricEntry {

 int get exerciseMetricId; int get metricId; String get metricName; int get metricOrder;
/// Create a copy of ExerciseMetricEntry
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExerciseMetricEntryCopyWith<ExerciseMetricEntry> get copyWith => _$ExerciseMetricEntryCopyWithImpl<ExerciseMetricEntry>(this as ExerciseMetricEntry, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as ExerciseMetricEntry;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExerciseMetricEntry&&(identical(other.exerciseMetricId, _this.exerciseMetricId) || other.exerciseMetricId == _this.exerciseMetricId)&&(identical(other.metricId, _this.metricId) || other.metricId == _this.metricId)&&(identical(other.metricName, _this.metricName) || other.metricName == _this.metricName)&&(identical(other.metricOrder, _this.metricOrder) || other.metricOrder == _this.metricOrder));
}


@override
int get hashCode {
  final _this = this as ExerciseMetricEntry;
  return Object.hash(runtimeType,_this.exerciseMetricId,_this.metricId,_this.metricName,_this.metricOrder);
}

@override
String toString() {
  final _this = this as ExerciseMetricEntry;
  return 'ExerciseMetricEntry(exerciseMetricId: ${_this.exerciseMetricId}, metricId: ${_this.metricId}, metricName: ${_this.metricName}, metricOrder: ${_this.metricOrder})';
}


}

/// @nodoc
abstract mixin class $ExerciseMetricEntryCopyWith<$Res>  {
  factory $ExerciseMetricEntryCopyWith(ExerciseMetricEntry value, $Res Function(ExerciseMetricEntry) _then) = _$ExerciseMetricEntryCopyWithImpl;
@useResult
$Res call({
 int exerciseMetricId, int metricId, String metricName, int metricOrder
});




}
/// @nodoc
class _$ExerciseMetricEntryCopyWithImpl<$Res>
    implements $ExerciseMetricEntryCopyWith<$Res> {
  _$ExerciseMetricEntryCopyWithImpl(this._self, this._then);

  final ExerciseMetricEntry _self;
  final $Res Function(ExerciseMetricEntry) _then;

/// Create a copy of ExerciseMetricEntry
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? exerciseMetricId = null,Object? metricId = null,Object? metricName = null,Object? metricOrder = null,}) {
  return _then(ExerciseMetricEntry(
exerciseMetricId: null == exerciseMetricId ? _self.exerciseMetricId : exerciseMetricId // ignore: cast_nullable_to_non_nullable
as int,metricId: null == metricId ? _self.metricId : metricId // ignore: cast_nullable_to_non_nullable
as int,metricName: null == metricName ? _self.metricName : metricName // ignore: cast_nullable_to_non_nullable
as String,metricOrder: null == metricOrder ? _self.metricOrder : metricOrder // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ExerciseMetricEntry].
extension ExerciseMetricEntryPatterns on ExerciseMetricEntry {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ExerciseMetricEntry value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ExerciseMetricEntry() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ExerciseMetricEntry value)  $default,){
final _that = this;
switch (_that) {
case _ExerciseMetricEntry():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ExerciseMetricEntry value)?  $default,){
final _that = this;
switch (_that) {
case _ExerciseMetricEntry() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int exerciseMetricId,  int metricId,  String metricName,  int metricOrder)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ExerciseMetricEntry() when $default != null:
return $default(_that.exerciseMetricId,_that.metricId,_that.metricName,_that.metricOrder);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int exerciseMetricId,  int metricId,  String metricName,  int metricOrder)  $default,) {final _that = this;
switch (_that) {
case _ExerciseMetricEntry():
return $default(_that.exerciseMetricId,_that.metricId,_that.metricName,_that.metricOrder);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int exerciseMetricId,  int metricId,  String metricName,  int metricOrder)?  $default,) {final _that = this;
switch (_that) {
case _ExerciseMetricEntry() when $default != null:
return $default(_that.exerciseMetricId,_that.metricId,_that.metricName,_that.metricOrder);case _:
  return null;

}
}

}

/// @nodoc


class _ExerciseMetricEntry implements ExerciseMetricEntry {
  const _ExerciseMetricEntry({required this.exerciseMetricId, required this.metricId, required this.metricName, required this.metricOrder});
  

@override final  int exerciseMetricId;
@override final  int metricId;
@override final  String metricName;
@override final  int metricOrder;

/// Create a copy of ExerciseMetricEntry
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ExerciseMetricEntryCopyWith<_ExerciseMetricEntry> get copyWith => __$ExerciseMetricEntryCopyWithImpl<_ExerciseMetricEntry>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ExerciseMetricEntry&&(identical(other.exerciseMetricId, exerciseMetricId) || other.exerciseMetricId == exerciseMetricId)&&(identical(other.metricId, metricId) || other.metricId == metricId)&&(identical(other.metricName, metricName) || other.metricName == metricName)&&(identical(other.metricOrder, metricOrder) || other.metricOrder == metricOrder));
}


@override
int get hashCode {
    return Object.hash(runtimeType,exerciseMetricId,metricId,metricName,metricOrder);
}

@override
String toString() {
    return 'ExerciseMetricEntry(exerciseMetricId: $exerciseMetricId, metricId: $metricId, metricName: $metricName, metricOrder: $metricOrder)';
}


}

/// @nodoc
abstract mixin class _$ExerciseMetricEntryCopyWith<$Res> implements $ExerciseMetricEntryCopyWith<$Res> {
  factory _$ExerciseMetricEntryCopyWith(_ExerciseMetricEntry value, $Res Function(_ExerciseMetricEntry) _then) = __$ExerciseMetricEntryCopyWithImpl;
@override @useResult
$Res call({
 int exerciseMetricId, int metricId, String metricName, int metricOrder
});




}
/// @nodoc
class __$ExerciseMetricEntryCopyWithImpl<$Res>
    implements _$ExerciseMetricEntryCopyWith<$Res> {
  __$ExerciseMetricEntryCopyWithImpl(this._self, this._then);

  final _ExerciseMetricEntry _self;
  final $Res Function(_ExerciseMetricEntry) _then;

/// Create a copy of ExerciseMetricEntry
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? exerciseMetricId = null,Object? metricId = null,Object? metricName = null,Object? metricOrder = null,}) {
  return _then(_ExerciseMetricEntry(
exerciseMetricId: null == exerciseMetricId ? _self.exerciseMetricId : exerciseMetricId // ignore: cast_nullable_to_non_nullable
as int,metricId: null == metricId ? _self.metricId : metricId // ignore: cast_nullable_to_non_nullable
as int,metricName: null == metricName ? _self.metricName : metricName // ignore: cast_nullable_to_non_nullable
as String,metricOrder: null == metricOrder ? _self.metricOrder : metricOrder // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
