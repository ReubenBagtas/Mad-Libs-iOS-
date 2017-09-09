//
//  secondView.swift
//  madLibs
//
//  Created by caesar shia on 5/17/17.
//  Copyright © 2017 Code School. All rights reserved.
//

import UIKit

class secondView: UIViewController {
   
    var mydel: submitDel?
    
    var mainString: String?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var Adjective: UITextField!
    @IBOutlet weak var Verb1: UITextField!
    @IBOutlet weak var verb2: UITextField!
    @IBOutlet weak var Noun: UITextField!



    
    @IBAction func submitButtonPressed(_ sender: UIButton) {
        var a = ""
        var v1 = ""
        var v2 = ""
        var N = ""
        
        if let adj = Adjective.text{
            a=adj
        }
        if let v = Verb1.text{
            v1 = v
        }
        if let vv = verb2.text{
            v2 = vv
        }
        if let nouns = Noun.text{
            N = nouns
        }
        
        
        
        
        mainString = "my name is \(a), I am \(v1) and I like to \(v2) and \(N)"
        
        mydel?.submitButtonPressed(mainString: mainString!)
        
        dismiss(animated: true, completion: nil)
        
    }
    
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        let vc = segue.destination as! ViewController
//        
//        if let send = sender as? UIButton{
//            vc.text = send.titleLabel
//        }
//        
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
