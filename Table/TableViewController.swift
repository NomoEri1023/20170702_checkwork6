//
//  TableViewController.swift
//  Table
//
//  Created by 野本エリカ on 2018/06/05.
//  Copyright © 2018年 Life is Tech!. All rights reserved.
//

import UIKit

class TableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var random: Int = 0
    
    var numArray: [Int] = []
    
    @IBOutlet var TableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        while random < 20 {
            
            let number = Int(arc4random_uniform(100))
            
            numArray.append(number)
            
        }
        
        TableView.register(UINib(nibName: "TableViewCell", bundle: nil),
                           forCellReuseIdentifier: "cell")
        
        TableView.delegate = self
        TableView.dataSource = self
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        
        
        cell.label!.text = String(numArray[indexPath.row])
        
        return cell
    }

}

