//
//  SettingsTableViewController.swift
//  LocalizedStringTest
//
//  Created by Menahem Barouk on 04/04/2019.
//  Copyright © 2019 Menahem Barouk. All rights reserved.
//

import UIKit

class SettingsTableViewController: UITableViewController {
    
    @IBOutlet weak var notificationLabel: UILabel!
    @IBOutlet weak var sendCommentLabel : UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureView()
    }
    
    func configureView() {
        
        typealias SettingsLocalization = Localization.Settings
        
        navigationItem.title   = SettingsLocalization.title.localizedString
        notificationLabel.text = SettingsLocalization.notification.localizedString
        sendCommentLabel.text  = SettingsLocalization.sendComments.localizedString
    }
}
