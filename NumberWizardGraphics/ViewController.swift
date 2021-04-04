//
//  ViewController.swift
//  NumberWizardGraphics
//
//  Created by Mikołaj Linczewski on 04/04/2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var labelCollection: [UILabel]!
    @IBOutlet var buttonOutlet: [UIButton]!
      
    @IBOutlet weak var winLabel: UILabel!
    @IBOutlet weak var guessField: UILabel!
    
    func makeDissappear(){
        labelCollection.forEach{element in
            element.alpha = 0
        }
        buttonOutlet.forEach{element in
            element.alpha = 0
        }
    }
    
    var wizard = NumberWizard(min_: 0, max_: 1000)
    
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
        winLabel.alpha = 1
        
        makeDissappear()
    }
    
}

