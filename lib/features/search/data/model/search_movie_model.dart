class SearchMovieModel {
  int? id;
  String? title;
  String? posterPath;
  String? releaseDate;
  String? overview;

  SearchMovieModel(
      {this.id, this.title, this.posterPath, this.releaseDate, this.overview});

  factory SearchMovieModel.fromJson(Map<String, dynamic> json) {
    return SearchMovieModel(
        id: json['id'],
        title: json['title'],
        posterPath: json['poster_path'],
        releaseDate: json['release_date'],
        overview: json['overview']);
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'poster_path': posterPath,
        'release_date': releaseDate,
        'overview': overview
      };
}
