//
//  AddToDoItemViewController.swift
//  ToDoList
//
//  Created by sheng qing on 15/2/26.
//  Copyright (c) 2015年 sheng qing. All rights reserved.
//

import UIKit

class AddToDoItemViewController: UIViewController {
    @IBOutlet weak var saveButton: UIBarButtonItem!
    @IBOutlet weak var textField: UITextField!
    
    var todoItem = ToDoItem()

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
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        if(sender as UIBarButtonItem != saveButton){
            return
        }
        
        if(!textField.text.isEmpty){
            todoItem.itemName = textField.text
            todoItem.completed = false
        }
        
    }
    

}
