//
//  Constants.swift
//  Flash Chat iOS13
//
//  Created by Vineal Viji Varghese on 17/07/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

struct K {
    static let appName = "💥BoomChat"
    static let cellIdentifier = "ReusableCell"
    static let cellNibName = "MessageCell"
    static let registerSegue = "RegisterToChat"
    static let loginSegue = "LoginToChat"
    static let messageSegue = "ViewMessages"
    
    
    struct BrandColors {
        static let purple = "BrandPurple"
        static let lightPurple = "BrandLightPurple"
        static let blue = "BrandBlue"
        static let lighBlue = "BrandLightBlue"
    }
    
    struct FStore {
        static let contactCollection = "contacts"
        static let messageCollection = "messages"
        static let contactName = "contactName"
        static let senderField = "sender"
        static let bodyField = "body"
        static let dateField = "date"
    }
}
