//
//  Tip.swift
//  TrekrMultiPlatform
//
//  Created by Yeseo Kim on 2022-01-19.
//

import Foundation

struct Tip: Decodable {    
    let text: String
    let children: [Tip]?
}
