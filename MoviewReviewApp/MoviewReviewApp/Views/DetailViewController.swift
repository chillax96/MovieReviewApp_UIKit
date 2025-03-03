import UIKit

class DetailViewController: UIViewController {
    var movie: Movie!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let movie = movie else {
            print("Error: movie is nil")
            return
        }
        
        title = movie.title
        view.backgroundColor = .white
        
        setupUI(movie)
        
    }
    
    func setupUI(_ movie: Movie) {
        let descriptionLabel = UILabel()
        descriptionLabel.text = """
                🎬 제목: \(movie.title)
                🎥 감독: \(movie.director)
                📅 개봉일: \(movie.releaseDate)
                🎭 장르: \(movie.genre)
                """
        descriptionLabel.numberOfLines = 0
        descriptionLabel.textAlignment = .center
        
        descriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(descriptionLabel)
        
        NSLayoutConstraint.activate([
            descriptionLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            descriptionLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            descriptionLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            descriptionLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        ])
    }
}
