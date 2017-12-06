//
//  InternetDetailViewController.swift
//  CSP_NoahUffens
//
//  Created by Uffens, Noah on 11/29/17.
//  Copyright © 2017 Uffens, Noah. All rights reserved.
//

import UIKit
import WebKit
class InternetDetailViewController: UIViewController {
    
    @IBOutlet weak var textView: UILabel!
    @IBOutlet weak var webViewer: WKWebView!
    
    var detailAdress : String?{
        didSet {
            configureDetailView()
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        configureDetailView()
        // Do any additional setup after loading the view.
    }
    
    private func configureDetailView() -> Void {
        if detailAdress != nil {
            if let currentWebView = webViewer{
                let currentURL = URL(string: detailAdress!)
                let currentWebRequest
            }
        }
    }

//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
