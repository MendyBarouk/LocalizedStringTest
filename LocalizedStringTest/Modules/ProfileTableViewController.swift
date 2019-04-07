//
//  ProfileTableViewController.swift
//  LocalizedStringTest
//
//  Created by Menahem Barouk on 04/04/2019.
//  Copyright © 2019 Menahem Barouk. All rights reserved.
//

import UIKit

class ProfileTableViewController: UITableViewController {

    @IBOutlet weak var followingLabel  : UILabel!
    @IBOutlet weak var settingsLabel   : UILabel!
    @IBOutlet weak var editProfileLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureView()
    }
    
    private func configureView() {
        typealias ProfileLocalization = Localization.Profile
        
        navigationItem.title  = ProfileLocalization.title(username: "MenahemSwiftity").localizedString
        followingLabel.text   = ProfileLocalization.numberFollowers(followers: 158789, follows: 29).localizedString
        settingsLabel.text    = ProfileLocalization.settings.localizedString
        editProfileLabel.text = ProfileLocalization.editProfile.localizedString
    }
}
