//
//  CreateAccountVC.swift
//  app-slack
//
//  Created by Maïlys Perez on 20/07/2020.
//  Copyright © 2020 Maïlys Perez. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func closePressed(_ sender: Any) {
        performSegue(withIdentifier: UNWIND, sender: nil)
    }
}
