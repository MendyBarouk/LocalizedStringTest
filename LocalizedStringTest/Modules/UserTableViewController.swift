//
//  UserTableViewController.swift
//  LocalizedStringTest
//
//  Created by Menahem Barouk on 04/04/2019.
//  Copyright © 2019 Menahem Barouk. All rights reserved.
//

import UIKit

class UserTableViewController: UITableViewController {

    @IBOutlet weak var followingLabel  : UILabel!
    @IBOutlet weak var settingsLabel   : UILabel!
    @IBOutlet weak var editProfileLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureView()
    }
    
    private func configureView() {
        typealias UserLocalization = Localization.User
        
        navigationItem.title  = UserLocalization.title(username: "MenahemSwiftity").localizedString
        followingLabel.text   = UserLocalization.numberFollowers(followers: 158789, follows: 29).localizedString
        settingsLabel.text    = UserLocalization.settings.localizedString
        editProfileLabel.text = UserLocalization.editProfile.localizedString
    }
}
