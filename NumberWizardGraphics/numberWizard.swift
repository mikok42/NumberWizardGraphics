
import Foundation

class NumberWizard {
    private var min = 0
    
    private var max = 0
    
    var wizGuess = 0
    
     func changeMin(newMin: Int) {
        min = newMin
    }
    
     func changeMax(newMax: Int) {
        max = newMax
    }
    
    init(min_: Int, max_: Int) {
        min = min_
        max = max_
        
        print("""
                welcome to number wizard, think of a number between \(min) and \(max)
                and i will guess it
            """)
    }
    
     func nextGuess() -> Int{
        wizGuess = Int.random(in: min...max)
        return wizGuess
    }
    
    func printGuess() {
        print("is your number \(nextGuess()) ?")
        print("type yes or no")
        
    }
    
    func processAnswer(answer: String) {
        if answer == "bigger"{
                changeMin(newMin: wizGuess)
            }
        else if answer == "smaller" {
            changeMax(newMax: wizGuess)
            }
        else {
            print("i didn't catch that")
        }
    }
    
}
