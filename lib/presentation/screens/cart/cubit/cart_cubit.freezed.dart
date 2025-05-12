// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CartState {
  List<CartItemEntity> get items => throw _privateConstructorUsedError;

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CartStateCopyWith<CartState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStateCopyWith<$Res> {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) then) =
      _$CartStateCopyWithImpl<$Res, CartState>;
  @useResult
  $Res call({List<CartItemEntity> items});
}

/// @nodoc
class _$CartStateCopyWithImpl<$Res, $Val extends CartState>
    implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<CartItemEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialCartStateImplCopyWith<$Res>
    implements $CartStateCopyWith<$Res> {
  factory _$$InitialCartStateImplCopyWith(_$InitialCartStateImpl value,
          $Res Function(_$InitialCartStateImpl) then) =
      __$$InitialCartStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CartItemEntity> items});
}

/// @nodoc
class __$$InitialCartStateImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$InitialCartStateImpl>
    implements _$$InitialCartStateImplCopyWith<$Res> {
  __$$InitialCartStateImplCopyWithImpl(_$InitialCartStateImpl _value,
      $Res Function(_$InitialCartStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_$InitialCartStateImpl(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<CartItemEntity>,
    ));
  }
}

/// @nodoc

class _$InitialCartStateImpl implements _InitialCartState {
  const _$InitialCartStateImpl({final List<CartItemEntity> items = const []})
      : _items = items;

  final List<CartItemEntity> _items;
  @override
  @JsonKey()
  List<CartItemEntity> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'CartState(items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialCartStateImpl &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialCartStateImplCopyWith<_$InitialCartStateImpl> get copyWith =>
      __$$InitialCartStateImplCopyWithImpl<_$InitialCartStateImpl>(
          this, _$identity);
}

abstract class _InitialCartState implements CartState {
  const factory _InitialCartState({final List<CartItemEntity> items}) =
      _$InitialCartStateImpl;

  @override
  List<CartItemEntity> get items;

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialCartStateImplCopyWith<_$InitialCartStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
