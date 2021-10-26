//
//  AllFriendsViewController.swift
//  SecondChance
//
//  Created by Alexander Tepper on 26/10/2021.
//

import UIKit

class AllFriendsViewController: UIViewController {

    @IBOutlet weak var friendsTableView: UITableView!
    
    let reuseIdentifierFriendsTableViewCell = "reuseIdentifierAllFriendsTableViewCell"
    
    var allFriendsArray = [Person]()
    
    func fillFriendsArray() {
        let friend1 = Person(firstName: "Andrew", lastName: "Scott", avatar: UIImage(named: "1")!)
        let friend2 = Person(firstName: "Scott", lastName: "Johnes", avatar: UIImage(named: "2")!)
        let friend3 = Person(firstName: "James", lastName: "Lonesome", avatar: UIImage(named: "3")!)
        let friend4 = Person(firstName: "Arthur", lastName: "Kurts", avatar: UIImage(named: "4")!)
        let friend5 = Person(firstName: "Arthur", lastName: "Kurts", avatar: UIImage(named: "5")!)
        let friend6 = Person(firstName: "Arthur", lastName: "Kurts", avatar: UIImage(named: "6")!)
        allFriendsArray.append(friend1)
        allFriendsArray.append(friend2)
        allFriendsArray.append(friend3)
        allFriendsArray.append(friend4)
        allFriendsArray.append(friend5)
        allFriendsArray.append(friend6)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fillFriendsArray()
        friendsTableView.register(UINib(nibName: "MainTableViewCell", bundle: nil), forCellReuseIdentifier: reuseIdentifierFriendsTableViewCell)
        friendsTableView.dataSource = self
        
    }
   
}
extension AllFriendsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return allFriendsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = friendsTableView.dequeueReusableCell(withIdentifier: reuseIdentifierFriendsTableViewCell, for: indexPath) as? MainTableViewCell else {return UITableViewCell()}
        cell.configure(person: allFriendsArray[indexPath.row])
        
        return cell
    }
    
    
}
