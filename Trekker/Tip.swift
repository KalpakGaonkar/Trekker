//
//  Tip.swift
//  Trekker
//
//  Created by Kalpak Gaonkar on 1/4/22.
//

import Foundation

struct Tip: Decodable{
    let text: String
    let children: [Tip]?
}
