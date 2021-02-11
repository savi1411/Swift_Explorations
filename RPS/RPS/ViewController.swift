//
//  ViewController.swift
//  RPS
//
//  Created by Carlos Alberto Savi on 09/02/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var signLabel: UILabel!
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var rockButton: UIButton!
    @IBOutlet weak var paperButton: UIButton!
    @IBOutlet weak var scissorsButton: UIButton!
    @IBOutlet weak var playAgainButton: UIButton!
    
    @IBAction func rockChosen(_ sender: UIButton) {
        play(userSign: .rock)
    }
    
    @IBAction func paperChosen(_ sender: UIButton) {
        play(userSign: .paper)
    }
    
    @IBAction func scissorsChosen(_ sender: UIButton) {
        play(userSign: .scissors)
    }
    
    @IBAction func playAgain(_ sender: UIButton) {
        updateUI(state: .start)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI(state: .start)
    }
    
    func updateUI(state: GameState) {
        statusLabel.text = state.status
        
        switch state {
        case .start:
            view.backgroundColor = .gray
            signLabel.text = "🤖"
            playAgainButton.isHidden = true
            
            rockButton.isHidden = false
            paperButton.isHidden = false
            scissorsButton.isHidden = false
            
            rockButton.isEnabled = true
            paperButton.isEnabled = true
            scissorsButton.isEnabled = true
            
        case .win:
//            view.backgroundColor = .green
//            view.backgroundColor = UIColor(red: 0.6, green: 0.7, blue: 0.5, alpha: 1)
            let gold = UIColor(named: "#ffe700ff")
            view.backgroundColor = gold
            
        case .lose:
            view.backgroundColor = .red
        case .draw:
            view.backgroundColor = .orange
        }
    }
    
    func play(userSign: Sign) {
        let computerSign = randomSign()
        let gameState = userSign.gameState(against: computerSign)
        updateUI(state: gameState)
        
        signLabel.text = computerSign.emoji
        
        rockButton.isEnabled = false
        paperButton.isEnabled = false
        scissorsButton.isEnabled = false
        
        rockButton.isHidden = true
        paperButton.isHidden = true
        scissorsButton.isHidden = true
        
        switch userSign {
        case .rock:
            rockButton.isHidden = false
        case .paper:
            paperButton.isHidden = false
        case .scissors:
            scissorsButton.isHidden = false
        }
        
        playAgainButton.isHidden = false
              
    }


}

