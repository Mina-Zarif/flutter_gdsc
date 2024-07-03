class DetailsMovieModel {
  final String title;
  final String overview;
  final String posterPath;
  final String backdropPath;
  final String releaseDate;
  final String originalLanguage;
  final String originalTitle;
  final double voteAverage;
  final int id;

  DetailsMovieModel({
    required this.title,
    required this.overview,
    required this.posterPath,
    required this.backdropPath,
    required this.releaseDate,
    required this.originalLanguage,
    required this.originalTitle,
    required this.voteAverage,
    required this.id,
  });

  factory DetailsMovieModel.fromJson(Map<String, dynamic> json) {
    return DetailsMovieModel(
      title: json['title'],
      overview: json['overview'],
      posterPath: json['poster_path'],
      backdropPath: json['backdrop_path'],
      releaseDate: json['release_date'],
      originalLanguage: json['original_language'],
      originalTitle: json['original_title'],
      voteAverage: json['vote_average'],
      id: json['id'],
    );
  }

  Map<String, dynamic> toJson() => {
        'title': title,
        'overview': overview,
        'poster_path': posterPath,
        'backdrop_path': backdropPath,
        'release_date': releaseDate,
        'original_language': originalLanguage,
        'original_title': originalTitle,
        'vote_average': voteAverage,
        'id': id,
      };
}
