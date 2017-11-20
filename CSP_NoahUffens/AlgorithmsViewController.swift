//
//  AlgorithmsViewController.swift
//  CSP_NoahUffens
//
//  Created by Uffens, Noah on 11/14/17.
//  Copyright © 2017 Uffens, Noah. All rights reserved.
//

import UIKit

class AlgorithmsViewController: UIViewController {
    @IBOutlet weak var algorithmText: UILabel!
    private func setupAlgorithm() -> Void
    {
        var algorithmSteps : [String] = [ ]
        
        let algorithm :String = "These are the instructions to create a project in java using eclipse and github \n"
        let stepOne :String = "First, Open a new project in eclipse and name it using camelCase"
        let stepTwo  :String = "Second, Go into Github and name the repository the exact same as your project and put it in the one folder outside where your project is saved"
        let stepThree :String = "Third, Create your packages name.controller, name.model, name.view"
        let stepFour :String = "Fourth, make classes inside your project nameController, nameRunner, nameDisplay"
        let stepFive :String = "Fifth, Set up the runner to run the code"
        let stepSix  :String = "Sixth, write the code in the controller class"
        let stepSeven :String = "Seventh, save and commit to github"
        let stepEight :String = "Eighth, repeat 6 & 7"
        
        
        algorithmSteps = [stepOne, stepTwo, stepThree, stepFour, stepFive, stepSix, stepSeven, stepEight]
        
        let atributesDictionary = [NSAttributedStringKey.font : algorithmText.font]
        let fullAttributedString  = NSMutableAttributedString(string: algorithm, attributes: atributesDictionary)
        
        for step in algorithmSteps
        {
            let bullet :String = "⚜️"
            let formattedStep :String = "\n\(bullet) \(step)"
            let attributedStringStep  : NSMutableAttributedString = NSMutableAttributedString(string: formattedStep)
            let paragraphStyle = createParagraphStyle()
            
            attributedStringStep.addAttributes([NSAttributedStringKey.paragraphStyle : paragraphStyle], range: NSMakeRange(0,attributedStringStep.length))
            
            fullAttributedString.append(attributedStringStep)
        }
        
        algorithmText.attributedText = fullAttributedString
        
    }
    
    private func createParagraphStyle() -> NSParagraphStyle
    {
        let paragraphStyle: NSMutableParagraphStyle = NSMutableParagraphStyle()
        paragraphStyle.alignment = .left
        paragraphStyle.defaultTabInterval = 15
        paragraphStyle.firstLineHeadIndent = 20
        paragraphStyle.headIndent = 35
        
        return paragraphStyle
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        setupAlgorithm()
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
