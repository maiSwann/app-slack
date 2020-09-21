//
//  Message.swift
//  app-slack
//
//  Created by Maïlys Perez on 15/08/2020.
//  Copyright © 2020 Maïlys Perez. All rights reserved.
//

import Foundation

struct Message {
    public private(set) var message: String!
    public private(set) var userName: String!
    public private(set) var channelId: String!
    public private(set) var userAvatar: String!
    public private(set) var userAvatarColor: String!
    public private(set) var id: String!
    public private(set) var timeStamp: String!
}
