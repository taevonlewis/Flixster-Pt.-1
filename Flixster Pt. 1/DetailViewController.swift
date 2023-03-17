//
//  DetailViewController.swift
//  Flixster Pt. 1
//
//  Created by TaeVon Lewis on 3/2/23.
//

import UIKit
import Nuke

class DetailViewController: UIViewController {
    @IBOutlet weak var backdropImage: UIImageView!
    @IBOutlet weak var movieTitle: UILabel!
    @IBOutlet weak var voteAverage: UILabel!
    @IBOutlet weak var votes: UILabel!
    @IBOutlet weak var popularity: UILabel!
    @IBOutlet weak var overview: UILabel!
    
    var movie: Movie!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        Nuke.loadImage(with: movie.backdropImage, into: backdropImage)
        movieTitle.text = movie.title
        voteAverage.text = String(movie.voteAverage)+" Vote Average"
        votes.text = String(movie.voteCount)+" Votes"
        popularity.text = String(movie.popularity)+" Popularity"
        overview.text = movie.description
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
