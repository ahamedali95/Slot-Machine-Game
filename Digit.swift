//
//  Digit.swift
//  slotMachine3
//
//  Created by Ahamed Abbas on 10/7/17.
//  Copyright © 2017 Ahamed Abbas. All rights reserved.
//

import Foundation

class digit
{
    let colors = ["blue", "purple", "red", "green"];
    var valueArray = [Int]();
    var colorArray = [String]();
    
    func spinDigit()
    {
        let randomValue1 = pickDigit();
        valueArray.append(randomValue1);
        let color1 = pickColor();
        colorArray.append(color1);
        
        let randomValue2 = pickDigit();
        valueArray.append(randomValue2);
        let color2 = pickColor();
        colorArray.append(color2);

        let randomValue3 = pickDigit();
        valueArray.append(randomValue3);
        let color3 = pickColor();
        colorArray.append(color3);
        
    }
    
    func pickDigit() -> Int
    {
        let randNum = Int(arc4random()) % 10;
        return randNum;
    }
    
    func pickColor() -> String
    {
        let randomValue = Int(arc4random()) % 4;
        let generatedColor = colors[randomValue];
        return generatedColor;
    }
    
    func getDigit(num: Int) -> Int
    {
        return num;
    }
    
    func getColor(color: String) -> String
    {
        return color;
    }
    
    func returnValueArray() -> [Int]
    {
        return valueArray;
    }
    
    func returnColorArray() -> [String]
    {
        return colorArray;
    }
}
