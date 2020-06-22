//
//  SettingsTableViewCell.swift
//  Settings
//
//  Created by MacBook Pro on 6/3/20.
//  Copyright © 2020 Gevorg Hovhannisyan. All rights reserved.
//

import UIKit

class SettingsTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var switcher: UISwitch!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    func setInfo(model: SettingsModel) {
        titleLabel.text = model.title
        descriptionLabel.text = model.desc
        switcher.isOn = model.switchValue
    }

}
