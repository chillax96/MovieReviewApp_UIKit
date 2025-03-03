//
//  AddMovieViewController.swift
//  MoviewReviewApp
//
//  Created by 김규철 on 3/4/25.
//


import UIKit

class AddMovieViewController: UIViewController {

    @IBOutlet weak var titleField: UITextField!
    @IBOutlet weak var directorField: UITextField!
    @IBOutlet weak var releaseDateField: UITextField!
    @IBOutlet weak var genreField: UITextField!
    @IBOutlet weak var reviewField: UITextField!

    var movieAddedHandler: ((Movie) -> Void)?

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func saveMovie(_ sender: UIButton) {
        guard let title = titleField.text, !title.isEmpty,
              let director = directorField.text, !director.isEmpty,
              let releaseDate = releaseDateField.text, !releaseDate.isEmpty,
              let genre = genreField.text, !genre.isEmpty,
              let review = reviewField.text, !review.isEmpty else { return }

        let movie = Movie(id: UUID(), title: title, director: director, releaseDate: releaseDate, genre: genre, review: review)
        movieAddedHandler?(movie)
        navigationController?.popViewController(animated: true)
    }
}