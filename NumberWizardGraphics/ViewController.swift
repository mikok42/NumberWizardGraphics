//
//  ViewController.swift
//  NumberWizardGraphics
//
//  Created by Mikołaj Linczewski on 04/04/2021.
//

import UIKit

class ViewController: UIViewController {

    var wizard = NumberWizard.init(min_: 0, max_: 1000)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        winLabel.alpha = 0
        guessField.text = String(wizard.nextGuess())
    }


    @IBAction func lowerButton(_ sender: UIButton) {
        wizard.changeMax(newMax: wizard.wizGuess)
        guessField.text = String(wizard.nextGuess())
    }
    
    @IBAction func higherButton(_ sender: Any) {
        wizard.changeMin(newMin: wizard.wizGuess)
        guessField.text = String(wizard.nextGuess())
    }
    @IBAction func correctButton(_ sender: UIButton) {
        isYourNLabel.alpha = 0
        guessField.alpha = 0
        winLabel.alpha = 1
        
        correctButtonOutlet.alpha = 0
        lowerButtonOutlet.alpha = 0
        higherButtonOutlet.alpha = 0
    }
    
    @IBOutlet weak var correctButtonOutlet: UIButton!
    @IBOutlet weak var lowerButtonOutlet: UIButton!
    @IBOutlet weak var higherButtonOutlet: UIButton!
    
    @IBOutlet weak var winLabel: UILabel!
    @IBOutlet weak var guessField: UILabel!
    @IBOutlet weak var isYourNLabel: UILabel!
    
}

