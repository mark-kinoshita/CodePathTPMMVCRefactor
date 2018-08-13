//
//  Movie.swift
//  Week 1 Assignment
//
//  Created by Mark Kinoshita on 3/4/18.
//  Copyright © 2018 Mark Kinoshita. All rights reserved.
//

import Foundation
class Movie {
    var title: String
    var posterUrl: URL?
    var overview: String
    var releaseDate: String
    var backdropPath: URL?
    
    init(dictionary: [String: Any]) {
        // Set the rest of the properties
        title = dictionary["title"] as? String ?? "No title"
        overview = dictionary["overview"] as? String ?? "No overview"
        releaseDate = dictionary["release_date"] as? String ?? "No release date"
        let posterPath = dictionary["poster_path"] as? String
        if let posterPath = posterPath {
            let baseUrlString = "https://image.tmdb.org/t/p/w500"
            let fullPosterPath = baseUrlString + posterPath
            let posterUrl = URL(string: fullPosterPath)
            if posterUrl != nil {
                self.posterUrl = posterUrl
            }
        }
        let backdropPath = dictionary["backdrop_path"] as? String
        if let backdropPath = backdropPath {
            let baseUrlString = "https://image.tmdb.org/t/p/w500"
            let fullBackdropUrl = baseUrlString + backdropPath
            let backdropUrl = URL(string: fullBackdropUrl)
            if backdropUrl != nil {
                self.backdropPath = backdropUrl
            }
        }
    }
    class func movies(dictionaries: [[String: Any]]) -> [Movie] {
        var movies: [Movie] = []
        for dictionary in dictionaries {
            let movie = Movie(dictionary: dictionary)
            movies.append(movie)
        }
        
        return movies
    }
}
