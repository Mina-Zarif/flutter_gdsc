class HomeMoviesModel {
  final int? id;
  final String? backdropPath;
  final String? originalTitle;
  final String? title;
  final String? overview;
  final double? voteAverage;

  HomeMoviesModel({
    this.id,
    this.backdropPath,
    this.originalTitle,
    this.title,
    this.overview,
    this.voteAverage,
  });

  factory HomeMoviesModel.fromJson(Map<String, dynamic> json) {
    return HomeMoviesModel(
      id: json['id'],
      backdropPath: json['backdrop_path'],
      originalTitle: json['original_title'],
      title: json['title'],
      overview: json['overview'],
      voteAverage: json['vote_average'],
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'backdrop_path': backdropPath,
        'original_title': originalTitle,
        'title': title,
        'overview': overview,
        'vote_average': voteAverage,
      };
}
