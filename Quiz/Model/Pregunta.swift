//
//  Pregunta.swift
//  Quiz
//
//  Created by user144547 on 9/9/18.
//  Copyright © 2018 Jose Adrian. All rights reserved.
//

import Foundation

class Pregunta {
    
    let pregunta: String
    let r1: String
    let r2: String
    let r3: String
    let r4: String
    let answ: Int
    
    init(pregunta: String, r1: String, r2: String, r3: String, r4: String, answ: Int) {
        self.pregunta = pregunta
        self.r1 = r1
        self.r2 = r2
        self.r3 = r3
        self.r4 = r4
        self.answ = answ
    }
    
}
