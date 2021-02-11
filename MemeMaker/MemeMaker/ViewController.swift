//
//  ViewController.swift
//  MemeMaker
//
//  Created by Carlos Alberto Savi on 10/02/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var topSegmentedControl: UISegmentedControl!
    @IBOutlet weak var bottomSegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var topCaptionLabel: UILabel!
    @IBOutlet weak var bottomCaptionLabel: UILabel!

    @IBAction func segmentedControlChanged(_ sender: Any) {
        updateCaptions()
    }
    @IBAction func dragTopLabel(_ sender: UIPanGestureRecognizer) {
        if sender.state == .changed {
            topCaptionLabel.center = sender.location(in: view)
        }
    }
    @IBAction func dragBottomLabel(_ sender: UIPanGestureRecognizer) {
        if sender.state == .changed {
            bottomCaptionLabel.center = sender.location(in: view)
        }
    }
    
    
    let topChoices = [
        CaptionOption(emoji: "🕶", caption: "Sabe o que acho legal de fazer quando estou entendiado?"),
        CaptionOption(emoji: "💥", caption: "Sabe o que me tira do sério?"),
        CaptionOption(emoji: "💕", caption: "Sabe o que eu adoro?"),
    ]
    
    let bottomChoices = [
        CaptionOption(emoji: "🐱", caption: "Gatos de sapato"),
        CaptionOption(emoji: "🐕", caption: "Cachorro de gorro"),
        CaptionOption(emoji: "🐒", caption: "Macacos em buracos"),
    ]

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Configura segmento superior
        topSegmentedControl.removeAllSegments()
        for choice in topChoices {
            topSegmentedControl.insertSegment(withTitle: choice.emoji, at: topChoices.count, animated: false)
        }
        topSegmentedControl.selectedSegmentIndex = 0
        
        // Confira segmento inferior
        bottomSegmentedControl.removeAllSegments()
        for choice in bottomChoices {
            bottomSegmentedControl.insertSegment(withTitle: choice.emoji, at: bottomChoices.count, animated: false)
        }
        bottomSegmentedControl.selectedSegmentIndex = 0
        
        // Atualiza frases na UI
        updateCaptions()
    }
    
    func updateCaptions() {
        let topIndex = topSegmentedControl.selectedSegmentIndex
        topCaptionLabel.text = topChoices[topIndex].caption
        
        let bottomIndex = bottomSegmentedControl.selectedSegmentIndex
        bottomCaptionLabel.text = bottomChoices[bottomIndex].caption
        
    }

}

