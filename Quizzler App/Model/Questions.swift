//
//  Questions.swift
//  Quizzler-iOS13
//
//  Created by hari-pt5664 on 06/08/22.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import Foundation

struct Questions {
    let text : String
    let answer : String
    
    init(q: String , a: String) {
        text = q
        answer = a
    }
}
