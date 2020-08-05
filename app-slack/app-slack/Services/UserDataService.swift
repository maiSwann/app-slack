//
//  UserDataService.swift
//  app-slack
//
//  Created by Maïlys Perez on 22/07/2020.
//  Copyright © 2020 Maïlys Perez. All rights reserved.
//

import Foundation

class UserDataService {
    static let instance = UserDataService()
    
    public private(set) var id = ""
    public private(set) var avatarColor = ""
    public private(set) var avatarName = ""
    public private(set) var email = ""
    public private(set) var name = ""
    
    func setUserData(id: String, avatarColor: String, avatarName: String, email: String, name: String) {
        self.id = id
        self.avatarColor = avatarColor
        self.avatarName = avatarName
        self.email = email
        self.name = name
    }
    
    func setAvatarName(avatarName: String) {
        self.avatarName = avatarName
    }
    
    func returnUIColor(components: String) -> UIColor {
        print("initial component : \(components)")
        
        let scanner = Scanner(string: components)
        let skipped = CharacterSet(charactersIn: "[], ")
        let comma = CharacterSet(charactersIn: ",")
        let defaultColor = UIColor.lightGray
        
        scanner.charactersToBeSkipped = skipped
        
        let r = scanner.scanUpToCharacters(from: comma)
        let g = scanner.scanUpToCharacters(from: comma)
        let b = scanner.scanUpToCharacters(from: comma)
        let a = scanner.scanUpToCharacters(from: comma)
        
        
        guard let rUnwrapped = r else { return defaultColor }
        guard let gUnwrapped = g else { return defaultColor }
        guard let bUnwrapped = b else { return defaultColor }
        guard let aUnwrapped = a else { return defaultColor }
        
        print("after scanning : \n")
        print(rUnwrapped)
        print(gUnwrapped)
        print(bUnwrapped)
        print(aUnwrapped)
        
        let rFloat = CGFloat((rUnwrapped as NSString).doubleValue)
        let gFloat = CGFloat((gUnwrapped as NSString).doubleValue)
        let bFloat = CGFloat((bUnwrapped as NSString).doubleValue)
        
        print("converting with float : ")
        print(rFloat)
        print(gFloat)
        print(bFloat)
        
        let newUIColor = UIColor(red: rFloat, green: gFloat, blue: bFloat, alpha: 1)
        
        return newUIColor
    }
    
    func logoutUser() {
        id = ""
        avatarName = ""
        avatarColor = ""
        email = ""
        name = ""
        AuthService.instance.isLoggedIn = false
        AuthService.instance.authToken = ""
        AuthService.instance.userEmail = ""
        
    }
}
