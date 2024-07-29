import 'package:freezed_annotation/freezed_annotation.dart';

part 'quotes_response.freezed.dart';
part 'quotes_response.g.dart';

@freezed
class QuotesResponse with _$QuotesResponse {
  const factory QuotesResponse({
    required String? sId,
    required String? content,
    required String? author,
    required List<String>? tags,
    required String? authorSlug,
    required int? length,
    required String? dateAdded,
    required String? dateModifie,
  }) = _QuotesResponse;

  factory QuotesResponse.fromJson(Map<String, dynamic> json) =>
      _$QuotesResponseFromJson(json);
}
