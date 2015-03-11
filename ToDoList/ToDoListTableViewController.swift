//
//  ToDoListTableViewController.swift
//  ToDoList
//
//  Created by Michael Lobato on 3/10/15.
//  Copyright (c) 2015 Emberex. All rights reserved.
//

import UIKit

class ToDoListTableViewController: UITableViewController {
    //MYCODE
    var toDoItems: [ToDoItem] = []
    //var toDoItems = [ToDoItem]()

    func loadInitialData() {
        toDoItems.append(ToDoItem(name: "Pick up dog crap"))
        toDoItems.append(ToDoItem(name: "Mow the lawn"))
        toDoItems.append(ToDoItem(name: "Drop a duke"))
    }
    //-MYCODE
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //MYCODE
        loadInitialData()
        //-MYCODE
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        //MYCODE
        return 1
        //-MYCODE
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //MYCODE
        return toDoItems.count
        //-MYCODE
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("ListPrototypeCell", forIndexPath: indexPath) as UITableViewCell
        
        //MYCODE
        //println("trying to add items to the table")
        
        var toDoItem: ToDoItem = toDoItems[indexPath.row]
        //if let item = toDoItem {
            cell.textLabel?.text = toDoItem.name
        //}
        
        if toDoItem.completed {
            println("accessory")
            cell.accessoryType = UITableViewCellAccessoryType.Checkmark
        } else {
            println("no accessory")
            cell.accessoryType = UITableViewCellAccessoryType.None
        }
        //-MYCODE
        return cell
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

    // MARK: - Navigation

    //MYCODE
    @IBAction func unwindToList(segue:UIStoryboardSegue) {
        var sourceController = segue.sourceViewController as AddToDoItemViewController
        
        if let toDoItem = sourceController.toDoItem {
            toDoItems.append(toDoItem)
        }
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        var item = toDoItems[indexPath.row]

        tableView.deselectRowAtIndexPath(indexPath, animated: false)
        item.completed = !item.completed
        tableView.reloadRowsAtIndexPaths([indexPath], withRowAnimation: UITableViewRowAnimation.None)
    }
    //-MYCODE
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    //override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    //}

}
