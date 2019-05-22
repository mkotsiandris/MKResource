//
//  ViewController.swift
//  ResourceKitSampleApp
//
//  Created by Marios Kotsiandris on 22/05/2019.
//  Copyright © 2019 Marios Kotsiandris. All rights reserved.
//

import UIKit
import ResourceKit

final class ViewController: UIViewController {

    private let cellIdentifier = "GuestTableViewCellIdentifier"

    lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .plain)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.backgroundColor = .white
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: self.cellIdentifier)
        return tableView
    }()

    private lazy var guests: [PartyGuest] = {
        let partyList: PartyList? = Resource(fileName: "party_list", fileExtension: "json").load(bundle: Bundle.main)
        return partyList?.people ?? []
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
        // Do any additional setup after loading the view.
    }

    private func setupTableView() {
        view.addSubview(tableView)
        tableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
    }
}

extension ViewController: UITableViewDelegate {}

extension ViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return guests.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: cellIdentifier)
        let currentGuest = guests[indexPath.row]
        cell.textLabel?.text = currentGuest.name
        cell.accessoryType = currentGuest.coming ? .checkmark : .none
        return cell
    }
}
