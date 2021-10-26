//
//  FriendsViewController.swift
//  SecondChance
//
//  Created by Alexander Tepper on 25/10/2021.
//

import UIKit

class FriendsViewController: UIViewController {

    @IBOutlet weak var friendsTableView: UITableView!
    
    let reuseIdentifierFriendsTableViewCell = "reuseIdentifierFriendsTableViewCell"
    
    var friendsArray = [Person]()
    
    func fillFriendsArray() {
        let friend1 = Person(firstName: "Andrew", lastName: "Scott", avatar: UIImage(named: "1")!)
        let friend2 = Person(firstName: "Scott", lastName: "Johnes", avatar: UIImage(named: "2")!)
        let friend3 = Person(firstName: "James", lastName: "Lonesome", avatar: UIImage(named: "3")!)
        let friend4 = Person(firstName: "Arthur", lastName: "Kurts", avatar: UIImage(named: "4")!)
        friendsArray.append(friend1)
        friendsArray.append(friend2)
        friendsArray.append(friend3)
        friendsArray.append(friend4)
        

    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fillFriendsArray()
        friendsTableView.register(UINib(nibName: "MainTableViewCell", bundle: nil), forCellReuseIdentifier: reuseIdentifierFriendsTableViewCell)
        friendsTableView.dataSource = self
        
    }
   
}
extension FriendsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friendsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = friendsTableView.dequeueReusableCell(withIdentifier: reuseIdentifierFriendsTableViewCell, for: indexPath) as? MainTableViewCell else {return UITableViewCell()}
        cell.configure(person: friendsArray[indexPath.row])
        
        return cell
    }
    
    
}
