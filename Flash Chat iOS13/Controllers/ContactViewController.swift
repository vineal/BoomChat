//
//  ContactViewController.swift
//  Flash Chat iOS13
//
//  Created by Vineal Viji Varghese on 20/07/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

class ContactViewController: UIViewController {
    @IBOutlet weak var contactsTable: UITableView!
    
    let contacts = [
        Contacts(contactName: "vineal@gmail.com", messages: [
            Message(sender: "vineal@gmail.com", body: "Hi There", profileImage: nil, image: nil, date: Date().timeIntervalSince1970),
            Message(sender: "shruti@gmail.com", body: "Hey you", profileImage: nil, image: nil, date: Date().timeIntervalSince1970)]),
        Contacts(contactName: "jossil@gmail.com", messages: [
        Message(sender: "jossil@gmail.com", body: "Hello big brother", profileImage: nil, image: nil, date: Date().timeIntervalSince1970),
        Message(sender: "vineal@gmail.com", body: "Hey bro", profileImage: nil, image: nil, date: Date().timeIntervalSince1970)])
    ]
    var selectedContact : [Message] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        contactsTable.delegate = self
        contactsTable.dataSource = self
        // Do any additional setup after loading the view.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == K.messageSegue{
            if let chatVC = segue.destination as? ChatViewController{
                chatVC.messages = self.selectedContact
            }
        }
    }

}

//MARK: - UITableViewDelegate
extension ContactViewController : UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedContact = contacts[indexPath.row].messages
        performSegue(withIdentifier: K.messageSegue, sender: self)
    }
}

//MARK: -
extension ContactViewController : UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: K.cellIdentifier, for: indexPath)
        cell.textLabel?.text = contacts[indexPath.row].contactName
        return cell
    }
    
    
}
