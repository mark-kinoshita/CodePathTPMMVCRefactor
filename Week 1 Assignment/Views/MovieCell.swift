//
//  MovieCell.swift
//  Week 1 Assignment
//
//  Created by Mark Kinoshita on 2/3/18.
//  Copyright © 2018 Mark Kinoshita. All rights reserved.
//

import UIKit

class MovieCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var overviewLabel: UILabel!
    
    @IBOutlet weak var posterImageView: UIImageView!
     var movie: Movie? {
    didSet {
    titleLabel.text = movie?.title
    overviewLabel.text = movie?.overview
    posterImageView.af_setImage(withURL: (movie?.posterUrl)!)
    }
}

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
