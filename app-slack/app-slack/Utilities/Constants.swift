//
//  Constants.swift
//  app-slack
//
//  Created by Maïlys Perez on 20/07/2020.
//  Copyright © 2020 Maïlys Perez. All rights reserved.
//

import Foundation
import Alamofire

// rename a type by a closure
typealias CompletionHandler = (_ Success: Bool) -> ()

// URL Constants
let BASE_URL = "https://aslackclonechatapp.herokuapp.com/v1/"
let URL_REGISTER = "\(BASE_URL)account/register"
let URL_LOGIN = "\(BASE_URL)account/login"

// Segues
let TO_LOGIN = "toLogin"
let TO_CREATE_ACCOUNT = "toCreateAccount"
let UNWIND = "unwindToChannel"

// User Defaults
let TOKEN_KEY = "token"
let LOGGED_IN_KEY = "loggedIn"
let USER_EMAIL = "userEmail"

// Headers
let HEADER: HTTPHeaders = [
    "Content-Type" : "application/json; charset=utf-8"
]
