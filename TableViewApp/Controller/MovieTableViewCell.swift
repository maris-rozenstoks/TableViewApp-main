//
//  MovieTableViewCell.swift
//  TableViewApp
//
//  Created by Arkadijs Makarenko on 27/10/2023.
//

import UIKit

class MovieTableViewCell: UITableViewCell {
    
    @IBOutlet weak var movieImageView: UIImageView!
    @IBOutlet weak var movieLabel: UILabel!
    @IBOutlet weak var yearLabel: UILabel!
    @IBOutlet weak var genreLabel: UILabel!
    
    func configure(with movie: Movie) {
        movieImageView.image = UIImage(named: movie.imageName)
        movieLabel.text = movie.movieTitle
        yearLabel.text = "\(movie.releaseYear)"
        genreLabel.text = movie.movieGenre
    }
}
