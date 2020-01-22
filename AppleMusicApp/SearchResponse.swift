//
//  SearchResponse.swift
//  AppleMusicApp
//
//  Created by  Джон Костанов on 21/01/2020.
//  Copyright © 2020 John Kostanov. All rights reserved.
//

import Foundation

struct SearchResponse: Decodable {
    var resultCount: Int
    var results: [Track]
}

struct Track: Decodable {
    var trackName: String
    var collectionName: String?
    var artistName: String
    var artworkUrl100: String?
    var previewUrl: String?
}
