//
//  ViewController.swift
//  Darwins Monster Encyclopaedia
//
//  Created by Jessica Foo on 14/3/17.
//  Copyright © 2017 Jessica Foo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Attributes
    
    @IBOutlet var nameField: UITextField!
    @IBOutlet var ageField: UITextField!
    @IBOutlet var speciesField: UITextField!
    @IBOutlet var powerField: UITextField!
    @IBOutlet var healthField: UITextField!

    @IBOutlet var actionMessage: UILabel!
    
    var currentMonster: Monster?
    
    @IBAction func saveButton(){
        
        self.actionMessage.text = "Not all fields were filled in!"
        if nameField.text! != "" && ageField.text! != "" && speciesField.text! != "" && powerField.text! != "" && healthField.text! != ""
        {
            //create Monster
            let constantName = nameField.text
            let constantAge = Int(ageField.text!)
            let constantSpecies = speciesField.text
            let constantPower = Int(powerField.text!)
            let constantHealth = Int(healthField.text!)
            let Monster1 = Monster(name: constantName!, age: constantAge!, species: constantSpecies!, power: constantPower!, health: constantHealth!)
            self.actionMessage.text = Monster1.saveMessage()
        }
    }
    
    @IBAction func updateButton(){
        
        self.actionMessage.text = "Not all fields were filled in!"
        if nameField.text! != "" && ageField.text! != "" && speciesField.text! != "" && powerField.text! != "" && healthField.text! != ""
        {
            //create Monster
            let constantName = nameField.text
            let constantAge = Int(ageField.text!)
            let constantSpecies = speciesField.text
            let constantPower = Int(powerField.text!)
            let constantHealth = Int(healthField.text!)
            let Monster1 = Monster(name: constantName!, age: constantAge!, species: constantSpecies!, power: constantPower!, health: constantHealth!)
            

            
            self.actionMessage.text = Monster1.updateMessage()
        }
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

