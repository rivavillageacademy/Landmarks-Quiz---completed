//
//  ViewController.swift
//  Landmarks Quiz
//
//  Created by Muhamed Alkhatib on 18/08/2020.
//

import UIKit

class ViewController: UIViewController {
    
    var quiz = Quiz()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        loadQuestion()
        
        
    }

    func loadQuestion(){
        let cQuestion=quiz.currentQuestion
        let choices=quiz.choices[cQuestion].shuffled()
        let cImage=quiz.images[cQuestion]
        let score=quiz.score
        
        answer1.setTitle(choices[0], for: UIControl.State.normal)
        answer2.setTitle(choices[1], for: UIControl.State.normal)
        answer3.setTitle(choices[2], for: UIControl.State.normal)
        answer4.setTitle(choices[3], for: UIControl.State.normal)
        landmarkImageView.image=cImage
        scoreLabel.text=String("Score \(score)")
        
    }
    
    
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var landmarkImageView: UIImageView!
   
    @IBOutlet weak var answer1: UIButton!
    @IBOutlet weak var answer2: UIButton!
    @IBOutlet weak var answer3: UIButton!
    @IBOutlet weak var answer4: UIButton!
    @IBOutlet weak var answerResultImageView: UIImageView!
    
    
    @IBAction func answerSelected(_ sender: UIButton) {
        print("button pressed")
        if quiz.checkAnswer(answer: sender.currentTitle!) {
            answerResultImageView.image=#imageLiteral(resourceName: "true")
        } else
        {
            answerResultImageView.image=#imageLiteral(resourceName: "false")
        }
        
        quiz.nextQuestion()
        loadQuestion()
 
    }

    
}

