//
//  ViewController.swift
//  Settings
//
//  Created by MacBook Pro on 6/3/20.
//  Copyright © 2020 Gevorg Hovhannisyan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
//
//    let titlesArray = ["Discounts and sales", "Delivery updates", "Email"]
//    let descArray = ["Description is the pattern of narrative development that aims to make vivid a place", "Description is one of four rhetorical modes (also known as modes of discourse)", "The semantic descriptions of the devices were varied, but the pictures were identical for both conditions."]
//    let switcherArray = [false, true, false]
//
    
    let settingsArray = [SettingsModel(title: "Discounts and sales", desc: "Description is the pattern of narrative development that aims to make vivid a place", switchValue: false),
    SettingsModel(title: "Delivery updates", desc: "Description is one of four rhetorical modes (also known as modes of discourse)", switchValue: true),
    SettingsModel(title: "Email", desc: "The semantic descriptions of the devices were varied, but the pictures were identical for both conditions.", switchValue: false)]
    
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewDelegateDataSource()
    }
    
    private func tableViewDelegateDataSource() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.rowHeight = 1234
    }

}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return settingsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SettingsTableViewCell", for: indexPath) as! SettingsTableViewCell
        cell.setInfo(model: settingsArray[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            let vc = UIStoryboard(name: "Storyboard", bundle: nil).instantiateViewController(identifier: "SecondViewController") as! SecondViewController
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
    }
    
}

struct SettingsModel {
    let title: String
    let desc: String
    let switchValue: Bool
}
