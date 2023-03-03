//
//  MovieViewController.swift
//  Flixster Pt. 1
//
//  Created by TizzyMatic on 3/2/23.
//

import UIKit

class MovieViewController: UIViewController {
    var movies: [Movie] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        movies = Movie.mockMovies
        print(movies)
    }
}
