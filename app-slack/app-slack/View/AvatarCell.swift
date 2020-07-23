//
//  AvatarCell.swift
//  app-slack
//
//  Created by Maïlys Perez on 23/07/2020.
//  Copyright © 2020 Maïlys Perez. All rights reserved.
//

import UIKit

class AvatarCell: UICollectionViewCell {
    
    @IBOutlet weak var avatarImg: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupView()
    }
    
    func setupView() {
        self.layer.backgroundColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        self.layer.cornerRadius = 10
        self.clipsToBounds = true
    }
}
