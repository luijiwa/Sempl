// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rating.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RatingImpl _$$RatingImplFromJson(Map<String, dynamic> json) => _$RatingImpl(
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => ReviewData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <ReviewData>[],
      links: json['links'] == null
          ? const Links()
          : Links.fromJson(json['links'] as Map<String, dynamic>),
      meta: json['meta'] == null
          ? const Meta()
          : Meta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$RatingImplToJson(_$RatingImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'links': instance.links,
      'meta': instance.meta,
    };

_$ReviewDataImpl _$$ReviewDataImplFromJson(Map<String, dynamic> json) =>
    _$ReviewDataImpl(
      id: json['id'] as int? ?? 0,
      userId: json['user_id'] as int? ?? 0,
      userName: json['user_name'] as String? ?? '',
      productId: json['product_id'] as int? ?? 0,
      rating: (json['rating'] as num?)?.toDouble() ?? 0,
      comment: json['comment'] as String? ?? '',
      pros: json['pros'] as String? ?? '',
      cons: json['cons'] as String? ?? '',
      image: json['image'] as String? ?? '',
      media: json['media'] as String? ?? '',
      likesCount: json['likes_count'] as int? ?? 0,
      dislikesCount: json['dislikes_count'] as int? ?? 0,
      userHasLiked: json['user_has_liked'] as bool? ?? false,
      userHasDisliked: json['user_has_disliked'] as bool? ?? false,
      createdAt: json['created_at'] as String? ?? '',
      updatedAt: json['updated_at'] as String? ?? '',
    );

Map<String, dynamic> _$$ReviewDataImplToJson(_$ReviewDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'user_name': instance.userName,
      'product_id': instance.productId,
      'rating': instance.rating,
      'comment': instance.comment,
      'pros': instance.pros,
      'cons': instance.cons,
      'image': instance.image,
      'media': instance.media,
      'likes_count': instance.likesCount,
      'dislikes_count': instance.dislikesCount,
      'user_has_liked': instance.userHasLiked,
      'user_has_disliked': instance.userHasDisliked,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };

_$LinksImpl _$$LinksImplFromJson(Map<String, dynamic> json) => _$LinksImpl(
      first: json['first'] as String? ?? '',
      last: json['last'] as String? ?? '',
      prev: json['prev'] as String? ?? '',
      next: json['next'] as String? ?? '',
    );

Map<String, dynamic> _$$LinksImplToJson(_$LinksImpl instance) =>
    <String, dynamic>{
      'first': instance.first,
      'last': instance.last,
      'prev': instance.prev,
      'next': instance.next,
    };

_$MetaImpl _$$MetaImplFromJson(Map<String, dynamic> json) => _$MetaImpl(
      currentPage: json['current_page'] as int? ?? 0,
      from: json['from'] as int? ?? 0,
      lastPage: json['last_page'] as int? ?? 0,
      links: (json['links'] as List<dynamic>?)
              ?.map((e) => LinksData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <LinksData>[],
      path: json['path'] as String? ?? '',
      perPage: json['per_page'] as int? ?? 0,
      to: json['to'] as int? ?? 0,
      total: json['total'] as int? ?? 0,
    );

Map<String, dynamic> _$$MetaImplToJson(_$MetaImpl instance) =>
    <String, dynamic>{
      'current_page': instance.currentPage,
      'from': instance.from,
      'last_page': instance.lastPage,
      'links': instance.links,
      'path': instance.path,
      'per_page': instance.perPage,
      'to': instance.to,
      'total': instance.total,
    };

_$LinksDataImpl _$$LinksDataImplFromJson(Map<String, dynamic> json) =>
    _$LinksDataImpl(
      url: json['url'] as String? ?? '',
      label: json['label'] as String? ?? '',
      active: json['active'] as bool? ?? false,
    );

Map<String, dynamic> _$$LinksDataImplToJson(_$LinksDataImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'label': instance.label,
      'active': instance.active,
    };
