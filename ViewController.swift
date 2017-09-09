//
//  ViewController.swift
//  madLibs
//
//  Created by caesar shia on 5/17/17.
//  Copyright © 2017 Code School. All rights reserved.
//

import UIKit

class ViewController: UIViewController, submitDel {
    @IBOutlet weak var stringLabel: UILabel!

    
    @IBAction func editButton(_ sender: UIBarButtonItem) {
        performSegue(withIdentifier: "mySegue", sender: sender)
    }


    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! secondView
        vc.mydel = self
    }
    
    @IBAction func submitButtonPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
        
    }
    
    func submitButtonPressed(mainString: String) {
        stringLabel.text = mainString
    }
}


