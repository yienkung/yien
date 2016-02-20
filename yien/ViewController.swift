//
//  ViewController.swift
//  yien
//
//  Created by BSD-04 on 2/20/16.
//  Copyright © 2016 BSD-04. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBOutlet weak var nameField: UITextField!
    
    var offset = 4
    @IBOutlet weak var zodiacImage: UIImageView!
    
    @IBAction func pressButton(sender: UIButton) {
        if let year = Int(nameField.text!){
            let total = (year-offset)%4
            zodiacImage.image = UIImage(named: String(total))
            
            
            
            
        }
        
        
        
        
    }
    override func shouldAutorotate() -> Bool {
        return false
    }
    
    func keyboardoff(){
        nameField.resignFirstResponder()
        
        
    }
    /*
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        keyboardoff()
    }
    
    
*/
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

