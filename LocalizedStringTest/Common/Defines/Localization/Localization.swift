//
//  Localization.swift
//  LocalizedStringTest
//
//  Created by Menahem Barouk on 04/04/2019.
//  Copyright © 2019 Menahem Barouk. All rights reserved.
//

import Foundation

/// Localization namespace
struct Localization {
    private init() {}
    
    enum Profile: Localizable {
        
        case title(username: String)
        case numberFollowers(followers: Int, follows: Int)
        case settings
        case editProfile
        
        var key: String {
            
            let key: String
            
            switch self {
            case .title          : key = "profile_page_title"
            case .numberFollowers: key = "profile_page_number_of_followers"
            case .settings       : key = "profile_page_settinge"
            case .editProfile    : key = "profile_page_edit_profile"
            }
            
            return key
        }
        
        var arguments: [CVarArg] {
            
            let arguments: [CVarArg]
            
            switch self {
            case let .title(username)           : arguments = [username]
            case let .numberFollowers(following): arguments = [following.followers, following.follows]
            default: arguments = []
            }
            
            return arguments
        }
    }
    
    enum Settings: String, Localizable {
        
        case title = "settings_page_title"
        case notification = "settings_page_notification"
        case sendComments = "settings_page_send_comments"
    }
}
