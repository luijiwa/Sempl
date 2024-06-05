// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rating.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Rating _$RatingFromJson(Map<String, dynamic> json) {
  return _Rating.fromJson(json);
}

/// @nodoc
mixin _$Rating {
  List<ReviewData> get data => throw _privateConstructorUsedError;
  Links get links => throw _privateConstructorUsedError;
  Meta get meta => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RatingCopyWith<Rating> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RatingCopyWith<$Res> {
  factory $RatingCopyWith(Rating value, $Res Function(Rating) then) =
      _$RatingCopyWithImpl<$Res, Rating>;
  @useResult
  $Res call({List<ReviewData> data, Links links, Meta meta});

  $LinksCopyWith<$Res> get links;
  $MetaCopyWith<$Res> get meta;
}

/// @nodoc
class _$RatingCopyWithImpl<$Res, $Val extends Rating>
    implements $RatingCopyWith<$Res> {
  _$RatingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? links = null,
    Object? meta = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ReviewData>,
      links: null == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as Links,
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LinksCopyWith<$Res> get links {
    return $LinksCopyWith<$Res>(_value.links, (value) {
      return _then(_value.copyWith(links: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MetaCopyWith<$Res> get meta {
    return $MetaCopyWith<$Res>(_value.meta, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RatingImplCopyWith<$Res> implements $RatingCopyWith<$Res> {
  factory _$$RatingImplCopyWith(
          _$RatingImpl value, $Res Function(_$RatingImpl) then) =
      __$$RatingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ReviewData> data, Links links, Meta meta});

  @override
  $LinksCopyWith<$Res> get links;
  @override
  $MetaCopyWith<$Res> get meta;
}

/// @nodoc
class __$$RatingImplCopyWithImpl<$Res>
    extends _$RatingCopyWithImpl<$Res, _$RatingImpl>
    implements _$$RatingImplCopyWith<$Res> {
  __$$RatingImplCopyWithImpl(
      _$RatingImpl _value, $Res Function(_$RatingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? links = null,
    Object? meta = null,
  }) {
    return _then(_$RatingImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ReviewData>,
      links: null == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as Links,
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RatingImpl with DiagnosticableTreeMixin implements _Rating {
  const _$RatingImpl(
      {final List<ReviewData> data = const <ReviewData>[],
      this.links = const Links(),
      this.meta = const Meta()})
      : _data = data;

  factory _$RatingImpl.fromJson(Map<String, dynamic> json) =>
      _$$RatingImplFromJson(json);

  final List<ReviewData> _data;
  @override
  @JsonKey()
  List<ReviewData> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  @JsonKey()
  final Links links;
  @override
  @JsonKey()
  final Meta meta;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Rating(data: $data, links: $links, meta: $meta)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Rating'))
      ..add(DiagnosticsProperty('data', data))
      ..add(DiagnosticsProperty('links', links))
      ..add(DiagnosticsProperty('meta', meta));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RatingImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.links, links) || other.links == links) &&
            (identical(other.meta, meta) || other.meta == meta));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_data), links, meta);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RatingImplCopyWith<_$RatingImpl> get copyWith =>
      __$$RatingImplCopyWithImpl<_$RatingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RatingImplToJson(
      this,
    );
  }
}

abstract class _Rating implements Rating {
  const factory _Rating(
      {final List<ReviewData> data,
      final Links links,
      final Meta meta}) = _$RatingImpl;

  factory _Rating.fromJson(Map<String, dynamic> json) = _$RatingImpl.fromJson;

  @override
  List<ReviewData> get data;
  @override
  Links get links;
  @override
  Meta get meta;
  @override
  @JsonKey(ignore: true)
  _$$RatingImplCopyWith<_$RatingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ReviewData _$ReviewDataFromJson(Map<String, dynamic> json) {
  return _ReviewData.fromJson(json);
}

/// @nodoc
mixin _$ReviewData {
  int get id => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;
  int get productId => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;
  String get comment => throw _privateConstructorUsedError;
  String get pros => throw _privateConstructorUsedError;
  String get cons => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  @Deprecated('Не понятен тип')
  String get media => throw _privateConstructorUsedError;
  int get likesCount => throw _privateConstructorUsedError;
  int get dislikesCount => throw _privateConstructorUsedError;
  bool get userHasLiked => throw _privateConstructorUsedError;
  bool get userHasDisliked => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReviewDataCopyWith<ReviewData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewDataCopyWith<$Res> {
  factory $ReviewDataCopyWith(
          ReviewData value, $Res Function(ReviewData) then) =
      _$ReviewDataCopyWithImpl<$Res, ReviewData>;
  @useResult
  $Res call(
      {int id,
      int userId,
      String userName,
      int productId,
      double rating,
      String comment,
      String pros,
      String cons,
      String image,
      @Deprecated('Не понятен тип') String media,
      int likesCount,
      int dislikesCount,
      bool userHasLiked,
      bool userHasDisliked,
      String createdAt,
      String updatedAt});
}

/// @nodoc
class _$ReviewDataCopyWithImpl<$Res, $Val extends ReviewData>
    implements $ReviewDataCopyWith<$Res> {
  _$ReviewDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? userName = null,
    Object? productId = null,
    Object? rating = null,
    Object? comment = null,
    Object? pros = null,
    Object? cons = null,
    Object? image = null,
    Object? media = null,
    Object? likesCount = null,
    Object? dislikesCount = null,
    Object? userHasLiked = null,
    Object? userHasDisliked = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      pros: null == pros
          ? _value.pros
          : pros // ignore: cast_nullable_to_non_nullable
              as String,
      cons: null == cons
          ? _value.cons
          : cons // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      media: null == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as String,
      likesCount: null == likesCount
          ? _value.likesCount
          : likesCount // ignore: cast_nullable_to_non_nullable
              as int,
      dislikesCount: null == dislikesCount
          ? _value.dislikesCount
          : dislikesCount // ignore: cast_nullable_to_non_nullable
              as int,
      userHasLiked: null == userHasLiked
          ? _value.userHasLiked
          : userHasLiked // ignore: cast_nullable_to_non_nullable
              as bool,
      userHasDisliked: null == userHasDisliked
          ? _value.userHasDisliked
          : userHasDisliked // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReviewDataImplCopyWith<$Res>
    implements $ReviewDataCopyWith<$Res> {
  factory _$$ReviewDataImplCopyWith(
          _$ReviewDataImpl value, $Res Function(_$ReviewDataImpl) then) =
      __$$ReviewDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int userId,
      String userName,
      int productId,
      double rating,
      String comment,
      String pros,
      String cons,
      String image,
      @Deprecated('Не понятен тип') String media,
      int likesCount,
      int dislikesCount,
      bool userHasLiked,
      bool userHasDisliked,
      String createdAt,
      String updatedAt});
}

/// @nodoc
class __$$ReviewDataImplCopyWithImpl<$Res>
    extends _$ReviewDataCopyWithImpl<$Res, _$ReviewDataImpl>
    implements _$$ReviewDataImplCopyWith<$Res> {
  __$$ReviewDataImplCopyWithImpl(
      _$ReviewDataImpl _value, $Res Function(_$ReviewDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? userName = null,
    Object? productId = null,
    Object? rating = null,
    Object? comment = null,
    Object? pros = null,
    Object? cons = null,
    Object? image = null,
    Object? media = null,
    Object? likesCount = null,
    Object? dislikesCount = null,
    Object? userHasLiked = null,
    Object? userHasDisliked = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$ReviewDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      pros: null == pros
          ? _value.pros
          : pros // ignore: cast_nullable_to_non_nullable
              as String,
      cons: null == cons
          ? _value.cons
          : cons // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      media: null == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as String,
      likesCount: null == likesCount
          ? _value.likesCount
          : likesCount // ignore: cast_nullable_to_non_nullable
              as int,
      dislikesCount: null == dislikesCount
          ? _value.dislikesCount
          : dislikesCount // ignore: cast_nullable_to_non_nullable
              as int,
      userHasLiked: null == userHasLiked
          ? _value.userHasLiked
          : userHasLiked // ignore: cast_nullable_to_non_nullable
              as bool,
      userHasDisliked: null == userHasDisliked
          ? _value.userHasDisliked
          : userHasDisliked // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReviewDataImpl extends _ReviewData with DiagnosticableTreeMixin {
  const _$ReviewDataImpl(
      {this.id = 0,
      this.userId = 0,
      this.userName = '',
      this.productId = 0,
      this.rating = 0,
      this.comment = '',
      this.pros = '',
      this.cons = '',
      this.image = '',
      @Deprecated('Не понятен тип') this.media = '',
      this.likesCount = 0,
      this.dislikesCount = 0,
      this.userHasLiked = false,
      this.userHasDisliked = false,
      this.createdAt = '',
      this.updatedAt = ''})
      : super._();

  factory _$ReviewDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReviewDataImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final int userId;
  @override
  @JsonKey()
  final String userName;
  @override
  @JsonKey()
  final int productId;
  @override
  @JsonKey()
  final double rating;
  @override
  @JsonKey()
  final String comment;
  @override
  @JsonKey()
  final String pros;
  @override
  @JsonKey()
  final String cons;
  @override
  @JsonKey()
  final String image;
  @override
  @JsonKey()
  @Deprecated('Не понятен тип')
  final String media;
  @override
  @JsonKey()
  final int likesCount;
  @override
  @JsonKey()
  final int dislikesCount;
  @override
  @JsonKey()
  final bool userHasLiked;
  @override
  @JsonKey()
  final bool userHasDisliked;
  @override
  @JsonKey()
  final String createdAt;
  @override
  @JsonKey()
  final String updatedAt;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ReviewData(id: $id, userId: $userId, userName: $userName, productId: $productId, rating: $rating, comment: $comment, pros: $pros, cons: $cons, image: $image, media: $media, likesCount: $likesCount, dislikesCount: $dislikesCount, userHasLiked: $userHasLiked, userHasDisliked: $userHasDisliked, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ReviewData'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('userName', userName))
      ..add(DiagnosticsProperty('productId', productId))
      ..add(DiagnosticsProperty('rating', rating))
      ..add(DiagnosticsProperty('comment', comment))
      ..add(DiagnosticsProperty('pros', pros))
      ..add(DiagnosticsProperty('cons', cons))
      ..add(DiagnosticsProperty('image', image))
      ..add(DiagnosticsProperty('media', media))
      ..add(DiagnosticsProperty('likesCount', likesCount))
      ..add(DiagnosticsProperty('dislikesCount', dislikesCount))
      ..add(DiagnosticsProperty('userHasLiked', userHasLiked))
      ..add(DiagnosticsProperty('userHasDisliked', userHasDisliked))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('updatedAt', updatedAt));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.pros, pros) || other.pros == pros) &&
            (identical(other.cons, cons) || other.cons == cons) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.media, media) || other.media == media) &&
            (identical(other.likesCount, likesCount) ||
                other.likesCount == likesCount) &&
            (identical(other.dislikesCount, dislikesCount) ||
                other.dislikesCount == dislikesCount) &&
            (identical(other.userHasLiked, userHasLiked) ||
                other.userHasLiked == userHasLiked) &&
            (identical(other.userHasDisliked, userHasDisliked) ||
                other.userHasDisliked == userHasDisliked) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      userName,
      productId,
      rating,
      comment,
      pros,
      cons,
      image,
      media,
      likesCount,
      dislikesCount,
      userHasLiked,
      userHasDisliked,
      createdAt,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewDataImplCopyWith<_$ReviewDataImpl> get copyWith =>
      __$$ReviewDataImplCopyWithImpl<_$ReviewDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReviewDataImplToJson(
      this,
    );
  }
}

abstract class _ReviewData extends ReviewData {
  const factory _ReviewData(
      {final int id,
      final int userId,
      final String userName,
      final int productId,
      final double rating,
      final String comment,
      final String pros,
      final String cons,
      final String image,
      @Deprecated('Не понятен тип') final String media,
      final int likesCount,
      final int dislikesCount,
      final bool userHasLiked,
      final bool userHasDisliked,
      final String createdAt,
      final String updatedAt}) = _$ReviewDataImpl;
  const _ReviewData._() : super._();

  factory _ReviewData.fromJson(Map<String, dynamic> json) =
      _$ReviewDataImpl.fromJson;

  @override
  int get id;
  @override
  int get userId;
  @override
  String get userName;
  @override
  int get productId;
  @override
  double get rating;
  @override
  String get comment;
  @override
  String get pros;
  @override
  String get cons;
  @override
  String get image;
  @override
  @Deprecated('Не понятен тип')
  String get media;
  @override
  int get likesCount;
  @override
  int get dislikesCount;
  @override
  bool get userHasLiked;
  @override
  bool get userHasDisliked;
  @override
  String get createdAt;
  @override
  String get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$ReviewDataImplCopyWith<_$ReviewDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Links _$LinksFromJson(Map<String, dynamic> json) {
  return _Links.fromJson(json);
}

/// @nodoc
mixin _$Links {
  String get first => throw _privateConstructorUsedError;
  String get last => throw _privateConstructorUsedError;
  @Deprecated('Не понятен тип на бэке null')
  String get prev => throw _privateConstructorUsedError;
  @Deprecated('Не понятен тип на бэке null')
  String get next => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LinksCopyWith<Links> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LinksCopyWith<$Res> {
  factory $LinksCopyWith(Links value, $Res Function(Links) then) =
      _$LinksCopyWithImpl<$Res, Links>;
  @useResult
  $Res call(
      {String first,
      String last,
      @Deprecated('Не понятен тип на бэке null') String prev,
      @Deprecated('Не понятен тип на бэке null') String next});
}

/// @nodoc
class _$LinksCopyWithImpl<$Res, $Val extends Links>
    implements $LinksCopyWith<$Res> {
  _$LinksCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? first = null,
    Object? last = null,
    Object? prev = null,
    Object? next = null,
  }) {
    return _then(_value.copyWith(
      first: null == first
          ? _value.first
          : first // ignore: cast_nullable_to_non_nullable
              as String,
      last: null == last
          ? _value.last
          : last // ignore: cast_nullable_to_non_nullable
              as String,
      prev: null == prev
          ? _value.prev
          : prev // ignore: cast_nullable_to_non_nullable
              as String,
      next: null == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LinksImplCopyWith<$Res> implements $LinksCopyWith<$Res> {
  factory _$$LinksImplCopyWith(
          _$LinksImpl value, $Res Function(_$LinksImpl) then) =
      __$$LinksImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String first,
      String last,
      @Deprecated('Не понятен тип на бэке null') String prev,
      @Deprecated('Не понятен тип на бэке null') String next});
}

/// @nodoc
class __$$LinksImplCopyWithImpl<$Res>
    extends _$LinksCopyWithImpl<$Res, _$LinksImpl>
    implements _$$LinksImplCopyWith<$Res> {
  __$$LinksImplCopyWithImpl(
      _$LinksImpl _value, $Res Function(_$LinksImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? first = null,
    Object? last = null,
    Object? prev = null,
    Object? next = null,
  }) {
    return _then(_$LinksImpl(
      first: null == first
          ? _value.first
          : first // ignore: cast_nullable_to_non_nullable
              as String,
      last: null == last
          ? _value.last
          : last // ignore: cast_nullable_to_non_nullable
              as String,
      prev: null == prev
          ? _value.prev
          : prev // ignore: cast_nullable_to_non_nullable
              as String,
      next: null == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LinksImpl with DiagnosticableTreeMixin implements _Links {
  const _$LinksImpl(
      {this.first = '',
      this.last = '',
      @Deprecated('Не понятен тип на бэке null') this.prev = '',
      @Deprecated('Не понятен тип на бэке null') this.next = ''});

  factory _$LinksImpl.fromJson(Map<String, dynamic> json) =>
      _$$LinksImplFromJson(json);

  @override
  @JsonKey()
  final String first;
  @override
  @JsonKey()
  final String last;
  @override
  @JsonKey()
  @Deprecated('Не понятен тип на бэке null')
  final String prev;
  @override
  @JsonKey()
  @Deprecated('Не понятен тип на бэке null')
  final String next;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Links(first: $first, last: $last, prev: $prev, next: $next)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Links'))
      ..add(DiagnosticsProperty('first', first))
      ..add(DiagnosticsProperty('last', last))
      ..add(DiagnosticsProperty('prev', prev))
      ..add(DiagnosticsProperty('next', next));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LinksImpl &&
            (identical(other.first, first) || other.first == first) &&
            (identical(other.last, last) || other.last == last) &&
            (identical(other.prev, prev) || other.prev == prev) &&
            (identical(other.next, next) || other.next == next));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, first, last, prev, next);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LinksImplCopyWith<_$LinksImpl> get copyWith =>
      __$$LinksImplCopyWithImpl<_$LinksImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LinksImplToJson(
      this,
    );
  }
}

abstract class _Links implements Links {
  const factory _Links(
          {final String first,
          final String last,
          @Deprecated('Не понятен тип на бэке null') final String prev,
          @Deprecated('Не понятен тип на бэке null') final String next}) =
      _$LinksImpl;

  factory _Links.fromJson(Map<String, dynamic> json) = _$LinksImpl.fromJson;

  @override
  String get first;
  @override
  String get last;
  @override
  @Deprecated('Не понятен тип на бэке null')
  String get prev;
  @override
  @Deprecated('Не понятен тип на бэке null')
  String get next;
  @override
  @JsonKey(ignore: true)
  _$$LinksImplCopyWith<_$LinksImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Meta _$MetaFromJson(Map<String, dynamic> json) {
  return _Meta.fromJson(json);
}

/// @nodoc
mixin _$Meta {
  int get currentPage => throw _privateConstructorUsedError;
  int get from => throw _privateConstructorUsedError;
  int get lastPage => throw _privateConstructorUsedError;
  List<LinksData> get links => throw _privateConstructorUsedError;
  String get path => throw _privateConstructorUsedError;
  int get perPage => throw _privateConstructorUsedError;
  int get to => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MetaCopyWith<Meta> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetaCopyWith<$Res> {
  factory $MetaCopyWith(Meta value, $Res Function(Meta) then) =
      _$MetaCopyWithImpl<$Res, Meta>;
  @useResult
  $Res call(
      {int currentPage,
      int from,
      int lastPage,
      List<LinksData> links,
      String path,
      int perPage,
      int to,
      int total});
}

/// @nodoc
class _$MetaCopyWithImpl<$Res, $Val extends Meta>
    implements $MetaCopyWith<$Res> {
  _$MetaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = null,
    Object? from = null,
    Object? lastPage = null,
    Object? links = null,
    Object? path = null,
    Object? perPage = null,
    Object? to = null,
    Object? total = null,
  }) {
    return _then(_value.copyWith(
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int,
      lastPage: null == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int,
      links: null == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as List<LinksData>,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MetaImplCopyWith<$Res> implements $MetaCopyWith<$Res> {
  factory _$$MetaImplCopyWith(
          _$MetaImpl value, $Res Function(_$MetaImpl) then) =
      __$$MetaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int currentPage,
      int from,
      int lastPage,
      List<LinksData> links,
      String path,
      int perPage,
      int to,
      int total});
}

/// @nodoc
class __$$MetaImplCopyWithImpl<$Res>
    extends _$MetaCopyWithImpl<$Res, _$MetaImpl>
    implements _$$MetaImplCopyWith<$Res> {
  __$$MetaImplCopyWithImpl(_$MetaImpl _value, $Res Function(_$MetaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = null,
    Object? from = null,
    Object? lastPage = null,
    Object? links = null,
    Object? path = null,
    Object? perPage = null,
    Object? to = null,
    Object? total = null,
  }) {
    return _then(_$MetaImpl(
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int,
      lastPage: null == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int,
      links: null == links
          ? _value._links
          : links // ignore: cast_nullable_to_non_nullable
              as List<LinksData>,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MetaImpl with DiagnosticableTreeMixin implements _Meta {
  const _$MetaImpl(
      {this.currentPage = 0,
      this.from = 0,
      this.lastPage = 0,
      final List<LinksData> links = const <LinksData>[],
      this.path = '',
      this.perPage = 0,
      this.to = 0,
      this.total = 0})
      : _links = links;

  factory _$MetaImpl.fromJson(Map<String, dynamic> json) =>
      _$$MetaImplFromJson(json);

  @override
  @JsonKey()
  final int currentPage;
  @override
  @JsonKey()
  final int from;
  @override
  @JsonKey()
  final int lastPage;
  final List<LinksData> _links;
  @override
  @JsonKey()
  List<LinksData> get links {
    if (_links is EqualUnmodifiableListView) return _links;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_links);
  }

  @override
  @JsonKey()
  final String path;
  @override
  @JsonKey()
  final int perPage;
  @override
  @JsonKey()
  final int to;
  @override
  @JsonKey()
  final int total;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Meta(currentPage: $currentPage, from: $from, lastPage: $lastPage, links: $links, path: $path, perPage: $perPage, to: $to, total: $total)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Meta'))
      ..add(DiagnosticsProperty('currentPage', currentPage))
      ..add(DiagnosticsProperty('from', from))
      ..add(DiagnosticsProperty('lastPage', lastPage))
      ..add(DiagnosticsProperty('links', links))
      ..add(DiagnosticsProperty('path', path))
      ..add(DiagnosticsProperty('perPage', perPage))
      ..add(DiagnosticsProperty('to', to))
      ..add(DiagnosticsProperty('total', total));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MetaImpl &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.lastPage, lastPage) ||
                other.lastPage == lastPage) &&
            const DeepCollectionEquality().equals(other._links, _links) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, currentPage, from, lastPage,
      const DeepCollectionEquality().hash(_links), path, perPage, to, total);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MetaImplCopyWith<_$MetaImpl> get copyWith =>
      __$$MetaImplCopyWithImpl<_$MetaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MetaImplToJson(
      this,
    );
  }
}

abstract class _Meta implements Meta {
  const factory _Meta(
      {final int currentPage,
      final int from,
      final int lastPage,
      final List<LinksData> links,
      final String path,
      final int perPage,
      final int to,
      final int total}) = _$MetaImpl;

  factory _Meta.fromJson(Map<String, dynamic> json) = _$MetaImpl.fromJson;

  @override
  int get currentPage;
  @override
  int get from;
  @override
  int get lastPage;
  @override
  List<LinksData> get links;
  @override
  String get path;
  @override
  int get perPage;
  @override
  int get to;
  @override
  int get total;
  @override
  @JsonKey(ignore: true)
  _$$MetaImplCopyWith<_$MetaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LinksData _$LinksDataFromJson(Map<String, dynamic> json) {
  return _LinksData.fromJson(json);
}

/// @nodoc
mixin _$LinksData {
  String get url => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;
  bool get active => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LinksDataCopyWith<LinksData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LinksDataCopyWith<$Res> {
  factory $LinksDataCopyWith(LinksData value, $Res Function(LinksData) then) =
      _$LinksDataCopyWithImpl<$Res, LinksData>;
  @useResult
  $Res call({String url, String label, bool active});
}

/// @nodoc
class _$LinksDataCopyWithImpl<$Res, $Val extends LinksData>
    implements $LinksDataCopyWith<$Res> {
  _$LinksDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? label = null,
    Object? active = null,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LinksDataImplCopyWith<$Res>
    implements $LinksDataCopyWith<$Res> {
  factory _$$LinksDataImplCopyWith(
          _$LinksDataImpl value, $Res Function(_$LinksDataImpl) then) =
      __$$LinksDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String url, String label, bool active});
}

/// @nodoc
class __$$LinksDataImplCopyWithImpl<$Res>
    extends _$LinksDataCopyWithImpl<$Res, _$LinksDataImpl>
    implements _$$LinksDataImplCopyWith<$Res> {
  __$$LinksDataImplCopyWithImpl(
      _$LinksDataImpl _value, $Res Function(_$LinksDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? label = null,
    Object? active = null,
  }) {
    return _then(_$LinksDataImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LinksDataImpl with DiagnosticableTreeMixin implements _LinksData {
  const _$LinksDataImpl({this.url = '', this.label = '', this.active = false});

  factory _$LinksDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$LinksDataImplFromJson(json);

  @override
  @JsonKey()
  final String url;
  @override
  @JsonKey()
  final String label;
  @override
  @JsonKey()
  final bool active;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LinksData(url: $url, label: $label, active: $active)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LinksData'))
      ..add(DiagnosticsProperty('url', url))
      ..add(DiagnosticsProperty('label', label))
      ..add(DiagnosticsProperty('active', active));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LinksDataImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.active, active) || other.active == active));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url, label, active);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LinksDataImplCopyWith<_$LinksDataImpl> get copyWith =>
      __$$LinksDataImplCopyWithImpl<_$LinksDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LinksDataImplToJson(
      this,
    );
  }
}

abstract class _LinksData implements LinksData {
  const factory _LinksData(
      {final String url,
      final String label,
      final bool active}) = _$LinksDataImpl;

  factory _LinksData.fromJson(Map<String, dynamic> json) =
      _$LinksDataImpl.fromJson;

  @override
  String get url;
  @override
  String get label;
  @override
  bool get active;
  @override
  @JsonKey(ignore: true)
  _$$LinksDataImplCopyWith<_$LinksDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
