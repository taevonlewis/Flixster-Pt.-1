//
//  MovieCell.swift
//  Flixster Pt. 1
//
//  Created by TaeVon Lewis on 3/2/23.
//

import UIKit
import Nuke

class MovieCell: UITableViewCell {
    @IBOutlet weak var posterImage: UIImageView!
    @IBOutlet weak var movieTitle: UILabel!
    @IBOutlet weak var movieDesc: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

    func configure(with movie: Movie) {
        movieTitle.text = movie.title
        movieDesc.text = movie.description
        
        Nuke.loadImage(with: movie.posterImage, into: posterImage)
    }
}
