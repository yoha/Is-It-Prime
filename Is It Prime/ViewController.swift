//
//  ViewController.swift
//  Is It Prime
//
//  Created by Yohannes Wijaya on 7/3/15.
//  Copyright © 2015 Yohannes Wijaya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Properties
    
    @IBOutlet weak var userInputTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    @IBAction func findOutButton(sender: UIButton) {
        if let userEntryInt = Int(userInputTextField.text!) {
            var isPrime = true
            if userEntryInt == 1 || userEntryInt == 0 { isPrime = false }
            if userEntryInt != 2 && userEntryInt != 1 {
                for var divisor = 2; divisor < userEntryInt; divisor++ {
                    if userEntryInt % divisor == 0 { isPrime = false }
                }
            }
            if isPrime { resultLabel.text = "\(userEntryInt) is a prime" }
            else { resultLabel.text = "\(userEntryInt) is not a prime" }
        }
        else {
            resultLabel.text = "Invalid entry detected"
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

