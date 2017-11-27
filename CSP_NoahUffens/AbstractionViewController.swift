//
//  AbstractionViewController.swift
//  CSP_NoahUffens
//
//  Created by Uffens, Noah on 11/27/17.
//  Copyright © 2017 Uffens, Noah. All rights reserved.
//

import UIKit

class AbstractionViewController: UIPageViewController, UIPageViewControllerDataSource {
    
    private (set) lazy var orderedAbstractionViews : [UIViewController] =
    {
        return [
            self.newAbstractionViewController(abstractionLevel : "Block"),
            self.newAbstractionViewController(abstractionLevel : "Java"),
            self.newAbstractionViewController(abstractionLevel : "SourceCode"),
            self.newAbstractionViewController(abstractionLevel : "Binary"),
            self.newAbstractionViewController(abstractionLevel : "AndGate")
        ]
    }()
    
    private func newAbstractionViewController(abstractionLevel : String) -> UIViewController
    {
        return UIStoryboard(name : "Main", bundle: nil).instantiateViewController(withIdentifier:"\(abstractionLevel)ViewController")
    }
    
    public func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        guard let viewControllerIndex = orderedAbstractionViews.index(of: viewController)
        else
        {
            return nil
        }
        
        let previousIndex = viewControllerIndex - 1
        
        guard previousIndex >= 0
        else{
            return orderedAbstractionViews.last
        }
        return orderedAbstractionViews[previousIndex]
    }
    
    public func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        guard let viewControllerIndex = orderedAbstractionViews.index(of: viewController)
            else
        {
            return nil
        }
        
        let nextIndex = viewControllerIndex + 1
        
        guard nextIndex < orderedAbstractionViews.count
            else{
                return orderedAbstractionViews.first
        }
        return orderedAbstractionViews[nextIndex]
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        dataSource = self
        if let firstViewController = orderedAbstractionViews.first
        {
            setViewControllers([firstViewController], direction: .forward, animated: true, completion: nil)
        }

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
