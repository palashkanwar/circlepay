//
//  ViewController.swift
//  CodeApp
//
//  Created by Palash Kanwar on 3/8/20.
//  Copyright © 2020 CirclePay. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

   // @IBOutlet weak var namebudgetfield: UIStackView!
    var budgetNum: String?
    //var startDate: Date()
    //var endDate: Date()
    var startmonth: String?
    var startday: String?
    var startyear: String?
    
    var endmonth: String?
    var endday: String?
    var endyear: String?
    
    @IBOutlet weak var budgetField: UITextField!
    @IBOutlet weak var labelField: UILabel!
    
    @IBOutlet weak var startLabel: UILabel!
    @IBOutlet weak var startMM: UITextField!
    @IBOutlet weak var startDD: UITextField!
    @IBOutlet weak var startYY: UITextField!
    
    @IBOutlet weak var endLabel: UILabel!
    @IBOutlet weak var endMM: UITextField!
    @IBOutlet weak var endDD: UITextField!
    @IBOutlet weak var endYY: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        budgetField.delegate = self
        
        startMM.delegate = self
        startDD.delegate = self
        startYY.delegate = self
        
        endMM.delegate = self
        endDD.delegate = self
        endYY.delegate = self
    }
    
    // Action Delegates
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        budgetNum = textField.text
        
        //startDate.month = startMM.text
        //startDate.day = startDD.text
        //startDate.year = startYY.text
        
        //endDate.month = endMM.text
        //endDate.day = endDD.text
        //endDate.year = endYY.text
        startmonth = startMM.text
        startday = startDD.text
        startyear = startYY.text
               
        endmonth = endMM.text
        endday = endDD.text
        endyear = endYY.text
        
    }
    
    @IBAction func defaultText(_ sender: UIButton) {
        labelField.text = "Default Text"
    }
    
    @IBAction func submitButton(_ sender: UIButton) {
        // move to next page
    }
    
    
}

