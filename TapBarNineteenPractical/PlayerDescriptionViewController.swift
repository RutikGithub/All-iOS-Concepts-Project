//
//  PlayerDescriptionViewController.swift
//  TapBarNineteenPractical
//
//  Created by Mac on 01/05/23.
//

import UIKit

class PlayerDescriptionViewController: UIViewController {

    @IBOutlet weak var playerTextView: UITextView!
    
    var container:String?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        transferData()
        
        
    }
    
func transferData()
    {
        self.playerTextView.text = container
    }
    

}
