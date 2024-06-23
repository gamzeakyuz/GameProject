//
//  SonucViewController.swift
//  GameProject
//
//  Created by Gamze Akyüz on 25.03.2024.
//

import UIKit

class SonucViewController: UIViewController {

    @IBOutlet weak var skor: UILabel!
    @IBOutlet weak var yuksekSkor: UILabel!

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
        let d = UserDefaults.standard
        
        let anlikSkor = d.integer(forKey: "anlikSkor")
        
        let enyuksekSkor = d.integer(forKey: "enyuksekSkor")
        
        skor.text  = "\(anlikSkor)"
        
        if anlikSkor > enyuksekSkor {
            
            d.set(anlikSkor, forKey: "enyuksekSkor")
            
            yuksekSkor.text = "\(anlikSkor)"
            
        }else{
           yuksekSkor.text = "\(enyuksekSkor)"
        }
        
    }

    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }

    
    @IBAction func tekrarOyna(_ sender: Any) {
        self.navigationController?.popToRootViewController(animated: true)
    }

}
