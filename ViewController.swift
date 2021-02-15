//
//  ViewController.swift
//  toDoListWithMyProfileAndImageGallary
//
//  Created by IPHTECH 20 on 10/02/21.
//  Copyright © 2021 iPHTech20. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var toDoTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        toDoTableView.delegate = self
        toDoTableView.dataSource = self
        
        //self.toDoTableView.register(UITableViewCell.self, forCellReuseIdentifier: "toDoListTableCell")
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func addItemButton(_ sender: UIButton) {
                let viewControllerObj = storyboard?.instantiateViewController(identifier: "toDoListTableViewCell") as! toDoListTableViewCell
                present(viewControllerObj, animated: true, completion: nil)
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        toDoTableView.reloadData()
    }
    
}

extension ViewController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return toDoListRemDataArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "toDoListTableCell", for: indexPath)
        //cell.textLabel?.text = toDoListDataArray[indexPath.item].title
        cell.textLabel?.text = toDoListRemDataArray[indexPath.item].title
        
        //cell.imageView!.image = UIImage(systemName: "trash")
        return cell
    
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        "To Do List"
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

    }
    
     // method to run when table view cell is tapped
       

       // this method handles row deletion
//    internal func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
//
//           if editingStyle == .delete {
//
//               // remove the item from the data model
//               toDoListRemDataArray.remove(at: indexPath.row)
//
//               // delete the table view row
//               tableView.deleteRows(at: [indexPath], with: .fade)
//
//           } else if editingStyle == .insert {
//               // Not used in our example, but if you were adding a new row, this is where you would do it.
//           }
//       }
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration?
    {
        let deleteAction = UIContextualAction(style: .destructive, title: "Delete") { (action, view, handler) in
            //YOUR_CODE_HERE
            let delete = toDoListRemDataArray.remove(at: indexPath.row)
            toDoListDeleteDataArray.append(delete)
            tableView.reloadData()
        }
        deleteAction.backgroundColor = .red
        let configuration = UISwipeActionsConfiguration(actions: [deleteAction])
        configuration.performsFirstActionWithFullSwipe = true
        return configuration
    }
    func tableView(_ tableView: UITableView, leadingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let editAction = UIContextualAction(style: .normal, title: "Done") {(action, view, handler) in
            //code logic
            let delete = toDoListRemDataArray.remove(at: indexPath.row)
            toDoListCompleteDataArray.append(delete)
            tableView.reloadData()
        }
        editAction.backgroundColor = .blue
        let configuration = UISwipeActionsConfiguration(actions: [editAction])
        configuration.performsFirstActionWithFullSwipe = true
        return configuration
    }
}
