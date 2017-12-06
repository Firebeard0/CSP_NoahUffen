//
//  GlobalImpactViewController.swift
//  CSP_NoahUffens
//
//  Created by Uffens, Noah on 11/14/17.
//  Copyright © 2017 Uffens, Noah. All rights reserved.
//

import UIKit

class GlobalImpactViewController: UIViewController {
    @IBOutlet weak var UIView2: UIImageView!
    @IBOutlet weak var ProblemLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UIView2.image = #imageLiteral(resourceName: "Code plan.png")
        ProblemLabel.text = "Our app helps to solve the global crisis of climate change by raising awareness to the individual. By showing the amount of carbon emissions reduced, it gives a feeling of satisfaction towards helping the environment. It will give specific numbers and information about the amount of carbon emissions saved by walking, biking, or carpooling. In addition to this, we will have a page about different ways you could reduce your carbon footprint such as energy efficient light bulbs, reducing carbon emissions, and water management."
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
