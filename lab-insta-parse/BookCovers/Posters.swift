//
//  Posters.swift
//  MovieCo
//
//  Created by Tito-Maurice Fynn on 2/14/24.
//

import Foundation

struct PostersSearchResponse: Decodable {
    let results: [Posters]
    
}

struct Posters: Decodable {
    let poster_path: String
    let title: String
    let overview: String
    let vote_average: Double
    let popularity: Double
    let vote_count: Int
}


