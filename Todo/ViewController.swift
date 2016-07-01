//
//  ViewController.swift
//  Todo
//
//  Created by xupan on 16/6/15.
//  Copyright © 2016年 xphwv. All rights reserved.
//

import UIKit

func dateFormatString(dateStr:String) -> NSDate {
    let format=NSDateFormatter();
    format.dateFormat="yyyy-MM-dd";
    let date:NSDate=format.dateFromString(dateStr)!;
    return date;
}
var  todos:[TodoModel]=[];
class ViewController: UIViewController,UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        todos=[TodoModel(id: "1",image: "image",title: "hell",date: dateFormatString("2016-05-01")),TodoModel(id: "2",image: "image",title: "hell",date: dateFormatString("2016-06-01"))];
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return 10;
    }
    
    // Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
    // Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        let cell:UITableViewCell=self.tableView.dequeueReusableCellWithIdentifier("todoCell")! as UITableViewCell;
        return cell;
    }



}

