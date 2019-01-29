//
//  CreateGoalViewController.swift
//  Goalpost
//
//  Created by Hanisha Goyal on 5/7/18.
//  Copyright © 2018 Hanisha Goyal. All rights reserved.
//

import UIKit

class CreateGoalViewController: UIViewController, UITextViewDelegate {

    @IBOutlet weak var createGoalTextView: UITextView!
    
    @IBOutlet weak var nextButtonOutlet: UIButton!
    @IBOutlet weak var longTermOutlet: UIButton!
    @IBOutlet weak var shortTermOutlet: UIButton!
    
      var goalType: GoalType = .shortTerm
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nextButtonOutlet.bindToKeyboard()
        shortTermOutlet.setSelectedColor()
        longTermOutlet.setDeselectedColor()
        createGoalTextView.delegate = self
    }

    @IBAction func nextButton(_ sender: Any) {
        if createGoalTextView.text != "" && createGoalTextView.text != "What is your goal?" {
            guard let finishGoalVC = storyboard?.instantiateViewController(withIdentifier: "FinishGoalVC") as? FinishGoalViewController else { return }
            finishGoalVC.initData(description: createGoalTextView.text!, type: goalType)
            presentingViewController?.presentSecondaryDetail(finishGoalVC)
        }
    }
    
    @IBAction func shortTerm(_ sender: Any) {
        goalType = .shortTerm
        shortTermOutlet.setSelectedColor()
        longTermOutlet.setDeselectedColor()
    }
    
    @IBAction func longTerm(_ sender: Any) {
        goalType = .longTerm
        shortTermOutlet.setDeselectedColor()
        longTermOutlet.setSelectedColor()
    }
    
    @IBAction func backButton(_ sender: Any) {
        dismissDetail()
    }
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        createGoalTextView.text = ""
        createGoalTextView.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
    }
    
}
