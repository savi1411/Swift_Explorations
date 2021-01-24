//
//  SecondViewController.swift
//  SwiftLab
//
//  Created by Carlos Alberto Savi on 18/01/21.
//

import UIKit

class SecondViewController: UIViewController {
    
    // Variáveis que irão receber os dados da 1ª tela
    var resultadoIMC: String?
    var nomeAssetRecebido: String?

    @IBOutlet weak var lblFaixaPeso: UILabel!
    @IBOutlet weak var imgSilhueta: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        lblFaixaPeso.text = resultadoIMC
        imgSilhueta.image = UIImage(named: nomeAssetRecebido!)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
