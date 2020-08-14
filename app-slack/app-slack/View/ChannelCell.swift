//
//  ChannelCell.swift
//  app-slack
//
//  Created by Maïlys Perez on 14/08/2020.
//  Copyright © 2020 Maïlys Perez. All rights reserved.
//

import UIKit

class ChannelCell: UITableViewCell {
    
    @IBOutlet weak var channelName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    // configure the view with the selected state
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        if selected {
            self.layer.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.196489726)
        } else {
            self.layer.backgroundColor = UIColor.clear.cgColor
        }
    }
    
    func configureCell(channel: Channel) {
        let title = channel.channelTitle ?? "" // ?? to set a default value
        
        channelName.text = "#\(title)"
    }
}
