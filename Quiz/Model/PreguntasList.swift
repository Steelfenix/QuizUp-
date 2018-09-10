//
//  PreguntasList.swift
//  Quiz
//
//  Created by user144547 on 9/9/18.
//  Copyright © 2018 Jose Adrian. All rights reserved.
//

import Foundation

class PreguntasList {
    var list = [Pregunta]()
    
    init() {
        self.list.append(Pregunta(
            pregunta: "Creador de Linux",
            r1: "Linus Torvalds", r2: "Bill Gates", r3: "Steveo Jobs", r4: "Linux Man", answ: 1))
        
        self.list.append(Pregunta(
            pregunta: "En cuantos dias se escribio JavaScript",
            r1: "5", r2: "4", r3: "8", r4: "10", answ: 4))
        
        self.list.append(Pregunta(
            pregunta: "Creador de Microsoft",
            r1: "Linus Torvalds", r2: "Bill Gates", r3: "Steve Jobs", r4: "Linux Man", answ: 2))
        
        self.list.append(Pregunta(
            pregunta: "Lenguaje Standar de programacion en IOS",
            r1: "Java", r2: ".NET", r3: "Swift", r4: "Ruby", answ: 3))
        
        self.list.append(Pregunta(
            pregunta: "Cual es la diferencia entre un sope y una gordita",
            r1: "La gordita lleva frijoles", r2: "El sope lleva pollo",
            r3: "Donde va el gizo", r4: "El sope es flaco", answ: 3))
    }
}
