//
//  MovieDetailViewController.swift
//  TableViewApp
//
//  Created by maris.rozenstoks on 30/10/2023.
//

import UIKit

class MovieDetailViewController: UIViewController {
    
    
    @IBOutlet weak var imageMovie: UIImageView!
    @IBOutlet weak var titleMovie: UILabel!
    @IBOutlet weak var yearMovie: UILabel!
    @IBOutlet weak var genreMovie: UILabel!
    @IBOutlet weak var descriptionMovie: UILabel!
    
    @IBOutlet weak var trailerMovie: UIButton!
    
    var movie: Movie?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let mainMovie = movie {
                   imageMovie.image = UIImage(named: mainMovie.imageName)
                   titleMovie.text = mainMovie.movieTitle
                   yearMovie.text = "\(mainMovie.releaseYear)"
                   genreMovie.text = mainMovie.movieGenre
                   descriptionMovie.text = mainMovie.description
               }
           }
           
           @IBAction func goYouTube(_ sender: UIButton) {
               guard let trailerUrl = movie?.movieTrailerUrl else {
                   return
               }
               UIApplication.shared.open(trailerUrl, options: [:], completionHandler: nil)
           }
        //@IBAction func goYoutube(_ sender: UIButton) {
        
        
        
        // Do any additional setup after loading the view.
        
        
        /*
         // MARK: - Navigation
         
         // In a storyboard-based application, you will often want to do a little preparation before navigation
         override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         // Get the new view controller using segue.destination.
         // Pass the selected object to the new view controller.
         }
         */

}
