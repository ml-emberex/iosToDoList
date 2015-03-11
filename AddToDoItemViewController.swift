//
//  AddToDoItemViewController.swift
//  ToDoList
//
//  Created by Michael Lobato on 3/10/15.
//  Copyright (c) 2015 Emberex. All rights reserved.
//

import UIKit

class AddToDoItemViewController: UIViewController {
    var toDoItem: ToDoItem?
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var saveButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        //MYCODE
//        if let button = self.saveButton {
//            //right now we only want to do something if the save button was clicked
//            if sender as UIBarButtonItem != button {
//                return
//            }
//            
//            if let toDoTextField = self.textField {
//
//            }
//        }
        
        if sender as UIBarButtonItem != self.saveButton! {
            return
        }
        
        if !self.textField.text.isEmpty {
            self.toDoItem = ToDoItem(name: self.textField.text)
        }
        //-MYCODE
    }

}
