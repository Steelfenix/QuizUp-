//
//  QuestionViewController.swift
//  Quiz
//
//  Created by Jose Adrian on 03/09/18.
//  Copyright © 2018 Jose Adrian. All rights reserved.
//

import UIKit

class QuestionViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var b1: UIButton!
    @IBOutlet weak var b2: UIButton!
    @IBOutlet weak var b3: UIButton!
    @IBOutlet weak var b4: UIButton!
    @IBOutlet weak var scoreLabel: UILabel!
    
    let listaPreguntas = PreguntasList()
    var pregunta: Pregunta = Pregunta(
        pregunta: "", r1: "", r2: "", r3: "", r4: "", answ: 0)
    var currentP: Int = 0
    var pressedAnsw: Int = 0
    var score: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nextQuestion()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        
    }
    
    @IBAction func buttonPressed(_ sender: AnyObject) {
        self.pressedAnsw = sender.tag
        
        checkAnsw()
        self.currentP += 1
        nextQuestion()
    }
    
    func checkAnsw() {
        if self.pressedAnsw == self.pregunta.answ {
            self.score += 200
            ProgressHUD.showSuccess("Correcto")
        } else {
            ProgressHUD.showError("Incorrecto")
        }
    }
    
    func nextQuestion() {
        if self.currentP <= 4 {
            self.pregunta = self.listaPreguntas.list[currentP]
            
            self.questionLabel.text = self.pregunta.pregunta
            self.b1.setTitle(self.pregunta.r1, for: .normal)
            self.b2.setTitle(self.pregunta.r2, for: .normal)
            self.b3.setTitle(self.pregunta.r3, for: .normal)
            self.b4.setTitle(self.pregunta.r4, for: .normal)
            
            updateUI()
        }
        else {
            performSegue(withIdentifier: "scoreSegue", sender: self)
        }
    }
    
    func updateUI() {
        self.scoreLabel.text = "Score: \(score)"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var vc = segue.destination as! FinalScoreViewController
        vc.score = self.score
    }

}
