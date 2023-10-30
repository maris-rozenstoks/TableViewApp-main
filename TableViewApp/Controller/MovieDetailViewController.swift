//
//  MovieDetailViewController.swift
//  TableViewApp
//
//  Created by maris.rozenstoks on 30/10/2023.
//

import UIKit

class MovieDetailViewController: UIViewController {

    @IBOutlet weak var movieImageView: UIImageView!
    
    @IBOutlet weak var movieLabel: UILabel!
    
    var movie: Movie?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let mainMovie = movie {
            movieImageView.image = UIImage(named: mainMovie.imageName)
            movieLabel.text = mainMovie.movieTitle + "\n\(mainMovie.movieTitle)"
        }
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
