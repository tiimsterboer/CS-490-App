//
//  TVShow.swift
//  CS 490 APP
//
//  Created by Tim Beemsterboer on 2/5/18.
//  Copyright © 2018 Tim Beemsterboer. All rights reserved.
//

import Foundation

struct TVShow:Decodable {
    let id: Int
    let name: String
    let type: String
    let language: String
    let summary: String
}
