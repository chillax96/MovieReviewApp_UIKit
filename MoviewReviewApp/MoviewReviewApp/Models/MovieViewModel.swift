import Foundation

class MovieViewModel {
    private var movies: [Movie] = []

    func getMovies() -> [Movie] {
        return movies
    }

    func addMovie(movie: Movie) {
        movies.append(movie)
    }
}
