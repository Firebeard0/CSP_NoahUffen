//
//  InternetMasterViewController.swift
//  CSP_NoahUffens
//
//  Created by Uffens, Noah on 11/29/17.
//  Copyright © 2017 Uffens, Noah. All rights reserved.
//

import UIKit

class InternetMasterViewController: UITableViewController {
    private (set) lazy var internetTopics : [String] =
    {
        return [
        "Defenitions",
        "CSP",
        "CTEC",
        "Canyons",
        "Twitter",
        "Swift Guide"
        ]
    }()
    
    private lazy var adress : [String] = []
    
    private var detailViewContoller : InternetDetailViewController?
    
    private func setup() -> Void
    {
        adress = [
            "https://www.google.com",
            "https://www.google.com",
            "https://www.google.com",
            "https://www.google.com",
            "https://www.google.com",
            "https://www.google.com",
            "https://www.google.com"
        ]
        
        if let splitView = splitViewController
        {
            let currentControllers = splitView.viewControllers
            detailViewContoller = currentControllers[0] as? InternetDetailViewController
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        self.clearsSelectionOnViewWillAppear = false

        // Do any additional setup after loading the view.
    }
    
    override public func numberOfSections(in tableView: UITableView) -> Int
    {
        return 1
    }
    
    override public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) ->Int
    {
        return internetTopics.count
    }
    
    override public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        let currentText = internetTopics[indexPath.row]
        cell.textLabel!.text = currentText
        
        return cell
    }
    
    override  public func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.identifier! == "showDetail"
        {
            if let indexPath = self.tableView.indexPathForSelectedRow
            {
                let urlString = adresses[indexPath.now]
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
