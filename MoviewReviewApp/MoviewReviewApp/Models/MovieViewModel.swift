import Foundation

class MovieViewModel {
    static let shared = MovieViewModel()
    private(set) var movies: [Movie] = []
    
    private init() {
        loadMovies()
    }
    
    func addMovie(_ movie: Moive) {
        movies.append(movie)
        saveMovies()
    }
    
    private func loadMovies() {
        if let url = Bundle.main.url(forResource: "movies", withExtension: "json")
            let data = try? Data(contentsOf: url) {
            let decoder = JSONDecoder()
            if let decodedMovies = try? decoder.decode([Movie].self, from: data)
                self.movies = decodedMovies
        }
    }
    
}

private func saveMovies() {
    // 영화 데이터를 JSON으로 저장 (UserDefaults나 파일 시스템 활용 가능)
}
