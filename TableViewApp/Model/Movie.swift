//
//  Movie.swift
//  TableViewApp
//
//  Created by maris.rozenstoks on 30/10/2023.
//

import Foundation

struct Movie {
    
    let movieTitle: String
    let imageName: String
    let movieGenre: String
    let releaseYear: Int
    let description: String
    let movieTrailerUrl: URL?
    
    
    static func createMovie() -> [Movie] {
        var Movies: [Movie] = []
        
        let movieTitles = DataManager.shared.movieTitle
        let imageNames = DataManager.shared.imageName
        let movieGenres = DataManager.shared.movieGenre
        let releaseYears = DataManager.shared.releaseYear
        let descriptions = DataManager.shared.description
        let movieTrailerUrls = DataManager.shared.movieTrailerUrl
        
        for i in 0..<movieTitles.count {
            let Movie = Movie(movieTitle: movieTitles[i], imageName: imageNames[i], movieGenre: movieGenres[i], releaseYear: releaseYears[i], description: descriptions[i], movieTrailerUrl: URL(string: movieTrailerUrls[i]))
            Movies.append(Movie)
        }
        
        return Movies
    }
    
}


