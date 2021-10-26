//
//  GroupsViewController.swift
//  SecondChance
//
//  Created by Alexander Tepper on 26/10/2021.
//

import UIKit

class GroupsViewController: UIViewController {

    @IBOutlet weak var groupsTableView: UITableView!
    
    let reuseIdentifierFriendsTableViewCell = "reuseIdentifierFriendsTableViewCell"
    
    var groupsArray = [Group]()
    
    func fillGroupsArray() {
        let group1 = Group(title: "Ass Itch Lovers", profileImage: UIImage(named: "6")!)
        let group2 = Group(title: "lone gays", profileImage: UIImage(named: "2")!)
        let group3 = Group(title: "dead poets society", profileImage: UIImage(named: "5")!)
        let group4 = Group(title: "tits", profileImage: UIImage(named: "4")!)
        groupsArray.append(group1)
        groupsArray.append(group2)
        groupsArray.append(group3)
        groupsArray.append(group4)


    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        groupsTableView.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fillGroupsArray()
        groupsTableView.register(UINib(nibName: "MainTableViewCell", bundle: nil), forCellReuseIdentifier: reuseIdentifierFriendsTableViewCell)
        groupsTableView.dataSource = self

    }
}
extension GroupsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return groupsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = groupsTableView.dequeueReusableCell(withIdentifier: reuseIdentifierFriendsTableViewCell, for: indexPath) as? MainTableViewCell else {return UITableViewCell()}
        cell.configure(group: groupsArray[indexPath.row])
        return cell
    }
    
    
}
