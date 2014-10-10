//
//  ViewController.swift
//  TestAutoHeight
//
//  Created by abinop on 10/10/14.
//  Copyright (c) 2014 TopCreations. All rights reserved.
//

import UIKit

class TestCellView:UITableViewCell{
    @IBOutlet var contents:UILabel!
}

class ViewController: UIViewController, UITableViewDataSource {
    
    @IBOutlet var main_table:UITableView!
    @IBOutlet var b_add:UIButton!
    
    
    var sentences:[String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.sentences.append( LoremIpsum.sentence())
        self.sentences.append( LoremIpsum.sentence())
        self.sentences.append( LoremIpsum.sentence())
        
        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return self.sentences.count
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell:TestCellView  = self.main_table.dequeueReusableCellWithIdentifier("cell") as TestCellView
        
        cell.contents.text = self.sentences[indexPath.row]
        
        return cell
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func add_more_lines(sender: AnyObject) {
        self.sentences.append( LoremIpsum.sentence())
        self.main_table.reloadData()
        
        self.main_table.scrollToRowAtIndexPath(NSIndexPath(forRow: self.sentences.count-1 , inSection: 0), atScrollPosition: .Bottom, animated: true)
    }


}

