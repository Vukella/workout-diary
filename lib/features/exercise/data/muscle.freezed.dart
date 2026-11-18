// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'muscle.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Muscle {

 int get id; String get name; String get group;
/// Create a copy of Muscle
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MuscleCopyWith<Muscle> get copyWith => _$MuscleCopyWithImpl<Muscle>(this as Muscle, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as Muscle;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Muscle&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.group, _this.group) || other.group == _this.group));
}


@override
int get hashCode {
  final _this = this as Muscle;
  return Object.hash(runtimeType,_this.id,_this.name,_this.group);
}

@override
String toString() {
  final _this = this as Muscle;
  return 'Muscle(id: ${_this.id}, name: ${_this.name}, group: ${_this.group})';
}


}

/// @nodoc
abstract mixin class $MuscleCopyWith<$Res>  {
  factory $MuscleCopyWith(Muscle value, $Res Function(Muscle) _then) = _$MuscleCopyWithImpl;
@useResult
$Res call({
 int id, String name, String group
});




}
/// @nodoc
class _$MuscleCopyWithImpl<$Res>
    implements $MuscleCopyWith<$Res> {
  _$MuscleCopyWithImpl(this._self, this._then);

  final Muscle _self;
  final $Res Function(Muscle) _then;

/// Create a copy of Muscle
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? group = null,}) {
  return _then(Muscle(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,group: null == group ? _self.group : group // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Muscle].
extension MusclePatterns on Muscle {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Muscle value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Muscle() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Muscle value)  $default,){
final _that = this;
switch (_that) {
case _Muscle():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Muscle value)?  $default,){
final _that = this;
switch (_that) {
case _Muscle() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String group)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Muscle() when $default != null:
return $default(_that.id,_that.name,_that.group);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String group)  $default,) {final _that = this;
switch (_that) {
case _Muscle():
return $default(_that.id,_that.name,_that.group);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String group)?  $default,) {final _that = this;
switch (_that) {
case _Muscle() when $default != null:
return $default(_that.id,_that.name,_that.group);case _:
  return null;

}
}

}

/// @nodoc


class _Muscle implements Muscle {
  const _Muscle({required this.id, required this.name, required this.group});
  

@override final  int id;
@override final  String name;
@override final  String group;

/// Create a copy of Muscle
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MuscleCopyWith<_Muscle> get copyWith => __$MuscleCopyWithImpl<_Muscle>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Muscle&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.group, group) || other.group == group));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,name,group);
}

@override
String toString() {
    return 'Muscle(id: $id, name: $name, group: $group)';
}


}

/// @nodoc
abstract mixin class _$MuscleCopyWith<$Res> implements $MuscleCopyWith<$Res> {
  factory _$MuscleCopyWith(_Muscle value, $Res Function(_Muscle) _then) = __$MuscleCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String group
});




}
/// @nodoc
class __$MuscleCopyWithImpl<$Res>
    implements _$MuscleCopyWith<$Res> {
  __$MuscleCopyWithImpl(this._self, this._then);

  final _Muscle _self;
  final $Res Function(_Muscle) _then;

/// Create a copy of Muscle
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? group = null,}) {
  return _then(_Muscle(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,group: null == group ? _self.group : group // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
