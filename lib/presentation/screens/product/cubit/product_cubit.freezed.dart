// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProductState {
  List<ProductItemEntity>? get productList =>
      throw _privateConstructorUsedError;

  /// Create a copy of ProductState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductStateCopyWith<ProductState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductStateCopyWith<$Res> {
  factory $ProductStateCopyWith(
          ProductState value, $Res Function(ProductState) then) =
      _$ProductStateCopyWithImpl<$Res, ProductState>;
  @useResult
  $Res call({List<ProductItemEntity>? productList});
}

/// @nodoc
class _$ProductStateCopyWithImpl<$Res, $Val extends ProductState>
    implements $ProductStateCopyWith<$Res> {
  _$ProductStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productList = freezed,
  }) {
    return _then(_value.copyWith(
      productList: freezed == productList
          ? _value.productList
          : productList // ignore: cast_nullable_to_non_nullable
              as List<ProductItemEntity>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialProductStateImplCopyWith<$Res>
    implements $ProductStateCopyWith<$Res> {
  factory _$$InitialProductStateImplCopyWith(_$InitialProductStateImpl value,
          $Res Function(_$InitialProductStateImpl) then) =
      __$$InitialProductStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ProductItemEntity>? productList});
}

/// @nodoc
class __$$InitialProductStateImplCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$InitialProductStateImpl>
    implements _$$InitialProductStateImplCopyWith<$Res> {
  __$$InitialProductStateImplCopyWithImpl(_$InitialProductStateImpl _value,
      $Res Function(_$InitialProductStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productList = freezed,
  }) {
    return _then(_$InitialProductStateImpl(
      productList: freezed == productList
          ? _value._productList
          : productList // ignore: cast_nullable_to_non_nullable
              as List<ProductItemEntity>?,
    ));
  }
}

/// @nodoc

class _$InitialProductStateImpl implements _InitialProductState {
  const _$InitialProductStateImpl({final List<ProductItemEntity>? productList})
      : _productList = productList;

  final List<ProductItemEntity>? _productList;
  @override
  List<ProductItemEntity>? get productList {
    final value = _productList;
    if (value == null) return null;
    if (_productList is EqualUnmodifiableListView) return _productList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ProductState(productList: $productList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialProductStateImpl &&
            const DeepCollectionEquality()
                .equals(other._productList, _productList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_productList));

  /// Create a copy of ProductState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialProductStateImplCopyWith<_$InitialProductStateImpl> get copyWith =>
      __$$InitialProductStateImplCopyWithImpl<_$InitialProductStateImpl>(
          this, _$identity);
}

abstract class _InitialProductState implements ProductState {
  const factory _InitialProductState(
      {final List<ProductItemEntity>? productList}) = _$InitialProductStateImpl;

  @override
  List<ProductItemEntity>? get productList;

  /// Create a copy of ProductState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialProductStateImplCopyWith<_$InitialProductStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
