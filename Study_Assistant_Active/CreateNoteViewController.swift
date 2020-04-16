//
//  CreateNoteViewController.swift
//  Study_Assistant_Active
//
//  Created by Damien Lo on 16/4/2020.
//  Copyright © 2020 Damien Lo. All rights reserved.
//

import UIKit

class CreateNoteViewController: UIViewController {
    @IBOutlet weak var titleTextField: UITextField!
    
    @IBOutlet weak var subjectTextField: UITextField!
    
    @IBOutlet weak var descriptionTextView: UITextView!
    
    @IBOutlet weak var buttonOutlet: UIButton!
    
    var selectedTemplate = "None"
    
    @IBAction func doneButton(_ sender: Any) {
        var title = titleTextField.text!
        var subject = subjectTextField.text!
        var template = selectedTemplate
        var description = descriptionTextView.text!
        
        var note = Note(title: title, subject: subject, template: template, description: description, contentOne: "", contentTwo: "", contentThree: "")
        
        print(note.title)
        print(note.subject)
        print(note.template)
        print(note.description)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        buttonOutlet.setTitle(selectedTemplate, for: .normal)

        // Do any additional setup after loading the view.
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
