//
//  ViewController.swift
//  TapBarNineteenPractical
//
//  Created by Mac on 19/04/23.
//

import UIKit

class PersonDetailsViewController: UIViewController {
    
    
       
    @IBOutlet weak var personDetailsTableView: UITableView!
    
    var persons:[Person]=[]
    
    override func viewDidLoad() {
        super.viewDidLoad()
       registerXIB()
        self.personDetailsTableView.dataSource=self
        
    }

    func registerXIB()
    {
        self.personDetailsTableView.register(UINib(nibName: "PersonDetailsTableViewCell", bundle: nil), forCellReuseIdentifier: "PersonDetailsTableViewCell")
        
    }
    @IBAction func personDetailsAddButton(_ sender: Any)
    {
        let personEnquiry = self.storyboard?.instantiateViewController(withIdentifier: "PersonEnquiryViewController") as? PersonEnquiryViewController
        personEnquiry!.delegate = self
        
        navigationController?.pushViewController(personEnquiry!, animated: true)
    }

}
extension PersonDetailsViewController:DataPassing
{
    func BackDataPassing(person: Person) {
        persons.append(person)
        self.personDetailsTableView.reloadData()
    }
    
    
}
extension PersonDetailsViewController:UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellData = personDetailsTableView.dequeueReusableCell(withIdentifier: "PersonDetailsTableViewCell", for: indexPath) as? PersonDetailsTableViewCell
        
        cellData?.personNameLabel.text = persons[indexPath.row].name
        cellData?.personMobileNoLabel.text = String(persons[indexPath.row].mobileNumber)
        cellData?.personEmailIdLabel.text = persons[indexPath.row].emailId
        cellData?.personPasswordLabel.text = persons[indexPath.row].password
        
    
        return cellData!
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        personDetailsTableView.beginUpdates()
        personDetailsTableView.deleteRows(at: [indexPath], with: .fade)
        persons.remove(at: indexPath.row)
        personDetailsTableView.endUpdates()
    }
}
extension PersonDetailsViewController:UITableViewDelegate
{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        180.0
    }
   }
