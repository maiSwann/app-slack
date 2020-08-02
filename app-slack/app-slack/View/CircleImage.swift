//
//  CircleImage.swift
//  app-slack
//
//  Created by Maïlys Perez on 02/08/2020.
//  Copyright © 2020 Maïlys Perez. All rights reserved.
//

import UIKit

@IBDesignable
class CircleImage: UIImageView {
    
    override func awakeFromNib() {
        setupview()
    }
    
    func setupview() {
        self.layer.cornerRadius = self.frame.width / 2
        self.clipsToBounds = true
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        setupview()
    }
}
