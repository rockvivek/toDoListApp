//
//  toDoListTableViewCell.swift
//  toDoListWithMyProfileAndImageGallary
//
//  Created by IPHTECH 20 on 11/02/21.
//  Copyright © 2021 iPHTech20. All rights reserved.
//

import UIKit

 
class toDoListTableViewCell: UIViewController {
    override func viewDidLoad() {
         super.viewDidLoad()
       
    }

    @IBOutlet weak var priorityTextField: UITextField!
    @IBOutlet weak var descriptiontextField: UITextField!
    @IBOutlet weak var titleTextField: UITextField!
          
    @IBAction func AddButton(_ sender: UIButton) {
        toDoListRemDataArray.append(toDoListFormat(title: titleTextField.text!, description: descriptiontextField.text!, isPriorityTask: Int(priorityTextField.text!)!))
        print(toDoListRemDataArray.count)
        
        self.presentingViewController?.dismiss(animated: true, completion: nil)
        //self.navigationController?.popViewController(animated: true)
    }
}
