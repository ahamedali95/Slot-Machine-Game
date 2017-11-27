//
//  segueViewForSecondViewController.swift
//  slotMachine3
//
//  Created by Ahamed Abbas on 10/7/17.
//  Copyright © 2017 Ahamed Abbas. All rights reserved.
//

import UIKit

class segueViewForSecondViewController: UIViewController
{
    @IBOutlet weak var historyLabel: UITextView!
    var receivedString = "";
    override func viewDidLoad()
    {
        super.viewDidLoad()
        historyLabel.text = receivedString;
    }

}
