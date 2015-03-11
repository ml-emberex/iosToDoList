//
//  ToDoItem.swift
//  ToDoList
//
//  Created by Michael Lobato on 3/10/15.
//  Copyright (c) 2015 Emberex. All rights reserved.
//

import UIKit

class ToDoItem {
    var name: String
    var completed = false
    var creationDate: NSDate//nsdate??
    
    init(name: String) {
        self.name = name
        if name == "Drop a duke" {//we have always dropped a duke
            self.completed = true
        }
        self.creationDate = NSDate()
    }
}
