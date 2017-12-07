//
//  CreativityController.swift
//  CSP_NoahUffens
//
//  Created by Uffens, Noah on 12/7/17.
//  Copyright © 2017 Uffens, Noah. All rights reserved.
//

import UIKit

class CreativityController: UICollectionViewController, UICollectionViewDelegateFlowLayout {

    private let reuseIdentifier = "artIdentifier"
    private let sectionsInsets = UIEdgeInsets(top: 50.0, left: 20.0, bottom: 50.0, right: 20.0)
    private let itemsPerRow : CGFloat = 3
    
    private lazy var artSelection : [UIImage] =
    {
        return [
            UIImage(named: "SickBawt"),
            UIImage(named: "ObbjectCode"),
            UIImage(named: "a-new-study-just-blew-a-hole-in-one-of-the-strongest-arguments-against-global-warming"),
            UIImage(named: "andGate"),
        ]
        }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
