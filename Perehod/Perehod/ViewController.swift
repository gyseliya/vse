//
//  ViewController.swift
//  perehod
//
//  Created by user on 19.09.2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func press(_ sender: Any) {
        
     /*   let alert = UIAlertController(title: "My Alert", message: "This is an alert.", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .default, handler: { _ in
        NSLog("The \"OK\" alert occured.")
        }))
 
 
        self.present(alert, animated: true, completion: nil)
 */
        performSegue(withIdentifier: "new", sender: nil)
        
    }
    
    @IBAction func press2(_ sender: Any) {
        
        performSegue(withIdentifier: "new2", sender: nil)    }
    
    
}

