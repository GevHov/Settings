//
//  SecondViewController.swift
//  Settings
//
//  Created by MacBook Pro on 6/3/20.
//  Copyright © 2020 Gevorg Hovhannisyan. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    
    let array = [SecondCellModel(title: "1", desc: "Decc1"),SecondCellModel(title: "1", desc: "Decc1"),SecondCellModel(title: "1", desc: "Decc4"),SecondCellModel(title: "1", desc: "Decc1"),SecondCellModel(title: "1", desc: "Decc1"),SecondCellModel(title: "1", desc: "Decc1"),SecondCellModel(title: "1", desc: "Decc1"),SecondCellModel(title: "1", desc: "Decc1"),SecondCellModel(title: "1", desc: "Decc2") ]
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewDelegateDataSource()
    }

    private func tableViewDelegateDataSource() {
        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension SecondViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SecondTableViewCell", for: indexPath) as! SecondTableViewCell
        cell.setInfo(model: array[indexPath.row])
        return cell
    }
    
    
}

struct SecondCellModel {
    let title: String
    let desc: String
}
