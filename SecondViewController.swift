//
//  SecondViewController.swift
//  slotMachine3
//
//  Created by Ahamed Abbas on 10/7/17.
//  Copyright © 2017 Ahamed Abbas. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController
{

    @IBOutlet weak var slot1Label: UILabel!
    @IBOutlet weak var slot2Label: UILabel!
    @IBOutlet weak var slot3Label: UILabel!
    @IBOutlet weak var slot4Label: UILabel!
    @IBOutlet weak var slot5Label: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    
    var scorePoint = 100;
    var history = "";
    
    override func viewDidLoad()
    {
        scoreLabel.text = "\(getScore())";
        
    }
    
    @IBAction func spin(_ sender: UIButton)
    {
        if(scorePoint >= 2)
        {
            scorePoint = getScore() - 2;
            print("current score: " + "\(scorePoint)");
            scoreLabel.text = "\(scorePoint)";
            
            let Digit: digit2 = digit2();
            Digit.spinDigit();
            var valueArray = Digit.returnValueArray();
            var colorArray = Digit.returnColorArray();
            
            let randomValue1 = valueArray[0];
            let colorForRandomValue1 = colorArray[0];
            slot1Label.textColor = getColor(color: colorForRandomValue1)
            slot1Label.text = "\(randomValue1)";
            
            let randomValue2 = valueArray[1];
            let colorForRandomValue2 = colorArray[1];
            slot2Label.textColor = getColor(color: colorForRandomValue2)
            slot2Label.text = "\(randomValue2)";
            
            let randomValue3 = valueArray[2];
            let colorForRandomValue3 = colorArray[2];
            slot3Label.textColor = getColor(color: colorForRandomValue3)
            slot3Label.text = "\(randomValue3)";
            
            let randomValue4 = valueArray[3];
            let colorForRandomValue4 = colorArray[3];
            slot4Label.textColor = getColor(color: colorForRandomValue4);
            slot4Label.text = "\(randomValue4)";
            
            let randomValue5 = valueArray[4];
            let colorForRandomValue5 = colorArray[4];
            slot5Label.textColor = getColor(color: colorForRandomValue5)
            slot5Label.text = "\(randomValue5)";
            
            history += "{" + "\(randomValue1)" + "-" + "\(colorForRandomValue1)" + "," + "\(randomValue2)" + "-" + "\(colorForRandomValue2)" + "," + "\(randomValue3)" + "-" + "\(colorForRandomValue3)" + "-" + "\(randomValue4)" + "-" + "\(colorForRandomValue4)" + "," + "\(randomValue5)" + "-" + "\(colorForRandomValue5)" + "}" + "\n";
            
            slotScoring(randomValue1: randomValue1, randomValue2: randomValue2, randomValue3: randomValue3, randomValue4: randomValue4, randomValue5: randomValue5, colorForRandomValue1: colorForRandomValue1, colorForRandomValue2: colorForRandomValue2, colorForRandomValue3: colorForRandomValue3, colorForRandomValue4: colorForRandomValue4, colorForRandomValue5: colorForRandomValue5);
        }
    }
    
    func getColor(color: String) -> UIColor
    {
        
        if(color == "purple")
        {
            return UIColor.purple
        }
        else if(color == "green")
        {
            return UIColor.green;
        }
        else if(color == "red")
        {
            return UIColor.red;
        }
        else if(color == "blue")
        {
            return UIColor.blue;
        }
        else
        {
            return UIColor.yellow;
        }
    }
    
    func slotScoring(randomValue1: Int, randomValue2: Int, randomValue3: Int, randomValue4: Int, randomValue5: Int, colorForRandomValue1: String, colorForRandomValue2: String, colorForRandomValue3: String, colorForRandomValue4: String, colorForRandomValue5: String)
    {
        //same color but different digits
        if(((colorForRandomValue1 == colorForRandomValue2) && (colorForRandomValue1 == colorForRandomValue3) && (colorForRandomValue1 == colorForRandomValue4) && (colorForRandomValue1 == colorForRandomValue5) && (colorForRandomValue2 == colorForRandomValue3) && (colorForRandomValue2 == colorForRandomValue4) && (colorForRandomValue2 == colorForRandomValue5) && (colorForRandomValue3 == colorForRandomValue4) && (colorForRandomValue3 == colorForRandomValue5) && (colorForRandomValue4 == colorForRandomValue5)) && !((randomValue1 == randomValue2) && (randomValue1 == randomValue3) && (randomValue1 == randomValue4) && (randomValue1 == randomValue5) && (randomValue2 == randomValue3) && (randomValue2 == randomValue4) && (randomValue2 == randomValue5) && (randomValue3 == randomValue4) && (randomValue3 == randomValue5) && (randomValue4 == randomValue5)))
        {
            scorePoint = getScore() + 125;
            print("scored extra 125: " + "\(scorePoint)");
            scoreLabel.text = "\(scorePoint)";
        }
        
        //same digits but different color
        if(!((colorForRandomValue1 == colorForRandomValue2) && (colorForRandomValue1 == colorForRandomValue3) && (colorForRandomValue1 == colorForRandomValue4) && (colorForRandomValue1 == colorForRandomValue5) && (colorForRandomValue2 == colorForRandomValue3) && (colorForRandomValue2 == colorForRandomValue4) && (colorForRandomValue2 == colorForRandomValue5) && (colorForRandomValue3 == colorForRandomValue4) && (colorForRandomValue3 == colorForRandomValue5) && (colorForRandomValue4 == colorForRandomValue5)) && ((randomValue1 == randomValue2) && (randomValue1 == randomValue3) && (randomValue1 == randomValue4) && (randomValue1 == randomValue5) && (randomValue2 == randomValue3) && (randomValue2 == randomValue4) && (randomValue2 == randomValue5) && (randomValue3 == randomValue4) && (randomValue3 == randomValue5) && (randomValue4 == randomValue5)))
        {
            scorePoint = getScore() + 250;
            print("scored extra 250: " + "\(scorePoint)");
            scoreLabel.text = "\(scorePoint)";
            
        }
        //same digits and color
        if(((colorForRandomValue1 == colorForRandomValue2) && (colorForRandomValue1 == colorForRandomValue3) && (colorForRandomValue1 == colorForRandomValue4) && (colorForRandomValue1 == colorForRandomValue5) && (colorForRandomValue2 == colorForRandomValue3) && (colorForRandomValue2 == colorForRandomValue4) && (colorForRandomValue2 == colorForRandomValue5) && (colorForRandomValue3 == colorForRandomValue4) && (colorForRandomValue3 == colorForRandomValue5) && (colorForRandomValue4 == colorForRandomValue5)) && ((randomValue1 == randomValue2) && (randomValue1 == randomValue3) && (randomValue1 == randomValue4) && (randomValue1 == randomValue5) && (randomValue2 == randomValue3) && (randomValue2 == randomValue4) && (randomValue2 == randomValue5) && (randomValue3 == randomValue4) && (randomValue3 == randomValue5) && (randomValue4 == randomValue5)))
        {
            scorePoint = getScore() + 500;
            print("scored extra 500: " + "\(scorePoint)");
            scoreLabel.text = "\(scorePoint)";
            
        }
        
    }
    
    @IBAction func resetGame(_ sender: UIButton)
    {
        slot1Label.text = "";
        slot2Label.text = "";
        slot3Label.text = "";
        slot4Label.text = "";
        slot5Label.text = "";
        scorePoint = 100;
        scoreLabel.text = "\(getScore())";
        history = "";
    }
    
    func getScore() -> Int
    {
        return scorePoint;
    }
    
    @IBAction func historyView(_ sender: UIButton)
    {
        performSegue(withIdentifier: "historyForSecondViewController", sender: self);
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        let seguedViewForSecond: segueViewForSecondViewController = segue.destination as! segueViewForSecondViewController;
        
        seguedViewForSecond.receivedString = history;
    }
    
    @IBAction func prepareForUnwindTo2(Segue: UIStoryboardSegue)
    {
        
    }
}

