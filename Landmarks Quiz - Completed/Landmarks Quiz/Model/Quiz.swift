//
//  Quiz.swift
//  Landmarks Quiz
//
//  Created by Muhamed Alkhatib on 23/08/2020.
//

import Foundation
import UIKit
struct Quiz {
    let images=[#imageLiteral(resourceName: "Indonesia 1"),#imageLiteral(resourceName: "Japan 1"),#imageLiteral(resourceName: "China1"),#imageLiteral(resourceName: "India 2"),#imageLiteral(resourceName: "Egypt 2"),#imageLiteral(resourceName: "France 1"),#imageLiteral(resourceName: "USA 2"),#imageLiteral(resourceName: "UAE 1"),#imageLiteral(resourceName: "India 1"),#imageLiteral(resourceName: "UK 1"),#imageLiteral(resourceName: "UAE 3"),#imageLiteral(resourceName: "USA 1"),#imageLiteral(resourceName: "Saudi 1"),#imageLiteral(resourceName: "UAE 2"),#imageLiteral(resourceName: "Egypt 1"),#imageLiteral(resourceName: "Jordan 1")]
    let choices =
        [["Indonesia","Japan","China","Korea"],
         ["Japan","USA","France","Jordan"],
         ["China","Japan","Indonesia","Korea"],
         ["India","Pakistan","USA","China"],
         ["Egypt","Jordan","Syria","Sudan"],
         ["France","UK","Italy","Brazil"],
         ["USA","UK","France","Italy"],
         ["UAE","Saudi Arabia","Kuwait","Bahrain"],
         ["India","Pakistan","Iran","Turkey"],
         ["UK","USA","Brazil","Korea"],
         ["UAE","Bahrain","Kuwait","USA"],
         ["USA","France","Italy","China"],
         ["Saudi Arabia","UAE","Bahrain","Oman"],
         ["UAE","Oman","Bahrain","Jordan"],
         ["Egypt","Morocco","Tunis","Sudan"],
         ["Jordan","Egypt","Morocco","Tunis"]
         
        ]
    
    var currentQuestion=0
    var score=0
    var gameIsActive=true
    
    mutating func checkAnswer (answer: String)->Bool{
        //Check answer and return true if answer is correct and false if answer is wrong
        if gameIsActive {
            if answer==choices[currentQuestion][0] {
                print("correct")
                score+=1
                return true
            } else
            {
                print("wrong")
                return false
            }
        }
        return false
        
    }
    
    
    mutating func nextQuestion(){
        //Display next question
        if currentQuestion>=images.count-1 {
            print("game is over")
            gameIsActive=false
            
        } else
        {
            currentQuestion+=1
        }
        
    }
}





