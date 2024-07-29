class QuotesResponse {
  final String? sId;
  final String? content;
  final String? author;
  final List<String>? tags;
  final String? authorSlug;
  final int? length;
  final String? dateAdded;
  final String? dateModified;

  QuotesResponse(
      {this.sId,
      this.content,
      this.author,
      this.tags,
      this.authorSlug,
      this.length,
      this.dateAdded,
      this.dateModified});

  factory QuotesResponse.fromJson(Map<String, dynamic> json) {
    return QuotesResponse(
        sId: json['_id'],
        content: json['content'],
        author: json['author'],
        tags: json['tags'].cast<String>(),
        authorSlug: json['authorSlug'],
        length: json['length'],
        dateAdded: json['dateAdded'],
        dateModified: json['dateModified']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = sId;
    data['content'] = content;
    data['author'] = author;
    data['tags'] = tags;
    data['authorSlug'] = authorSlug;
    data['length'] = length;
    data['dateAdded'] = dateAdded;
    data['dateModified'] = dateModified;
    return data;
  }
}
