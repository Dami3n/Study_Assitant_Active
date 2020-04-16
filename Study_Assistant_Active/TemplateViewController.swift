//
//  TemplateViewController.swift
//  Study_Assistant_Active
//
//  Created by Damien Lo on 16/4/2020.
//  Copyright © 2020 Damien Lo. All rights reserved.
//

import UIKit

class TemplateViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    var template = ""
    
    @IBAction func blankButton(_ sender: Any) {
        template = "blank"
        
        performSegue(withIdentifier: "templateSelectedSegue", sender: self)
        
        print(template)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var vc = segue.destination as! CreateNoteViewController
        vc.selectedTemplate = self.template
    }
    

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
