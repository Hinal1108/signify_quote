// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quotes_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

QuotesResponse _$QuotesResponseFromJson(Map<String, dynamic> json) {
  return _QuotesResponse.fromJson(json);
}

/// @nodoc
mixin _$QuotesResponse {
  String? get sId => throw _privateConstructorUsedError;

  String? get content => throw _privateConstructorUsedError;

  String? get author => throw _privateConstructorUsedError;

  List<String>? get tags => throw _privateConstructorUsedError;

  String? get authorSlug => throw _privateConstructorUsedError;

  int? get length => throw _privateConstructorUsedError;

  String? get dateAdded => throw _privateConstructorUsedError;

  String? get dateModifie => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QuotesResponseCopyWith<QuotesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuotesResponseCopyWith<$Res> {
  factory $QuotesResponseCopyWith(
          QuotesResponse value, $Res Function(QuotesResponse) then) =
      _$QuotesResponseCopyWithImpl<$Res, QuotesResponse>;

  @useResult
  $Res call(
      {String? sId,
      String? content,
      String? author,
      List<String>? tags,
      String? authorSlug,
      int? length,
      String? dateAdded,
      String? dateModifie});
}

/// @nodoc
class _$QuotesResponseCopyWithImpl<$Res, $Val extends QuotesResponse>
    implements $QuotesResponseCopyWith<$Res> {
  _$QuotesResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;

  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sId = freezed,
    Object? content = freezed,
    Object? author = freezed,
    Object? tags = freezed,
    Object? authorSlug = freezed,
    Object? length = freezed,
    Object? dateAdded = freezed,
    Object? dateModifie = freezed,
  }) {
    return _then(_value.copyWith(
      sId: freezed == sId
          ? _value.sId
          : sId // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      authorSlug: freezed == authorSlug
          ? _value.authorSlug
          : authorSlug // ignore: cast_nullable_to_non_nullable
              as String?,
      length: freezed == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int?,
      dateAdded: freezed == dateAdded
          ? _value.dateAdded
          : dateAdded // ignore: cast_nullable_to_non_nullable
              as String?,
      dateModifie: freezed == dateModifie
          ? _value.dateModifie
          : dateModifie // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuotesResponseImplCopyWith<$Res>
    implements $QuotesResponseCopyWith<$Res> {
  factory _$$QuotesResponseImplCopyWith(_$QuotesResponseImpl value,
          $Res Function(_$QuotesResponseImpl) then) =
      __$$QuotesResponseImplCopyWithImpl<$Res>;

  @override
  @useResult
  $Res call(
      {String? sId,
      String? content,
      String? author,
      List<String>? tags,
      String? authorSlug,
      int? length,
      String? dateAdded,
      String? dateModifie});
}

/// @nodoc
class __$$QuotesResponseImplCopyWithImpl<$Res>
    extends _$QuotesResponseCopyWithImpl<$Res, _$QuotesResponseImpl>
    implements _$$QuotesResponseImplCopyWith<$Res> {
  __$$QuotesResponseImplCopyWithImpl(
      _$QuotesResponseImpl _value, $Res Function(_$QuotesResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sId = freezed,
    Object? content = freezed,
    Object? author = freezed,
    Object? tags = freezed,
    Object? authorSlug = freezed,
    Object? length = freezed,
    Object? dateAdded = freezed,
    Object? dateModifie = freezed,
  }) {
    return _then(_$QuotesResponseImpl(
      sId: freezed == sId
          ? _value.sId
          : sId // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: freezed == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      authorSlug: freezed == authorSlug
          ? _value.authorSlug
          : authorSlug // ignore: cast_nullable_to_non_nullable
              as String?,
      length: freezed == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int?,
      dateAdded: freezed == dateAdded
          ? _value.dateAdded
          : dateAdded // ignore: cast_nullable_to_non_nullable
              as String?,
      dateModifie: freezed == dateModifie
          ? _value.dateModifie
          : dateModifie // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuotesResponseImpl implements _QuotesResponse {
  const _$QuotesResponseImpl(
      {required this.sId,
      required this.content,
      required this.author,
      required final List<String>? tags,
      required this.authorSlug,
      required this.length,
      required this.dateAdded,
      required this.dateModifie})
      : _tags = tags;

  factory _$QuotesResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuotesResponseImplFromJson(json);

  @override
  final String? sId;
  @override
  final String? content;
  @override
  final String? author;
  final List<String>? _tags;

  @override
  List<String>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? authorSlug;
  @override
  final int? length;
  @override
  final String? dateAdded;
  @override
  final String? dateModifie;

  @override
  String toString() {
    return 'QuotesResponse(sId: $sId, content: $content, author: $author, tags: $tags, authorSlug: $authorSlug, length: $length, dateAdded: $dateAdded, dateModifie: $dateModifie)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuotesResponseImpl &&
            (identical(other.sId, sId) || other.sId == sId) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.author, author) || other.author == author) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.authorSlug, authorSlug) ||
                other.authorSlug == authorSlug) &&
            (identical(other.length, length) || other.length == length) &&
            (identical(other.dateAdded, dateAdded) ||
                other.dateAdded == dateAdded) &&
            (identical(other.dateModifie, dateModifie) ||
                other.dateModifie == dateModifie));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      sId,
      content,
      author,
      const DeepCollectionEquality().hash(_tags),
      authorSlug,
      length,
      dateAdded,
      dateModifie);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuotesResponseImplCopyWith<_$QuotesResponseImpl> get copyWith =>
      __$$QuotesResponseImplCopyWithImpl<_$QuotesResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuotesResponseImplToJson(
      this,
    );
  }
}

abstract class _QuotesResponse implements QuotesResponse {
  const factory _QuotesResponse(
      {required final String? sId,
      required final String? content,
      required final String? author,
      required final List<String>? tags,
      required final String? authorSlug,
      required final int? length,
      required final String? dateAdded,
      required final String? dateModifie}) = _$QuotesResponseImpl;

  factory _QuotesResponse.fromJson(Map<String, dynamic> json) =
      _$QuotesResponseImpl.fromJson;

  @override
  String? get sId;

  @override
  String? get content;

  @override
  String? get author;

  @override
  List<String>? get tags;

  @override
  String? get authorSlug;

  @override
  int? get length;

  @override
  String? get dateAdded;

  @override
  String? get dateModifie;

  @override
  @JsonKey(ignore: true)
  _$$QuotesResponseImplCopyWith<_$QuotesResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
