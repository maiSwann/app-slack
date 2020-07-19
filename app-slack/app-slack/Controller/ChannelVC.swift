//
//  ChannelVC.swift
//  app-slack
//
//  Created by Maïlys Perez on 19/07/2020.
//  Copyright © 2020 Maïlys Perez. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.revealViewController()?.rearViewRevealWidth = self.view.frame.size.width - 60
    }

}
