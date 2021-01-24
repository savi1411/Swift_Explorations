//
//  ViewController.swift
//  PhotoFrame
//
//  Created by Carlos Alberto Savi on 21/01/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var stkBorda: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor.systemTeal
        
        stkBorda.layer.borderWidth = 8
        stkBorda.layer.borderColor = UIColor.brown.cgColor
        
    }


}

